<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.3 Free Wick polynomials and reflected
  Gram positivity (notes)|VII-3.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-4.tm>|<hlink|VII.5 Asymptotic freedom of the running
  coupling (notes) \<rightarrow\>|VII-5.tm>>

  <ym-title|VII.4. Operator product expansion and contact extensions \V
  detailed notes><label|vii4-operator-product-expansion-and-contact-extensions--detailed-notes>

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

    <with|par-left|1tab|4.1 Rates and sequences
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Prescription and Reader
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Norms in the ground algebra
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 The lattice cluster estimate
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The OPE at grid configurations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Arbitrary configurations and exponents
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 The Reader and the separated OPE
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 Integrated and nested forms
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|4.9 The slab bound of V.1
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|1tab|4.10 Contact extensions
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit VII.4: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/VII-4.tm>.
  </quotation>

  <hlink|Unit page|../units/VII-4.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:>
  <hlink|<verbatim|YM/OPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE>.
  Its folders, by role:

  <\itemize-minus>
    <item>prescription and Reader: <verbatim|Splitting>, <verbatim|Orbits>;

    <item>bounds in the ground algebra: <verbatim|Eye>, <verbatim|Cards>,
    <verbatim|Exchange>;

    <item>lattice cluster estimate: <verbatim|Sweep>, <verbatim|Replicas>,
    <verbatim|Grouping>, <verbatim|Columns>, <verbatim|Prices>;

    <item>passage to arbitrary configurations: <verbatim|Schemes>,
    <verbatim|Interpolate>, <verbatim|Height>, <verbatim|Rate>;

    <item>trees: <verbatim|Nesting>, <verbatim|Trees>, <verbatim|Single>,
    <verbatim|Subpower>.
  </itemize-minus>

  Also <hlink|<verbatim|YM/Next/PHASE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE>,
  <hlink|<verbatim|YM/Contacts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts>
  (<verbatim|Normal>, <verbatim|Score>, <verbatim|Layers>,
  <verbatim|Harvest>, <verbatim|Solstice>, <verbatim|Transport>),
  <hlink|<verbatim|YM/MultipleContact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact>
  and <hlink|<verbatim|YM/SharpGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram>.
  The public statements are <hlink|<verbatim|publicOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77>
  and <hlink|<verbatim|contactDistribution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49>.

  <strong|Size:> about 10,200 lines in 2,035 declarations assigned to this
  unit:

  <\itemize-minus>
    <item><verbatim|OPE> about 4,600, mostly in <verbatim|Grouping>,
    <verbatim|Replicas>, <verbatim|Columns>, <verbatim|Trees>,
    <verbatim|Sweep>;

    <item><verbatim|Next/PHASE> 840;

    <item><verbatim|Contacts> about 3,400;

    <item><verbatim|MultipleContact> about 290;

    <item><verbatim|SharpGram> about 250.
  </itemize-minus>

  <strong|Conventions.>

  <\itemize-minus>
    <item><math|G> is the compact gauge group, with simple Lie algebra, and
    <math|\<cal-W\>> is the Wilson family of the construction. Its lattice
    levels <math|k=0,1,2,\<ldots\>> have spacings
    <math|a<rsub|k>*\<downarrow\>*0>. Larger <math|k> means finer. The
    sequence is <em|gentle>: <math|log <around|(|a<rsub|k>/a<rsub|k+1>|)>/log
    <around|(|1/a<rsub|k>|)>\<to\>0>.

    <item><math|I<rsub|N,p><around|(|v,x|)>> is the renormalized lattice
    observable of a lattice label (token) <math|v> at the site <math|x>.
    <math|<around|\<\|\|\>|F|\<\|\|\>><rsub|\<cal-T\><rsub|k>>> is the
    chessboard root of a lattice function <math|F> in the centred tiling of
    scale <math|a<rsub|k>>. Both follow IV.1.

    <item><math|S> is the limit table along the refined extraction order. It
    has field spaces <math|F<rsub|d>> and the inclusions
    <math|\<iota\><rsub|m,n>:F<rsub|m>\<to\>F<rsub|n>>
    (<math|m\<leqslant\>n>) of the field algebra. A label list is
    <math|a=<around|(|a<rsub|i>|)><rsub|i\<in\>I>> with
    <math|a<rsub|i>\<in\>F<rsub|d<rsub|i>>>, and its total degree is
    <math|w<around|(|a|)>=<big|sum><rsub|i>d<rsub|i>>.

    <item><math|\<cal-A\>> is the ground algebra of V.1: the commutative
    C*-algebra generated by the compressed slab operators
    <math|M<around|(|u|)>> of separated words <math|u>. Its vacuum is
    <math|\<Omega\>>, its Gelfand spectrum is the phase space <math|X> with
    measure <math|\<nu\>> of full support, and its characters are
    <math|\<chi\><rsub|\<xi\>>>.

    <\itemize-minus>
      <item><math|S<rsup|\<xi\>><around|(|u|)>=\<chi\><rsub|\<xi\>><around|(|M<around|(|u|)>|)>>
      and <math|S<rsup|<math-up|mix>><around|(|u|)>=<around|\<langle\>|\<Omega\>,M<around|(|u|)>*\<Omega\>|\<rangle\>>>.

      <item>Hence, for <math|A\<in\>\<cal-A\>> and <math|c\<geqslant\>0>:
      <math|<around|\<\|\|\>|A|\<\|\|\>>\<leqslant\>c> if and only if
      <math|<around|\||s<around|(|A|)>|\|>\<leqslant\>c> for every state
      <math|s\<in\>X\<sqcup\><around|{|<math-up|mix>|}>>
      (<hlink|<verbatim|glance_contract>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Views.lean#L67-L68>,
      <hlink|<verbatim|Cards.pressure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Pressure.lean#L89-L92>).
    </itemize-minus>

    <item>Clusters and clearance follow Definition 1.13 of the statement.

    <\itemize-minus>
      <item><math|<around|(|x,o|)>> is an
      <em|<math|<around|(|r,M,\<eta\>|)>>-cluster> if
      <math|<around|\||x<rsub|i>-o|\|>\<leqslant\>M*r> and
      <math|<around|\||x<rsub|i>-x<rsub|i<rprime|'>>|\|>\<geqslant\>\<eta\>*r>
      for <math|i\<ne\>i<rprime|'>>.

      <item><math|y\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|J>> is
      <em|<math|c>-clear of <math|o>> if <math|<around|\||o-y<rsub|j>|\|>\<geqslant\>c>
      and <math|<around|\||y<rsub|j>-y<rsub|j<rprime|'>>|\|>\<geqslant\>c>
      for <math|j\<ne\>j<rprime|'>>.

      <item><math|S<rsup|s><around|(|a,x;b,y|)>> and
      <math|M<around|(|a,x;b,y|)>> denote the concatenated word.
    </itemize-minus>

    <item>"For all sufficiently small <math|r>" means: there is
    <math|r<rsub|0>\<gtr\>0>, depending only on the data quantified before
    the phrase, such that the assertion holds for all
    <math|r\<in\><around|(|0,r<rsub|0>|)>> and all configurations and states
    quantified after it.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Proposition VII.4.1 (separated OPE; properties (O1)\U(O2) of the
  main theorem).>

  <em|Setting.>

  <\itemize-minus>
    <item><math|<around|(|\<cal-W\>,S,F|)>> is a family, limit table and
    final record satisfying the RG hypotheses of Remark VII.4.7, denoted
    (RG).

    <item><math|\<cal-P\>> is any coherent prescription (VII.4.6).

    <item><math|\<cal-R\>> is the Reader built from <math|\<cal-P\>> and the
    rotation and reality structures of <math|F> (Lemma VII.4.c). It provides
    strata <math|E<rsub|j>\<subset\>F<rsub|j>>, bases fixed by conjugation
    <math|<around|(|O<rsub|j,\<kappa\>>|)><rsub|\<kappa\>\<in\><math-up|Ch><rsub|j>>>
    of <math|E<rsub|j>>, and coefficients
    <math|c<rsub|j,\<kappa\>><around|(|a;x,o|)>>.
  </itemize-minus>

  <em|Conclusions.>

  <\itemize-minus>
    <item><strong|(O1)> Fix a finite <math|I>, labels <math|a>,
    <math|M\<geqslant\>0>, <math|\<eta\>\<gtr\>0>,
    <math|\<varepsilon\>\<gtr\>0>, <math|j> and
    <math|\<kappa\>\<in\><math-up|Ch><rsub|j>>. For all sufficiently small
    <math|r> and every <math|<around|(|r,M,\<eta\>|)>>-cluster
    <math|<around|(|x,o|)>>: <math|<around|\||c<rsub|j,\<kappa\>><around|(|a;x,o|)>|\|>\<leqslant\>r<rsup|<space|0.17em>j-w<around|(|a|)>-\<varepsilon\>>>.

    <item><strong|(O2)> Fix finite <math|I,J>, labels <math|a,b>,
    <math|M\<geqslant\>0>, <math|\<eta\>,c,\<varepsilon\>\<gtr\>0> and
    <math|D\<in\>\<bbb-N\>>. For all sufficiently small <math|r>, every
    <math|<around|(|r,M,\<eta\>|)>>-cluster <math|<around|(|x,o|)>> and every
    <math|y> that is <math|c>-clear of <math|o>:

    <\itemize-minus>
      <item>the points of <math|<around|(|x,y|)>> are pairwise distinct, and
      so are those of <math|<around|(|o,y|)>>;

      <item>the remainder satisfies
    </itemize-minus>
  </itemize-minus>

  <\equation*>
    <mid|\|>M<around|(|a,x;b,y|)>-<big|sum><rsub|j\<leqslant\>D><big|sum><rsub|\<kappa\>\<in\><math-up|Ch><rsub|j>>c<rsub|j,\<kappa\>><around|(|a;x,o|)>*<space|0.17em>M<around*|(|<around|(|j,O<rsub|j,\<kappa\>>|)>,o;<space|0.17em>b,y|)><mid|\|><rsub|\<cal-A\>>\<leqslant\>r<rsup|<space|0.17em>D+1-w<around|(|a|)>-\<varepsilon\>>;
  </equation*>

  <\itemize-minus>
    <item>hence <math|<mid|\|>S<rsup|s><around|(|a,x;b,y|)>-<big|sum><rsub|j\<leqslant\>D><big|sum><rsub|\<kappa\>>c<rsub|j,\<kappa\>><around|(|a;x,o|)>*<space|0.17em>S<rsup|s><around|(|<around|(|j,O<rsub|j,\<kappa\>>|)>,o;b,y|)><mid|\|>\<leqslant\>r<rsup|D+1-w<around|(|a|)>-\<varepsilon\>>>
    for every <math|s\<in\>X\<sqcup\><around|{|<math-up|mix>|}>>.
  </itemize-minus>

  The coefficients do not depend on <math|b>, <math|y>, <math|s> or <math|D>.
  The thresholds do not depend on <math|x>, <math|o>, <math|y> or <math|s>.

  <em|Status:> theorem for every Reader on the given final record under (RG).
  The main construction supplies the coherent prescription and (RG) in
  VIII.1.

  <em|Lean:>

  <\itemize-minus>
    <item><hlink|<verbatim|Orbits.Foundation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L62-L64>:
    clause <verbatim|coefficients> is (O1); clause <verbatim|discrepancy>
    gives injectivity, the bound in <math|\<cal-A\>> and the bound in every
    state.

    <item><hlink|<verbatim|Orbits.produce>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L67-L68>,
    <hlink|<verbatim|coefficient_separated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L64-L69>,
    <hlink|<verbatim|quantitative_separated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L71-L85>.

    <item>The error element is <hlink|<verbatim|algebraError>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/System.lean#L61-L63>.

    <item>Headline: <hlink|<verbatim|SeparatedOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L24-L48>,
    clauses <verbatim|coefficient> and <verbatim|remainder>, the latter via
    <hlink|<verbatim|Independent.Core.point>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L49-L63>.

    <item>Public form: <hlink|<verbatim|publicOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77>
    into <hlink|<verbatim|Hierarchy.OperatorProductExpansion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70-L80>.
  </itemize-minus>

  <strong|Proposition VII.4.2 (integrated remainder; item (D8)).> Fix the
  data of (O2), a measurable space <math|K> and <math|B\<geqslant\>0>. For
  all sufficiently small <math|r> the following holds.

  <em|Hypotheses.> Let <math|\<mu\>> be a positive measure on <math|K>,
  <math|w\<in\>L<rsup|1><around|(|\<mu\>;\<bbb-C\>|)>> with
  <math|<big|int><around|\||w|\|>*<space|0.17em>d*\<mu\>\<leqslant\>B>, and
  <math|k\<mapsto\><around|(|x<around|(|k|)>,o<around|(|k|)>,y<around|(|k|)>|)>>
  an a.e.-measurable configuration map. Assume that <math|\<mu\>>-a.e. on
  <math|<around|{|w\<ne\>0|}>>, <math|<around|(|x,o|)>> is an
  <math|<around|(|r,M,\<eta\>|)>>-cluster and <math|y> is <math|c>-clear of
  <math|o>.

  <em|Conclusion.> Take for <math|s<around|(|k|)>> either the mixed state, or
  <math|\<xi\><around|(|k|)>> for an arbitrary a.e.-measurable phase map
  <math|\<xi\>:K\<to\>X>. Then:

  <\itemize-minus>
    <item><math|w*<space|0.17em>S<rsup|s><around|(|a,x;b,y|)>>, <math|w>
    times the truncated sum, and <math|w> times their difference are
    integrable;

    <item>the integrals satisfy
  </itemize-minus>

  <\equation*>
    <mid|\|><big|int><rsub|K>w<around|(|k|)>*<around*|[|S<rsup|s<around|(|k|)>><around|(|a,x;b,y|)>-<big|sum><rsub|j\<leqslant\>D><big|sum><rsub|\<kappa\>>c<rsub|j,\<kappa\>><around|(|a;x,o|)>*<space|0.17em>S<rsup|s<around|(|k|)>><around|(|<around|(|j,O<rsub|j,\<kappa\>>|)>,o;b,y|)>|]>*d*\<mu\><around|(|k|)><mid|\|>\<leqslant\>B*<space|0.17em>r<rsup|D+1-w<around|(|a|)>-\<varepsilon\>>.
  </equation*>

  In particular, for every probability measure <math|\<nu\><rprime|'>> on
  <math|X>, the <math|\<nu\><rprime|'>>-mixture of the phases satisfies the
  bound of (O2) (<hlink|<verbatim|probability_mixtures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L52-L58>).
  The same pointwise threshold works for every <math|K> and <math|B>.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|estimates_weighted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L98-L108>,
  <hlink|<verbatim|JointEstimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L53-L57>,
  <hlink|<verbatim|FitsOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L17>;
  clause <verbatim|profiles> of <verbatim|SeparatedOPE>, through
  <verbatim|Core.joint>.

  <strong|Proposition VII.4.3 (nested OPE, i.e. composition of coefficients
  over trees; item (D10)).>

  <em|Trees and plots.>

  <\itemize-minus>
    <item><math|t> is a finite rooted tree whose root is an inner node, and
    <math|v> labels its leaves.

    <item><math|w<rsub|p>> is the total degree of the leaves below the inner
    node <math|p>.

    <item>A <em|plot> <math|z> assigns points to the leaves and an anchor
    <math|z<rsub|p>> to each inner node.

    <item>Radii <math|s<rsub|p>\<gtr\>0> are attached to the inner nodes,
    with <math|\<rho\><rsub|p>=s<rsub|p>/s<rsub|<math-up|parent><around|(|p|)>>>
    for non-root <math|p>.
  </itemize-minus>

  <em|Admissibility.> <math|<around|(|s,z|)>> is
  <em|<math|<around|(|r,M,\<eta\>|)>>-admissible> if:

  <\itemize-minus>
    <item><math|s<rsub|<math-up|root>>=r> and
    <math|s<rsub|p>\<leqslant\>s<rsub|<math-up|parent><around|(|p|)>>>;

    <item>at every inner node <math|p>, all positions of the subtree lie
    within <math|M*s<rsub|p>> of <math|z<rsub|p>>;

    <item>positions in different children of <math|p> are at distance
    <math|\<geqslant\>\<eta\>*s<rsub|p>>.
  </itemize-minus>

  <em|Costs.> Put

  <\equation*>
    <math-up|toll><rsub|m><around|(|s|)>=r<rsup|<space|0.17em>m-w<around|(|v|)>-\<varepsilon\>>*<big|prod><rsub|p\<ne\><math-up|root>>\<rho\><rsub|p><rsup|-w<rsub|p>-\<varepsilon\>>,<space|2em><math-up|nest><rsub|D><around|(|s|)>=<big|sum><rsub|p\<ne\><math-up|root>>\<rho\><rsub|p><rsup|<space|0.17em>D<rsub|p>+1>.
  </equation*>

  <em|Conclusions.> Fix <math|m>, <math|\<kappa\>\<in\><math-up|Ch><rsub|m>>,
  truncation degrees <math|D<rsub|p>> at the inner nodes,
  <math|M\<geqslant\>0> and <math|\<eta\>,\<varepsilon\>\<gtr\>0>. For all
  sufficiently small <math|r> and every admissible <math|<around|(|s,z|)>>:

  <\itemize-minus>
    <item>(a) <math|<around|\||c<rsub|m,\<kappa\>><around|(|v;z<rsub|<math-up|leaves>>,z<rsub|<math-up|root>>|)>|\|>\<leqslant\><math-up|toll><rsub|m><around|(|s|)>>.

    <item>(b) <math|\|c<rsub|m,\<kappa\>>(v;\<cdot\><around|)|-c<rsup|<around|(|D|)>><rsub|m,\<kappa\>><around|(|v;z|)>|\|>\<leqslant\><math-up|toll><rsub|m><around|(|s|)><space|0.17em><math-up|nest><rsub|D><around|(|s|)>>.
    Define <math|c<rsup|<around|(|D|)>>> recursively: each inner child
    <math|q> contributes a channel <math|<around|(|j<rsub|q>,\<kappa\><rsub|q>|)>>
    with <math|j<rsub|q>\<leqslant\>D<rsub|q>>, its composed coefficient, and
    the output field <math|O<rsub|j<rsub|q>,\<kappa\><rsub|q>>> at
    <math|z<rsub|q>>. Each leaf child contributes its original label and the
    factor <math|1>. Multiply these factors by the root coefficient for the
    resulting child labels, and sum over the inner children's channels. The
    root output is fixed at <math|<around|(|m,\<kappa\>|)>>;
    <math|D<rsub|<math-up|root>>> is unused.

    <item>(c) Fix a finite spectator list <math|b> and
    <math|\<delta\>\<gtr\>0> before taking <math|r> small. If <math|y> is at
    distance <math|\<geqslant\>\<delta\>> from every point of the plot, with
    mutual distances <math|\<geqslant\>\<delta\>>, then the degree-<math|m>
    remainder of VII.4.1 for the leaves at <math|z<rsub|<math-up|root>>> has
    <math|\<cal-A\>>-norm, and absolute value in every state, at most
    <math|<math-up|toll><rsub|m+1><around|(|s|)>>.

    <item>(d) Fix a measurable space <math|K>. For each small <math|r>, keep
    the radii <math|s> fixed throughout the integration. Let <math|\<mu\>> be
    a positive measure on <math|K> and <math|q\<in\>L<rsup|1><around|(|\<mu\>;\<bbb-C\>|)>>
    with <math|<big|int><around|\||q|\|>*<space|0.17em>d*\<mu\>\<leqslant\>B>.
    Let the plot, and in (c) the spectators, be a.e.-measurable maps
    satisfying the stated geometry a.e. where <math|q\<ne\>0>. The direct and
    composed coefficients are integrable after multiplication by <math|q>;
    their integral and the difference of their integrals satisfy (a)\U(b)
    with an additional factor <math|B>. The tested remainder has the
    integrated conclusion of VII.4.2 with bound
    <math|B<space|0.17em><math-up|toll><rsub|m+1><around|(|s|)>>, for the
    mixed state or any a.e.-measurable phase map. The thresholds are uniform
    in <math|s,\<mu\>,q,B> and the configuration maps.
  </itemize-minus>

  <em|Status:> theorem for every Reader on the final record under (RG).

  <em|Lean:>

  <\itemize-minus>
    <item><hlink|<verbatim|Composite.token>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Composite.lean#L33-L35>,
    <hlink|<verbatim|Composite.nShot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Composite.lean#L93-L95>
    distinguish unchanged leaf inputs from inner-node expansions.

    <item><hlink|<verbatim|NestedOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128-L138>
    (clauses <verbatim|direct>, <verbatim|tested>, <verbatim|joint>,
    <verbatim|jointLaw>).

    <item><hlink|<verbatim|Nesting.Uniform>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L17-L27>,
    <hlink|<verbatim|Nesting.uniform>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L31-L36>.

    <item><hlink|<verbatim|Accept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean#L15-L18>,
    <hlink|<verbatim|Tree.toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Actual.lean#L18-L19>,
    <hlink|<verbatim|Tree.nestPrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Weights.lean#L102-L103>,
    <hlink|<verbatim|Composite.stacked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Composite.lean#L115>,
    <hlink|<verbatim|CoefIntegral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Integration.lean#L66-L71>.
  </itemize-minus>

  <strong|Proposition VII.4.4 (contact extensions; items (D2),
  (D11)\U(D13)).>

  <em|Setting.>

  <\itemize-minus>
    <item><math|\<cal-M\>> is a system of contact devices on the final
    record. Its prescription is the Reader's
    (<math|\<cal-M\>.<math-up|basis>=\<cal-P\>>; this is (D11)) and its
    rotation action is that of <math|F>.

    <item>(RG) holds.

    <item>For labels <math|a<rsub|1>,\<ldots\>,a<rsub|k>> of degrees
    <math|d<rsub|i>> and a state <math|s>:

    <\itemize-minus>
      <item>let <math|<math-up|cl><around|(|n|)>\<gtr\>0> be the clearance of
      the devices up to degree <math|n>;

      <item>put <math|B<rsub|0>=min <around|(|1,<math-up|cl><around|(|w<around|(|a|)>|)>|)>>
      and fix a subtraction length <math|s<rsub|0>\<in\><around|(|0,B<rsub|0>/2|]>>;
      the public form uses <math|s<rsub|0>=B<rsub|0>/4>;

      <item>let <math|\<cal-D\><rsup|s><rsub|a><around|(|f|)>=<big|int><around|\<langle\>|<math-up|full>|\<rangle\>><rsub|s><around|(|f;x|)>*<space|0.17em>d*x>,
      the kernel being given by the forest formula of Lemma VII.4.r.
    </itemize-minus>
  </itemize-minus>

  <em|Conclusions.>

  <\itemize-minus>
    <item>(a) <math|\<cal-D\><rsup|s><rsub|a>> is a distribution of order at
    most <math|<around|(|2+w<around|(|a|)>|)>*<space|0.17em>k>. For every
    compact <math|K> there is <math|C<rsub|K>> with
    <math|<big|int><around|\||<around|\<langle\>|<math-up|full>|\<rangle\>><rsub|s><around|(|f;x|)>|\|>*<space|0.17em>d*x\<leqslant\>C<rsub|K>*max<rsub|<around|\||\<alpha\>|\|>\<leqslant\><around|(|2+w<around|(|a|)>|)>*k><around|\<\|\|\>|\<partial\><rsup|\<alpha\>>*f|\<\|\|\>><rsub|\<infty\>>>
    for all <math|f> supported in <math|K>.

    <item>(b) <strong|(D2)> <math|\<cal-D\><rsup|s><rsub|a><around|(|f|)>=<big|int>f<around|(|x|)>*<space|0.17em>S<rsup|s><around|(|a;x|)>*<space|0.17em>d*x>
    for every <math|f\<in\>C<rsub|c><rsup|\<infty\>>> supported in
    <math|<math-up|Conf><rsub|k>>.

    <item>(c) The same construction gives distributions on affine slices
    <math|o+P<around|(|E|)>>, where <math|P> is a linear isometry whose range
    contains the normal space of the diagonal of a group
    <math|g\<subset\><around|{|1,\<ldots\>,k|}>>, and <math|o> lies on that
    diagonal.

    <item>(d) <strong|(D12)> For the admissible stage families described
    below, the pairing equals the sum over subtraction choices and dyadic
    shells. Every shell kernel is integrable, the sum of their
    <math|L<rsup|1>> norms is finite, and the iterated forest sums give the
    same pairing.

    <item>(e) <strong|(D12)> For the single-block partition
    <math|Q=<around|{|g|}>> with <math|g\<ne\>\<emptyset\>>, use pure
    dilation in its normal space <math|K<rsub|g>>, with
    <math|R\<in\><around|(|0,1|]>>. Put <math|q<rsub|g>=4*<around|(|<around|\||g|\|>-1|)>>
    and <math|f<rsub|R><around|(|x|)>=R<rsup|-q<rsub|g>>*f*<around|(|R<rsup|-1>*x<rsub|K<rsub|g>>+x<rsub|K<rsub|g><rsup|\<perp\>>>|)>>.
    If <math|<math-up|supp>f> lies in the rescaled stage and
    <math|<around|\<\|\|\>|f|\<\|\|\>><rsub|C<rsup|N>>\<leqslant\>H>, where
    <math|N=<around|(|2+<big|sum><rsub|i=1><rsup|k>d<rsub|i>|)>*<around|(|<around|\||g|\|>-1|)>>,
    then for every <math|\<varepsilon\>\<gtr\>0> the integral of the absolute
    kernel is at most <math|C*H*R<rsup|<space|0.17em>u-w<around|(|a<rsub|g>|)>-\<varepsilon\>>>.
    Here <math|u=0> for the full resolution, <math|u=n> for the
    weight-<math|n> coefficient and <math|u=n+1> for the remainder after
    degree <math|n>. For the last two bounds the stage must also lie within
    clearance <math|<math-up|cl><around|(|n|)>> of the <math|g>-diagonal. For
    <math|<around|\||g|\|>\<gtr\>1>, tests supported away from that diagonal
    give the same pairing as the punctured expression, which already includes
    proper-subcluster subtractions.

    <item>(f) <strong|(D13)> The device strata have bases fixed by
    conjugation, and the basis in degree 0 contains the unit field.

    <item>(g) <strong|(D13)> For every positive sequence
    <math|<around|(|f<rsub|n>|)>> there are thresholds
    <math|0\<less\>t<rsub|n>\<leqslant\>f<rsub|n>> with
    <math|4*t<rsub|n+1>\<less\>t<rsub|n>>, <math|t<rsub|n>\<to\>0> and
    <math|2*<around|(|n+1|)>*t<rsub|n>\<leqslant\><math-up|cl><around|(|n|)>>.
  </itemize-minus>

  In (d)\U(e), an admissible stage family consists of a partition <math|Q> of
  a group <math|g>, affine placements <math|o+P<around|(|E|)>>, positive
  subtraction lengths <math|s>, and block scales
  <math|R<rsub|i>\<in\><around|(|0,1|]>>. Each <math|o> lies on the block
  diagonals, and the range of <math|P> contains their normal spaces. A common
  ceiling <math|B\<leqslant\>min <around|(|1,<math-up|cl><around|(|<big|sum><rsub|i>d<rsub|i>|)>|)>>
  satisfies <math|2*s\<leqslant\>B>. At each placement a common linear frame
  acts by <math|R<rsub|i>> on every block normal space and preserves each
  orthogonal complement. The closed stages lie in a fixed ball in frame
  coordinates and within normal distance <math|B> of each block diagonal; for
  nonsingleton blocks <math|R<rsub|i>\<leqslant\>C<rsub|1>*s> with fixed
  <math|C<rsub|1>>. Original and spectator labels have uniform norm bounds.
  Spectator positions and labels are continuous on each stage and constant in
  each block's normal directions. All centroids of nonempty subgroups of
  different blocks, and all spectators, are uniformly separated by some
  <math|\<delta\>\<gtr\>0>. These conditions are the geometric and field
  hypotheses for the summation and scaling estimates; their constants may
  depend on the fixed family.

  Uniqueness, reflection positivity on overlapping supports, contact Ward
  identities for arbitrary subtractions and real-time products are not
  asserted.

  <em|Status:> theorem (<hlink|<verbatim|provided>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L65-L69>).
  In the main theorem the devices are assembled in
  <hlink|<verbatim|contacts_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L14-L24>
  (VIII.1), with detectors from <hlink|<verbatim|detector_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Detector.lean#L28-L35>.
  (D2) appears in the detailed theorem <hlink|<verbatim|constructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40>,
  not in the public joint existence statement.

  <em|Lean:>

  <\itemize-minus>
    <item>Stage hypotheses: <hlink|<verbatim|Route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest/Route.lean#L24-L45>,
    <hlink|<verbatim|Route.Authority>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest/Reader.lean#L57>,
    <hlink|<verbatim|Backdrop.Eligible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Strict.lean#L48-L52>;
    output clearance: <hlink|<verbatim|sees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Projection.lean#L28>;
    derivative order: <hlink|<verbatim|stairs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest/Aperture.lean#L25>.

    <item><hlink|<verbatim|MultipleLight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L52-L63>,
    with clauses <verbatim|slope> = <hlink|<verbatim|Sunshine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L33-L40>,
    <verbatim|moment> = <hlink|<verbatim|Resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L23-L31>,
    and <verbatim|distribution> = <hlink|<verbatim|Charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L30-L31>
    of order <hlink|<verbatim|totalTestOrder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Skies.lean#L48>.

    <item><hlink|<verbatim|SystemBasis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L47-L51>,
    <hlink|<verbatim|Thresholds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L23-L28>.

    <item>Public form: <hlink|<verbatim|contactDistribution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49>
    for <hlink|<verbatim|Hierarchy.Contacts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean#L12-L14>.
  </itemize-minus>

  <strong|Proposition VII.4.5 (slab-operator bound; the bench V.1.7).>

  <em|Hypotheses.> <math|<around|(|\<cal-W\>,f,S|)>> is a seed:

  <\itemize-minus>
    <item><math|\<cal-W\>> has the construction properties;

    <item>the extraction is ordered and has generic point limits;

    <item><math|S> satisfies the Euclidean hierarchy;

    <item>the corrected field estimates of IV.1 hold;

    <item>the cell hypothesis holds: reflection positivity and the chessboard
    inequality at every cutoff, and centred bounds
    <math|<around|\<\|\|\>|I<rsub|N,p><around|(|v,x|)>|\<\|\|\>><rsub|\<cal-T\><rsub|m>>\<leqslant\>A*<space|0.17em>a<rsub|m><rsup|-d-\<varepsilon\>>+\<eta\>>
    late in the extraction.
  </itemize-minus>

  <em|Conclusion.> For every <math|D\<in\>\<bbb-N\>> and <math|R\<gtr\>0>
  there are <math|C<rsub|0>\<gtr\>0> and <math|P\<in\>\<bbb-N\>> with the
  following property. Let <math|d\<gtr\>0>, <math|r\<in\><around|(|0,1|]>>,
  and let <math|w\<neq\>\<emptyset\>> be a word with these properties:

  <\itemize-minus>
    <item>its tokens have degree <math|\<leqslant\>D> and coefficient norm
    <math|\<leqslant\>R>;

    <item>it lies in the time slab <math|<around|(|0,d|)>> and is
    <math|r>-buffered there.
  </itemize-minus>

  Then there are a level <math|b> and a width <math|0\<less\>s\<leqslant\>d>
  with <math|s\<in\>a<rsub|b>*\<bbb-N\>> and <math|w> in the slab
  <math|<around|(|0,s|)>>, such that every word <math|v> supported at
  positive times has a constant <math|B<rsub|v>> with

  <\equation*>
    <around|\||S*<around|(|\<Theta\>*v<rsub|n>\<cdot\>v<rsub|n>|)>|\|>\<leqslant\>B<rsub|v>*<space|0.17em>\<rho\><rsup|4*n>*<space|1em><around|(|n\<in\>\<bbb-N\>|)>,<space|2em>\<rho\>=C<rsub|0><rsup|<around|\||w|\|>>*<space|0.17em><around|(|<around|\||w|\|>/r|)><rsup|P<around|\||w|\|>>.
  </equation*>

  Here <math|v<rsub|n>> is <math|v> preceded by <math|2*n> consecutive slabs
  of width <math|s> that hold alternately <math|w> and its reflection. In V.1
  an iterated Schwarz inequality turns this into
  <math|<around|\<\|\|\>|T<rsub|s><around|(|w|)>|\<\|\|\>>\<leqslant\>\<rho\>>.
  One may take <math|P=4*<around|(|D+1|)>>.

  <em|Status:> theorem: <hlink|<verbatim|Next.Phase.seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L154-L160>
  proves <hlink|<verbatim|Bid.Seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L27>.

  <\itemize-minus>
    <item>It enters the phase construction of V.1 through
    <hlink|<verbatim|Next.Phase.vacuum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Assembly.lean#L69-L73>.

    <item>The OPE proofs of this unit do not use it directly; they use the
    algebra <math|\<cal-A\>> it helps to build.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Bid.Bench>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L21-L24>,
  <hlink|<verbatim|OS.QRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L70-L71>,
  <hlink|<verbatim|Spread.radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L109>;
  steps in Lemmas VII.4.o\Up.

  <strong|Proposition VII.4.6 (coherent prescription).>

  <em|Setting.>

  <\itemize-minus>
    <item>A <em|probe> is a finite separated configuration of tokens; its
    first point is the anchor, and the other points are taken relative to it.

    <item><math|<math-up|sp><rsub|n>:F<rsub|n>\<to\>\<bbb-C\><rsup|<around|{|<text|probes>|}>>>
    sends <math|\<phi\>> to the correlations of <math|\<phi\>> at the anchor
    with the probe tokens. This map is injective, by the definition of
    <math|F<rsub|n>> as a quotient by null fields, and compatible with the
    inclusions.

    <item>A <em|mode> is a pair <math|i=<around|(|n,\<alpha\>|)>>, where
    <math|\<alpha\>> indexes a basis of <math|F<rsub|n>/\<iota\><around|(|F<rsub|n-1>|)>>,
    with <math|F<rsub|-1>=0>.
  </itemize-minus>

  <em|Conclusion.> There are, for every mode, a vector
  <math|u<rsub|i>\<in\>F<rsub|n>> (needle) and a finitely supported family
  <math|\<lambda\><rsub|i>> of complex weights on probes (sheet), with the
  following property. Write <math|\<lambda\><rsub|i><rsup|<around|(|m|)>>=<big|sum><rsub|p>\<lambda\><rsub|i><around|(|p|)><space|0.17em><math-up|sp><rsub|m><around|(|\<cdummy\>|)><around|(|p|)>>
  for the induced functional (test) on <math|F<rsub|m>>. Then for every
  <math|n>:

  <\itemize-minus>
    <item><math|\<lambda\><rsub|i><rsup|<around|(|n|)>>*<around|(|\<iota\>*u<rsub|j>|)>=\<delta\><rsub|i*j>>
    for all modes <math|i,j> of degree <math|\<leqslant\>n>;

    <item><math|\<phi\>=<big|sum><rsub|deg
    i\<leqslant\>n>\<lambda\><rsub|i><rsup|<around|(|n|)>><around|(|\<phi\>|)>*<space|0.17em>\<iota\>*u<rsub|i>>
    for all <math|\<phi\>\<in\>F<rsub|n>>.
  </itemize-minus>

  Tests of degree <math|\<gtr\>n> vanish on <math|F<rsub|n>>. One
  prescription serves every truncation degree.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Prescription>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L44-L46>,
  <hlink|<verbatim|SignedOff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L59-L61>,
  <hlink|<verbatim|Coherent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L63>,
  <hlink|<verbatim|Prescription.chosen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31>,
  <hlink|<verbatim|highVan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L32-L35>.

  <strong|Remark VII.4.7 (hypotheses and order of choices).>

  <em|The order of choices.> In the main theorem
  (<hlink|<verbatim|WilsonExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L143-L155>),
  the family is chosen first, for <math|G> with simple Lie algebra and any
  penalty <math|b\<gtr\>0>. Then, for every extraction order, a refinement,
  the table, the final record, the Reader and the devices are chosen
  together.

  <em|The hypotheses (RG)> (<hlink|<verbatim|Services>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L56-L60>)
  bundle four items:

  <\itemize-minus>
    <item>the grid-approximant property;

    <item>simplicity of the Lie algebra of <math|G>;

    <item>the per-step and cluster RG estimates;

    <item>the continuum extraction record.
  </itemize-minus>

  For the table of the construction these hypotheses are proved by
  <hlink|<verbatim|Run.extractible17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90>
  (VIII.1, from Part III outputs; Ÿ2 input 6).

  <em|Separate existence theorems.> <hlink|<verbatim|through_final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L32-L37>
  and the raw tree theorem allow any penalty <math|b\<gtr\>0>.
  <hlink|<verbatim|Orbits.foundation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L70-L77>,
  the single-cluster existence theorem, the covariant tree existence theorem
  and <hlink|<verbatim|celestial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L78-L79>
  choose <math|b=1>. The main theorem instead applies the OPE estimates to
  its already chosen family.

  <em|Further results.> The same construction also gives:

  <\itemize-minus>
    <item>the OPE in the raw (complex, non-covariant) needle basis
    (<hlink|<verbatim|SingleSubpower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L40-L51>);

    <item>tree versions for every coherent prescription
    (<hlink|<verbatim|AllShapes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L39-L45>,
    via <hlink|<verbatim|Services.everything>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L47-L48>).
  </itemize-minus>

  <em|What is not claimed.> The coefficients depend on the prescription and
  the Reader. Independence of the extraction subsequence is not claimed
  (Assessment Ÿ7.5).

  <section|2. What it uses><label|2-what-it-uses>

  <strong|Inputs from other units>

  <\enumerate>
    <item><em|The final record and its seed> (IV.1, V.1\UV.3, VI.1; assembled
    in VIII.1). This comprises:

    <\itemize-minus>
      <item>the cutoff family with the construction properties (II.2,
      III.13);

      <item>the hierarchy (Euclidean axioms) of <math|S>, and generic point
      limits on grid configurations;

      <item>the field algebra: inclusions <math|\<iota\>>, derivative
      identities, rotation action and its laws, reality structure.
    </itemize-minus>

    Lean: <hlink|<verbatim|Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>,
    <verbatim|Locals>, <verbatim|Final>.

    <item><em|Reflection positivity and centred bounds> (IV.1, interface item
    2; I.1). Two parts:

    <\itemize-minus>
      <item>the chessboard inequality at every cutoff;

      <item>for every degree <math|d> and <math|\<varepsilon\>,R\<gtr\>0>,
      there are <math|m<rsub|0>> and <math|A\<geqslant\>0> such that, for
      every <math|m\<geqslant\>m<rsub|0>> and <math|\<eta\>\<gtr\>0>,
      eventually along the extraction every
      <math|I<rsub|N,p><around|(|v,x|)>> with
      <math|<around|\<\|\|\>|v|\<\|\|\>>\<leqslant\>R> is interior to its
      centred cell at scale <math|a<rsub|m>>, with root
      <math|\<leqslant\>A*<space|0.17em>a<rsub|m><rsup|-d-\<varepsilon\>>+\<eta\>>,
      uniformly in <math|v> and the site <math|x>.
    </itemize-minus>

    Lean: <hlink|<verbatim|CellHyp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79>.

    <item><em|The ground algebra and phases> (V.1). This comprises:

    <\itemize-minus>
      <item><math|\<cal-A\>> commutative, with <math|X> its Gelfand spectrum
      and <math|\<nu\>> of full support;

      <item><hlink|<verbatim|B17.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B17.lean#L71-L90>:
      <math|<around|\<langle\>|\<Omega\>,<around|(|u<rsup|\<ast\>>*u|)><rsup|n>*\<Omega\>|\<rangle\>>>
      is the limit, as the spacing <math|\<to\>\<infty\>>, of the continuum
      correlation of <math|2*n> time-translates of <math|u>, alternately
      conjugated;

      <item><hlink|<verbatim|Retain.bit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L22-L58>:
      if <math|c\<geqslant\>0> and <math|<around|\<langle\>|\<Omega\>,<around|(|u<rsup|\<ast\>>*u|)><rsup|n>*\<Omega\>|\<rangle\>>\<leqslant\>c<rsup|2*n>>
      for all <math|n>, then <math|<around|\||\<chi\><rsub|\<xi\>><around|(|u|)>|\|>\<leqslant\>c>
      for all <math|\<xi\>>;

      <item>the selection, the every-phase tables, and their smoothness.
    </itemize-minus>

    <item><em|The derivative identity> (VI.1, IV.1): the derivative in one
    point of a correlation is the correlation with the derivative label, of
    degree one higher. It is used in Lemma VII.4.i.

    <item><em|Haar measure on <math|O<around|(|4|)>> and the rotation laws>
    (VI.1). They are used for the covariant Reader.

    <item><em|The RG hypotheses (RG).> The estimates come from Part III and
    are collected in VIII.1:

    <\itemize-minus>
      <item><hlink|<verbatim|Org.Grill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123>:
      for every degree bound <math|d> and level <math|m> there is
      <math|k\<geqslant\>m> such that conjugation-fixed token tuples of
      degree <math|\<leqslant\>d> on generic level-<math|k> grid
      configurations admit coverings that work along the extraction. It is
      supplied in III.11 and used in the a priori bounds (Lemma VII.4.e).

      <item><hlink|<verbatim|Package>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Replicas/Budget.lean#L13-L16>
      = <hlink|<verbatim|TableTickets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough/Factory.lean#L18-L27>,
      together with cluster product cuts for every arity. It supplies
      per-step RG bounds, coefficient transport and column estimates, halo
      summability, polymer representations, and per-cell scale choices. These
      are the Part III inputs to Lemmas VII.4.f\Ug, collected in VIII.1.

      <item>The continuum extraction record (IV.1,
      <hlink|<verbatim|Next/EXTRACTION/Base.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean>):
      the extraction to the smooth continuum table. It is supplied with the
      extraction in III.11 and used in the grid estimates (Lemma VII.4.h).
    </itemize-minus>
  </enumerate>

  <strong|Standard mathematics>

  <\itemize-minus>
    <item>Commutative C*-algebras: the Gelfand isometry and norm <math|=sup>
    over characters (Bratteli\URobinson I, Ÿ2.3.5).

    <item>Reflection positivity and chessboard estimates
    (Fröhlich\UIsrael\ULieb\USimon 1978; Fröhlich\USimon 1977; Glimm\UJaffe,
    Ch. 6 and 18).

    <item>The iterated Schwarz inequality for transfer operators on an
    invariant pre-Hilbert domain: exponential bounds on the iterates of an
    adjoint pair give <math|<around|\<\|\|\>|A*v|\<\|\|\>>\<leqslant\>D<around|\<\|\|\>|v|\<\|\|\>>>.
    This is used in V.1 (Glimm\UJaffe, Ch. 6).

    <item>Block-spin renormalization and polymer representations (Baªaban;
    Brydges, <em|Lectures on the renormalisation group>;
    Gaw¦dzki\UKupiainen).

    <item>The Wilson\UZimmermann OPE (Wilson 1969; Zimmermann 1973) and its
    axiomatic form (Hollands\UWald 2008). The conclusions here are
    finite-order asymptotic bounds with <math|\<varepsilon\>>-loss.

    <item>Extension of distributions across diagonals with Taylor subtraction
    of order given by the scaling degree (Epstein\UGlaser 1973;
    Brunetti\UFredenhagen 2000; Hörmander I, Thm 3.2.3\U3.2.4). Forest
    formulas (Zimmermann 1969).

    <item>Normalized Haar measure on <math|O<around|(|4|)>>,
    finite-dimensional duality, Taylor's formula with remainder, and the mean
    value theorem.
  </itemize-minus>

  <strong|Imported constants and assumptions>

  <\itemize-minus>
    <item><math|\<varepsilon\>\<gtr\>0> is an arbitrary exponent loss. The
    estimates do not determine logarithmic corrections.

    <item>Constants of the cluster estimate (Lemma VII.4.f):

    <\itemize-minus>
      <item>the gain margin <math|1/16>, from the RG transport factor
      <math|<around|(|a<rsub|k>/a<rsub|m>|)><rsup|1/8>>;

      <item>the loss <math|<around|(|a<rsub|m>/a<rsub|j>|)><rsup|4<around|\||I|\|>>>,
      where the exponent <math|4> is bookkeeping slack
      (<math|L<rsub|i><rsup|4>\<geqslant\>6*L<rsub|i>>);

      <item>subpower factors in the per-cell, halo and insertion bounds,
      absorbed by <math|\<varepsilon\>>.
    </itemize-minus>

    <item>The constant <math|P=4*<around|(|D+1|)>> of VII.4.5 comes from
    degree-<math|d> bounds of the form <math|a<rsub|k><rsup|-<around|(|d+1|)>>>
    and <math|a<rsub|k>\<geqslant\>c*<space|0.17em><around|(|r/<around|\||w|\|>|)><rsup|4>>.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  A coherent system of probes reads every output degree from the mixed
  correlation table. For mode <math|i>, the raw coefficient is
  <math|\<lambda\><rsub|i><around|(|a;x,o|)>=<big|sum><rsub|p>\<lambda\><rsub|i><around|(|p|)>*S<around|(|a,x-o;<text|probe
  >p|)>>, with each reading set to zero when the combined configuration is
  not separated (<hlink|<verbatim|Prescription.ope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Detector.lean#L80>).
  Biorthogonality makes these readings exact on single fields
  (<hlink|<verbatim|sumAll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Observe.lean#L27-L31>).
  Averaging over <math|O<around|(|4|)>>, symmetrizing the input and output
  conjugations, and removing lower-degree components gives the Reader's real
  covariant strata. These choices are fixed before the spectator labels,
  state and truncation degree.

  The RG estimate replaces a lattice cluster by one label <math|Q> of
  prescribed degree <math|t>. Its remainder gains
  <math|<around|(|a<rsub|m>/a<rsub|k>|)><rsup|t+1/16>>, while the label and
  remainder both pay the factor <math|a<rsub|j><rsup|-w>*<around|(|a<rsub|m>/a<rsub|j>|)><rsup|4<around|\||I|\|>>>.
  Along the scale induction, nearby groups fuse and separated groups pass
  through the next block-spin step. After extraction, exact reconstruction of
  <math|Q> by the probes yields the grid OPE. Reflection positivity bounds
  decks of widely translated copies by products of chessboard roots, treating
  a cluster remainder as one factor. The deck limit gives all vacuum moments
  of <math|u<rsup|\<ast\>>*u> in the ground algebra; full support of the
  phase measure and the Gelfand isometry then give
  <math|<around|\<\|\|\>|u|\<\|\|\>><rsub|\<cal-A\>>>. Each spectator costs
  only its own one-field bound. The resulting norm estimate controls every
  phase and the mixed state with the same coefficients.

  Exponential rates organize the choices of lattice scales. A downward
  induction in total degree extends the grid bounds to arbitrary
  configurations: each derivative raises the degree by one, while the
  distance to the fine grid recovers one power. At sufficiently high degree
  the crude bound already suffices to start the induction. Bringing the
  auxiliary scale heights together gives an arbitrary
  <math|\<varepsilon\>>-loss; refinement arguments turn these rates into
  uniform small-radius estimates. Tree expansions repeat this replacement
  recursively, leaving leaf labels unchanged. Contacts use a forest
  recursion: each retained weight receives a normal Taylor subtraction of its
  own order, and the remainder gains enough radial power for integration.
  Partial collisions are handled by the same recursion on finer partitions.
  Separately, the slab-operator bound follows by applying the two-scale
  chessboard estimate to a reflection-positive train and using iterated
  Schwarz to remove the fixed exterior cost.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Rates and sequences><label|41-rates-and-sequences>

  <strong|Lemma VII.4.a (from sequences and rates to uniform small-<math|r>
  bounds).>

  <\itemize-minus>
    <item>(i) Let <math|P<around|(|r,z|)>> and <math|Q<around|(|r,z|)>> be
    predicates. Suppose that for every choice <math|r\<mapsto\>z<rsub|r>> and
    every non-trivial refinement of <math|r\<to\>0<rsup|+>> along which
    <math|P<around|(|r,z<rsub|r>|)>> holds eventually, a further refinement
    makes <math|Q<around|(|r,z<rsub|r>|)>> hold eventually. Then, for all
    sufficiently small <math|r>, <math|P<around|(|r,z|)>> implies
    <math|Q<around|(|r,z|)>> for every <math|z>.

    <item>(ii) <em|Rates.> A quantity has upper rate <math|\<kappa\>> along
    <math|T\<to\>\<infty\>> if <math|<around|\||f|\|>\<leqslant\>e<rsup|\<kappa\><rprime|'>*T>>
    eventually, for every <math|\<kappa\><rprime|'>\<gtr\>\<kappa\>>. With
    <math|T=-log r> this means <math|<around|\||f|\|>\<leqslant\>r<rsup|-\<kappa\>-\<varepsilon\>>>
    eventually, for every <math|\<varepsilon\>\<gtr\>0>. Below, \Prate\Q
    means upper rate unless an exact rate is specified.

    <item>(iii) <em|Clusters and spectators.> Under <math|T=-log r>, an
    <math|<around|(|r,M,\<eta\>|)>>-cluster has extent of upper rate
    <math|-1> and reciprocal separation of upper rate <math|1>. For
    <math|c>-clear spectators, both the reciprocal mutual separation and the
    reciprocal distance to the centre have upper rate <math|0>.

    <item>(iv) <em|Heights.> A sequence of levels <math|m\<to\>\<infty\>> has
    height <math|c> if <math|log <around|(|1/a<rsub|m>|)>/T\<to\>c>. Every
    height <math|c\<geqslant\>0> is attained for a gentle spacing sequence.
  </itemize-minus>

  <em|Proof sketch.> For (i), choose a bad configuration at each bad radius
  and refine to a non-trivial filter supported on those radii. The assumed
  further refinement is a contradiction. Parts (ii)\U(iii) follow from
  <math|r=e<rsup|-T>>. For (iv), choose the first level whose logarithmic
  spacing exceeds <math|c*T> when <math|c\<gtr\>0>, and <math|<sqrt|T>> when
  <math|c=0>; gentleness makes the relative overshoot tend to zero.

  <em|Lean:> <hlink|<verbatim|refine_geometry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L17-L22>,
  <hlink|<verbatim|RateLE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rate.lean#L23-L24>,
  <hlink|<verbatim|loglife>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L35-L37>,
  <hlink|<verbatim|room_regime>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L38-L42>,
  <hlink|<verbatim|free_clear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L43-L47>,
  <hlink|<verbatim|Height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Height.lean#L18-L20>,
  <hlink|<verbatim|found>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Height.lean#L58-L64>.

  <subsection|4.2 Prescription and Reader><label|42-prescription-and-reader>

  <strong|Lemma VII.4.b (extension one level at a time).> A prescription that
  is biorthogonal and reconstructing on <math|F<rsub|n>> extends to one with
  the same property on <math|F<rsub|n+1>>, without changing the needles and
  sheets of degree <math|\<leqslant\>n>.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Let <math|B=<big|sum><rsub|deg i\<leqslant\>n>\<lambda\><rsup|<around|(|n+1|)>><rsub|i><around|(|\<cdummy\>|)>*<space|0.17em>\<iota\><rsub|deg
    i,n>*u<rsub|i>:F<rsub|n+1>\<to\>F<rsub|n>>, a left inverse of
    <math|\<iota\><rsub|n,n+1>>.

    <item>Take any linear section of <math|F<rsub|n+1>\<to\>F<rsub|n+1>/\<iota\>*F<rsub|n>>,
    and subtract from it its projection <math|\<iota\>\<circ\>B>. This gives
    a lift <math|\<Phi\>> whose image lies in the kernel of all old tests.

    <item>The new needles are <math|\<Phi\>> applied to a basis of the
    quotient.

    <item>The new sheets realize the dual coordinates composed with the
    quotient map. Such sheets exist because the probe functionals span the
    dual of <math|F<rsub|n+1>> (<hlink|<verbatim|reachReads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L37-L42>,
    by faithfulness).

    <item>A recursive choice, collected along <math|n>, gives a coherent
    prescription.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|startRows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Needle.lean#L44-L53>,
  <hlink|<verbatim|nextRows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Needle.lean#L57-L92>,
  <hlink|<verbatim|Prescription.chosen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31>.

  <strong|Lemma VII.4.c (the Reader).> Fix a coherent prescription.

  <em|Construction.>

  <\itemize-minus>
    <item>The <em|raw vector> of degree <math|n> is
    <math|\<sigma\><rsub|n><around|(|a;x,o|)>=<big|sum><rsub|deg
    i\<leqslant\>n>\<lambda\><rsub|i><around|(|a;x,o|)>*<space|0.17em>\<iota\>*u<rsub|i>\<in\>F<rsub|n>>.

    <item>Define the covariant average
  </itemize-minus>

  <\equation*>
    A<rsub|n><around|(|a;x,o|)>=<big|int><rsub|O<around|(|4|)>>\<rho\><rsub|n><around|(|g|)>*<space|0.17em>\<sigma\><rsub|n><around|(|\<rho\><around|(|g<rsup|-1>|)>*a;g<rsup|-1>*x,g<rsup|-1>*o|)>*<space|0.17em>d*g,
  </equation*>

  where <math|\<rho\><around|(|g<rsup|-1>|)>> acts on every input label. Set
  <math|A<rsub|n>=0> outside the domain where all rotated probes through
  degree <math|n> stay clear. The conjugation-symmetric reading is

  <\equation*>
    <wide|\<sigma\>|\<bar\>><rsub|n><around|(|a;x,o|)>=<tfrac|1|2><around*|(|A<rsub|n><around|(|a;x,o|)>+<wide|A<rsub|n><around|(|<wide|a|\<bar\>>;x,o|)>|\<bar\>>|)>.
  </equation*>

  <\itemize-minus>
    <item>Define recursively <math|\<pi\><rsub|n>=<math-up|id>-<big|sum><rsub|i\<less\>n>\<iota\>\<circ\>\<pi\><rsub|i>\<circ\>\<ell\><rsub|i,n>>
    on <math|F<rsub|n>>, where <math|\<ell\><rsub|i,n><around|(|\<phi\>|)>=<wide|\<sigma\>|\<bar\>><rsub|i><around|(|\<phi\>;0,0|)>>.

    <item>The <em|cut tests> are <math|\<tau\><rsub|n,q>=\<pi\><rsub|n>\<circ\>\<ell\><rsub|n,q>>,
    and the <em|stratum> is <math|E<rsub|n>=<big|cap><rsub|i\<less\>n>ker
    \<tau\><rsub|i,n>>.

    <item>The <em|fresh vector> is <math|\<pi\><rsub|n>*<wide|\<sigma\>|\<bar\>><rsub|n><around|(|a;x,o|)>\<in\>E<rsub|n>>.

    <item><math|<around|(|O<rsub|n,\<kappa\>>|)>> is a basis fixed by
    conjugation of <math|E<rsub|n>>, and <math|c<rsub|n,\<kappa\>><around|(|a;x,o|)>>
    are the coordinates of the fresh vector in it.
  </itemize-minus>

  <em|Properties.>

  <\itemize-minus>
    <item><math|\<tau\><rsub|n,q>=0> for <math|q\<less\>n>.

    <item><math|<big|sum><rsub|i\<leqslant\>n>\<iota\>*\<tau\><rsub|i,q>=\<iota\><rsub|q,n>>
    for <math|q\<leqslant\>n>.

    <item>The fresh vectors and cut tests intertwine rotations and
    conjugation; simultaneous translations and permutations of the inputs
    preserve the fresh vectors. Coordinates transform in the corresponding
    channel representations.

    <item>The coefficients are smooth where the probes are clear.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>On a single field of degree <math|j\<leqslant\>n> at the origin,
    the degree-<math|n> averaged reading is <math|\<iota\><rsub|j,n>>
    (<hlink|<verbatim|checkReal_fixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Real.lean#L81-L84>);
    this uses coherence and the rotation laws.

    <item>The identities for <math|\<tau\>> then follow by strong induction
    on <math|n>.

    <item>A complex finite-dimensional space with an antilinear involution
    has a basis of fixed vectors.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|checkValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Real.lean#L43-L44>,
  <hlink|<verbatim|Reader>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L17-L23>,
  <hlink|<verbatim|averageV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Average.lean#L22>,
  <hlink|<verbatim|checkReal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Real.lean#L37-L39>,
  <hlink|<verbatim|knife>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L49>,
  <hlink|<verbatim|cutTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L51>,
  <hlink|<verbatim|reconstruct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L66-L68>,
  <hlink|<verbatim|kills_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L70-L79>,
  <hlink|<verbatim|stratum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L83>,
  <hlink|<verbatim|fresh>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Fresh.lean#L15>,
  <hlink|<verbatim|Reader.basis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Stars.lean#L81>,
  <hlink|<verbatim|coef>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/System.lean#L18-L19>.

  <subsection|4.3 Norms in the ground algebra><label|43-norms-in-the-ground-algebra>

  <strong|Lemma VII.4.d (norm from decks).> Let <math|u\<in\>\<cal-A\>> come
  from a finite combination of separated grid words. It has lattice versions
  <math|U<rsub|N,p>> at the cutoffs.

  <em|Hypothesis.> Let <math|c\<geqslant\>0>. The lattice labels converge to
  those defining <math|u> along a non-trivial refinement of the extraction.
  For every <math|n> and all sufficiently large translation spacings
  <math|t>, eventually along that refinement the lattice moment of the deck
  <math|<big|prod><rsub|l\<less\>2*n>U<rsup|(\<ast\>)><rsub|N,p>\<circ\>\<tau\><rsub|2*t*l>>
  (time translates, even ones conjugated) has modulus
  <math|\<leqslant\>c<rsup|2*n>>.

  <em|Conclusion.> <math|<around|\<\|\|\>|u|\<\|\|\>><rsub|\<cal-A\>>\<leqslant\>c>.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>The deck moments converge to the continuum deck correlation.

    <item>As <math|t\<to\>\<infty\>>, that correlation tends to
    <math|<around|\<langle\>|\<Omega\>,<around|(|u<rsup|\<ast\>>*u|)><rsup|n>*\<Omega\>|\<rangle\>>=<big|int><around|\||\<chi\><rsub|\<xi\>><around|(|u|)>|\|><rsup|2*n>*d*\<nu\>>
    (B17, V.1).

    <item>Since <math|\<nu\>> has full support, the bound for all <math|n>
    gives <math|<around|\||\<chi\><rsub|\<xi\>><around|(|u|)>|\|>\<leqslant\>c>
    for every <math|\<xi\>>.

    <item>By Gelfand, <math|<around|\<\|\|\>|u|\<\|\|\>>=sup<rsub|\<xi\>><around|\||\<chi\><rsub|\<xi\>><around|(|u|)>|\|>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Cards.carrying>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Pressure.lean#L98-L104>,
  <hlink|<verbatim|Cards.pressure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Pressure.lean#L89-L92>.
  <em|(proof read; the geometric inputs to <verbatim|B17.answer> are taken
  from V.1)>

  <strong|Lemma VII.4.e (a priori and replacement bounds in
  <math|\<cal-A\>>).> Assume (RG).

  <em|Setting.> Main points are at mutual distance <math|\<gtr\>2*a<rsub|b>>.
  Exterior points are at mutual distance <math|\<gtr\>2*a<rsub|l>>, and at
  distance <math|\<gtr\>2*a<rsub|b>> from the main points. The levels satisfy
  <math|b\<leqslant\>f\<leqslant\>l\<leqslant\>n> and <math|f\<leqslant\>q>,
  with

  <\equation*>
    <around|\||I|\|>\<cdot\>10*a<rsub|f>\<less\>a<rsub|b>,<space|2em><around|\||J|\|>\<cdot\>6*a<rsub|n>\<less\>a<rsub|l>.
  </equation*>

  Main tokens have centred bounds <math|B<rsub|i>> at level <math|q>, and
  exterior tokens have bounds <math|D<rsub|j>> at level <math|n>.

  <em|Conclusions.>

  <\itemize-minus>
    <item>(i) <math|<around|\<\|\|\>|M|(><text|main>\<cup\><text|exterior><around|)||\<\|\|\>><rsub|\<cal-A\>>\<leqslant\><big|prod><rsub|i>B<rsub|i>*<big|prod><rsub|j>D<rsub|j>>.

    <item>(ii) For a cluster on a fixed grid with distinct coordinates on
    every axis, suppose lattice labels <math|Q<rsub|N,p>> of degree <math|t>
    converge to <math|Q> along a non-trivial refinement of the extraction.
    Suppose <math|R<rsub|N,p>=<big|prod><rsub|i>I<rsub|N,p><around|(|v<rsub|i>,x<rsub|i>|)>-I<rsub|N,p><around|(|Q<rsub|N,p>,0|)>>
    is interior to its centred cell at level <math|q> with root
    <math|\<leqslant\>\<alpha\>> along that refinement. Require <math|b> no
    finer than the grid, the origin to be <math|2*a<rsub|b>>-clear of the
    exterior, and both the cluster\Uexterior and origin\Uexterior
    configurations to be separated. Use the cell-fitting inequalities above
    with one main factor. Then
  </itemize-minus>

  <\equation*>
    <mid|\|>M(v,x;<text|ext>)-M(<around|(|t,Q|)>,0;<text|ext>)<mid|\|><rsub|\<cal-A\>>\<leqslant\>\<alpha\>*<big|prod><rsub|j>D<rsub|j>.
  </equation*>

  <\itemize-minus>
    <item>(iii) In rate form, let <math|0\<leqslant\>\<alpha\>\<leqslant\>\<beta\>>.
    If reciprocal main\Umain and main\Uexterior distances have upper rate
    <math|\<alpha\>>, and reciprocal exterior\Uexterior distances have upper
    rate <math|\<beta\>>, then <math|M> has upper rate
    <math|w<around|(|<text|main>|)>*\<alpha\>+w<around|(|<text|ext>|)>*\<beta\>>,
    uniformly in states.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>(i)\U(ii): the two-scale chessboard inequality is applied to decks
    of <math|2*n> translates. Main factors occupy distinct cells of the
    coarse tiling. Exterior factors, possibly several per coarse cell, are
    grouped and bounded in a finer aligned tiling. This gives the deck bound
    <math|<around|(|<big|prod>B*<big|prod>D|)><rsup|2*n>> or
    <math|<around|(|\<alpha\>*<big|prod>D|)><rsup|2*n>>.

    <item>Lemma VII.4.d then gives the norm bound at grid configurations.
    Smoothness of correlations extends it to the limit configuration.

    <item>(iii): take bounds <math|a<rsub|k><rsup|-d-\<delta\>>> at heights
    slightly above the separation rates.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Cards.plant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Literal.lean#L107-L127>,
  <hlink|<verbatim|Cards.mixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Mix.lean#L57-L94>,
  <hlink|<verbatim|Cards.Hall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Mix.lean#L45-L51>,
  <hlink|<verbatim|civic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Civic.lean#L32-L46>,
  <hlink|<verbatim|viewing_admits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Civic.lean#L63-L87>,
  <hlink|<verbatim|mirrorMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Admire.lean#L47-L62>,
  <hlink|<verbatim|admitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Fast.lean#L22-L31>,
  <hlink|<verbatim|phase_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Fast.lean#L49-L54>,
  <hlink|<verbatim|viewer_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Fast.lean#L55-L57>.
  <em|(proof read; <verbatim|TileDoc.global> statement only)>

  <subsection|4.4 The lattice cluster estimate><label|44-the-lattice-cluster-estimate>

  <strong|Lemma VII.4.f (lattice cluster replacement).> Fix the RG
  representation, product-cut and transport data of Ÿ2 for output degree
  <math|t>. Let <math|I> be finite and nonempty. Levels
  <math|J\<leqslant\>k\<leqslant\>m\<less\>m+1\<leqslant\>j\<less\>N> are
  ordered from coarse to fine. Require <math|<math-up|ref><around|(|t|)>\<leqslant\>k>
  and <math|<math-up|ref><around|(|d<rsub|i>|)>\<leqslant\>j> for every input
  degree <math|d<rsub|i>>.

  <em|Hypotheses.>

  <\itemize-minus>
    <item><em|Geometry.> Lattice observables
    <math|f<rsub|i>=I<rsub|N,p><around|(|s<rsub|i>,o<rsub|i>|)>> of degrees
    <math|d<rsub|i>> sit at level-<math|j> sites whose
    level-<math|<around|(|m+1|)>> ancestor is the centre cell. They are
    pairwise at least <math|B<rsub|j><rsup|2>> level-<math|j> units apart,
    where <math|B<rsub|j>> is the polymer scale. Require
  </itemize-minus>

  <\equation*>
    <around|(|B<rsub|m+1><rsup|2>+1|)>*a<rsub|m+1>\<leqslant\>a<rsub|J>,<space|2em>\<frak-c\><rsub|k><rsup|2>*a<rsub|k>\<leqslant\>a<rsub|J>,<space|2em>2*<around|(|a<rsub|m>*\<ell\><rsub|t>+\<tau\><rsub|m>|)>\<less\>a<rsub|J>.
  </equation*>

  Here <math|\<frak-c\><rsub|k>> is the supplied cover count,
  <math|\<ell\><rsub|t>> is the output stencil radius plus <math|4>, and
  <math|\<tau\><rsub|m>=30*a<rsub|m>*<around|(|\<jmath\><rsub|m>+5|)>> is the
  cone-tail bound with supplied aperture parameter <math|\<jmath\><rsub|m>>.
  All <math|f<rsub|i>> and all <math|I<rsub|N,p><around|(|z,0|)>> are
  interior to the centre chamber.

  <\itemize-minus>
    <item><em|Weights.> Choose <math|\<alpha\><rsub|i>\<gtr\>0> with
    <math|\<alpha\><rsub|i><space|0.17em><math-up|paid><rsub|j><around|(|s<rsub|i>|)>\<leqslant\>\<zeta\><around|(|d<rsub|i>,j|)>>.
    Here <math|<math-up|paid><rsub|j>> is the insertion-size bound and
    <math|\<zeta\>> the allowed RG weight. Choose
    <math|0\<less\>\<alpha\>\<leqslant\>1> below every halo allowance from
    <math|m> through <math|j-1>. With <math|H=<around|\||I|\|>>, require
  </itemize-minus>

  <\equation*>
    0\<less\>A\<leqslant\>\<alpha\><rsup|H><around*|(|<frac|a<rsub|j>|a<rsub|m+1>>|)><rsup|4*H><around*|(|<frac|\<alpha\>|8>|)><rsup|H<rsup|2>><around*|(|<frac|\<delta\><rsub|j>*\<varphi\><rsub|j>|8>|)><rsup|H>*<big|prod><rsub|i>\<alpha\><rsub|i>.
  </equation*>

  <\itemize-minus>
    <item><em|Output weights.> Let <math|\<delta\><rsub|m>,x<rsub|m>,\<varphi\><rsub|m>,\<zeta\><around|(|t,k|)>>
    and <math|c<rsub|m>> be the supplied RG constants, with <math|c<rsub|m>>
    the column count. Write <math|\<frak-m\><rsub|k,m><around|(|b|)>> for the
    weight obtained by transporting <math|b\<gtr\>0> from <math|k> to
    <math|m>, and <math|A<rsub|k,t>> for the output transport map. Require
    <math|e\<gtr\>0> and
  </itemize-minus>

  <\equation*>
    \<frak-m\><rsub|k,m><around|(|b|)>\<leqslant\><frac|\<delta\><rsub|m>*A|16*x<rsub|m>>,<space|2em>8*<around|(|1+c<rsub|m>|)>*a<rsub|m+1><rsup|t>*<frac|4*x<rsub|m>|A>\<leqslant\>e,
  </equation*>

  <\equation*>
    32*<around|(|1+c<rsub|m>|)>*b<space|0.17em><around|\<\|\|\>|A<rsub|k,t>|\<\|\|\>><frac|e|<around|(|a<rsub|k>/a<rsub|m>|)><rsup|1/8>>\<leqslant\><frac|\<zeta\><around|(|t,k|)>|2>.
  </equation*>

  <em|Conclusion.> There is a lattice label <math|z> of degree <math|t> with
  these properties:

  <\itemize-minus>
    <item>its coefficient size at level <math|m> is at most <math|2*e>;

    <item><math|R=<big|prod><rsub|i>f<rsub|i>-I<rsub|N,p><around|(|z,0|)>> is
    interior to the centre chamber;

    <item><math|<around|\<\|\|\>|R|\<\|\|\>><rsub|\<cal-T\><rsub|J>>\<leqslant\>2<space|0.17em><math-up|stakes><around|(|J,k|)>/b>.
  </itemize-minus>

  Here <math|<math-up|stakes><around|(|J,k|)>=exp
  <around*|(|<around|(|a<rsub|J>/a<rsub|k>|)><rsup|4><math-up|treasury><rsub|k>+5|)>>
  is the supplied per-cell chessboard factor. In Lemma VII.4.g the two coarse
  levels are chosen so that this factor has upper rate <math|0>.

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|Transport.> From <math|N> down to <math|j>, each insertion is
    transported separately, since the points are separated.

    <item><em|Induction from <math|j> down to <math|m+1>.> The carried state
    is a polymer representation of the RG-pushed generating function, with
    the points grouped and the representatives spaced. At each step one of
    two things happens:

    <\itemize-minus>
      <item>if the representatives stay spaced, one block-spin step is taken,
      and the weights lose at most a factor <math|L<rsub|i><rsup|4>> per
      point;

      <item>otherwise a maximal spaced set is kept and the remaining
      representatives are fused into it. Enlarging polymer supports to reach
      a representative costs a bounded factor in halo summability. Each
      fusion pays a subpower toll.
    </itemize-minus>

    <item><em|The weights.> Their surviving product contains
    <math|<around|(|a<rsub|j>/a<rsub|m+1>|)><rsup|4<around|\||I|\|>>*<around|(|\<alpha\>/8|)><rsup|<around|\||I|\|>*<around|(|<around|\||I|\|>-s|)>>>
    when <math|s> groups remain. Its reciprocal contributes to the final
    error bound.

    <item><em|Final step.> At level <math|m+1>, fuse the remaining groups
    into one variable per cell copy. The RG step to level <math|m> splits the
    result into a coefficient <math|Q<rsub|0>> of degree
    <math|\<leqslant\>t>, with its coefficient and remainder bounds, and an
    irrelevant remainder. Transport to the coarse level gives a factor
    <math|<around|(|a<rsub|m>/a<rsub|k>|)><rsup|t+1>> in the remainder bound.

    <item>The constant <math|2> comes from two halves, each
    <math|\<leqslant\><math-up|stakes>/b>, joined by the triangle inequality
    for roots.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|joins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Camp.lean#L54-L94>,
  <hlink|<verbatim|inductionLive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Induct.lean#L93-L117>,
  <hlink|<verbatim|Ballet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Ballet.lean#L35-L76>,
  <hlink|<verbatim|ranch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Replicas/Antique.lean#L33-L46>,
  <hlink|<verbatim|hitB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Grouping/Shift.lean#L54-L93>.
  <em|(statement read; proof read in outline, at the level of the calls in
  <verbatim|Ballet>, <verbatim|inductionLive>, <verbatim|Live.gathers>,
  <verbatim|bequeathed>)>

  <strong|Lemma VII.4.g (replacement rates and the limit label).> Assume
  (RG), fix a nonempty finite token list of total degree <math|w>, and take
  heights <math|0\<leqslant\>b\<less\>a\<less\>c> for the coarse, output and
  insertion levels. Fix a target degree <math|t>, and put
  <math|Z<rprime|'>=w*<space|0.17em>c+4<around|\||I|\|>*<around|(|c-a|)>>.

  <em|Conclusion.> There are rate functions <math|g> and <math|o> with these
  properties:

  <\itemize-minus>
    <item><math|g> has exact rate <math|Z<rprime|'>-t*a>;

    <item><math|o> has upper rate <math|Z<rprime|'>-<around|(|t+<tfrac|1|16>|)>*<around|(|a-b|)>>;

    <item>eventually, the replacement of Lemma VII.4.f has coefficient size
    <math|\<leqslant\>g> and remainder root <math|\<leqslant\>o>, whenever
    its cluster and interior conditions hold.
  </itemize-minus>

  Up to subpower factors, the coefficient size is bounded by
  <math|a<rsub|j><rsup|-w>*<around|(|a<rsub|m>/a<rsub|j>|)><rsup|4<around|\||I|\|>>*a<rsub|m><rsup|t>>,
  and the remainder root by <math|a<rsub|j><rsup|-w>*<around|(|a<rsub|m>/a<rsub|j>|)><rsup|4<around|\||I|\|>>*<around|(|a<rsub|m>/a<rsub|k>|)><rsup|t+1/16>>.
  For each fixed configuration satisfying the cluster and interior
  conditions, bounded coefficient size gives a convergent refinement of the
  extraction in the finite-dimensional label space. Its limit <math|Q>
  retains the remainder bound.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Apply Lemma VII.4.f with all parameters exponential in <math|T>,
    and check its size conditions as inequalities between exponents.

    <item>The loss <math|4<around|\||I|\|>*<around|(|c-a|)>> is the rate of
    <math|<around|(|a<rsub|m+1>/a<rsub|j>|)><rsup|4<around|\||I|\|>>>, the
    reciprocal of the surviving weight factor.

    <item>The binding condition is the transport condition, which needs
    exponent <math|\<less\><around|(|t+<tfrac|1|8>|)>*<around|(|a-b|)>-Z<rprime|'>>.
    The value <math|<tfrac|1|16>> leaves strict slack.

    <item>Subpower factors have rate <math|0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices/Circuit.lean#L64-L87>,
  <hlink|<verbatim|PriceAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices/Circuit.lean#L52-L59>,
  <hlink|<verbatim|price_plot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Remit.lean#L47-L65>,
  <hlink|<verbatim|Survival>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Remit.lean#L42-L44>,
  <hlink|<verbatim|for_plot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Extract.lean#L25-L32>.

  <subsection|4.5 The OPE at grid configurations><label|45-the-ope-at-grid-configurations>

  <strong|Lemma VII.4.h (grid estimates).>

  <em|Setting.> Assume (RG) and fix a coherent prescription and a nonempty
  finite token list <math|a>. Heights satisfy
  <math|0\<less\>\<beta\>\<less\>a<rsub|0>\<less\>x\<less\>d>, for levels
  <math|k,m,j> at heights <math|\<beta\>,a<rsub|0>,d>. The cluster consists
  of level-<math|j> grid points with distinct coordinates on every axis,
  extent of upper rate <math|-x> about the origin and reciprocal separation
  of upper rate <math|x>. Spectator distances from the origin have reciprocal
  upper rate <math|0\<leqslant\>c\<less\>\<beta\>>, and their mutual
  distances have reciprocal upper rate <math|u\<geqslant\>c>. Put
  <math|<math-up|tax>=w<around|(|a|)>*d+4<around|\||I|\|>*<around|(|d-a<rsub|0>|)>>.

  <em|Conclusions.>

  <\itemize-minus>
    <item>each fixed raw coefficient <math|\<lambda\><rsub|i><around|(|a;<text|cluster>,0|)>>
    has upper rate <math|<math-up|tax>-<around|(|deg i|)>*a<rsub|0>>;

    <item>for every <math|N\<in\>\<bbb-N\>>, the correlation with the
    spectators minus <math|<big|sum><rsub|deg
    i\<leqslant\>N>\<lambda\><rsub|i>*<space|0.17em>S<rsup|s><around|(|u<rsub|i>,0;<text|spect.>|)>>
    has upper rate <math|<math-up|tax>-<around|(|N+1|)>*<around|(|a<rsub|0>-c|)>+w<around|(|b|)>*u>,
    uniformly in the state <math|s>.
  </itemize-minus>

  <em|Proof sketch.> For the remainder choose <math|q\<geqslant\>N> with
  <math|<around|(|N+1|)>*a<rsub|0>\<leqslant\><around|(|q+<tfrac|1|16>|)>*<around|(|a<rsub|0>-\<beta\>|)>>;
  for a coefficient choose <math|q\<geqslant\>deg i> with the analogous
  inequality. Let <math|Q> be the degree-<math|q> label of Lemma VII.4.g.
  Then:

  <\itemize-minus>
    <item>(1) by Lemma VII.4.e(ii), replacing the cluster by <math|Q> at
    <math|0> costs rate <math|<math-up|tax>-<around|(|q+<tfrac|1|16>|)>*<around|(|a<rsub|0>-\<beta\>|)>+w<around|(|b|)>*u>
    in <math|\<cal-A\>>;

    <item>(2) the same with the probes in the role of spectators:
    <math|<around|\||\<lambda\><rsub|i><around|(|<text|cluster>|)>-\<lambda\><rsub|i><around|(|Q|)>|\|>>
    has the rate of the remainder root;

    <item>(3) for <math|deg i\<leqslant\>q>, the coefficient of <math|Q> is
    bounded by its coefficient size times
    <math|a<rsub|m><rsup|-<around|(|q-deg i|)>>>, up to subpower factors, and
    hence has rate <math|<math-up|tax>-<around|(|deg i|)>*a<rsub|0>>;

    <item>(4) exact reconstruction: <math|S<around|(|Q,0;\<cdot\>|)>=<big|sum><rsub|deg
    i\<leqslant\>q>\<lambda\><rsub|i><around|(|Q|)>*<space|0.17em>S<around|(|u<rsub|i>,0;\<cdot\>|)>>;

    <item>(5) the modes of degree in <math|<around|(|N,q|]>> contribute at
    most rate <math|<math-up|tax>-<around|(|N+1|)>*<around|(|a<rsub|0>-c|)>+w<around|(|b|)>*u>,
    using the upper rate <math|<around|(|deg i|)>*c+w<around|(|b|)>*u> for
    <math|S<rsup|s><around|(|u<rsub|i>,0;<text|spect.>|)>> from Lemma
    VII.4.e(iii).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|grid_coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Ladder.lean#L34-L42>,
  <hlink|<verbatim|grid_remainder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Ladder.lean#L53-L73>,
  <hlink|<verbatim|see_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Extract.lean#L64-L66>,
  <hlink|<verbatim|det_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Read.lean#L68-L80>,
  <hlink|<verbatim|at_grade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Read.lean#L37-L52>,
  <hlink|<verbatim|sumAll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Observe.lean#L27-L31>.

  <subsection|4.6 Arbitrary configurations and
  exponents><label|46-arbitrary-configurations-and-exponents>

  <strong|Lemma VII.4.i (derivative bootstrap).> Fix a finite index set
  <math|I> and levels <math|j> of height <math|d\<gtr\>x<rsub|0>>. A
  configuration path <math|x<around|(|T|)>> lies in the
  height-<math|x<rsub|0>> corridor if its extent about the origin has upper
  rate <math|-x<rsub|0>> and its reciprocal separation has upper rate
  <math|x<rsub|0>>. Let <math|h<rsub|T><around|(|v;x|)>> be functions for
  every token list <math|v> on <math|I>. Suppose the following hold for every
  such list and every configuration path in this corridor, with constants
  <math|c<rsub|0>,d<rsub|0>> independent of the list:

  <\itemize-minus>
    <item>(rough) <math|h<rsub|T><around|(|v;x<around|(|T|)>|)>> has upper
    rate <math|x<rsub|0>*w<around|(|v|)>+c<rsub|0>>;

    <item>(grid) on level-<math|j> grid paths with distinct coordinates on
    every axis, <math|h<rsub|T><around|(|v;x<around|(|T|)>|)>> has upper rate
    <math|d*w<around|(|v|)>+d<rsub|0>>;

    <item>(derivative) eventually <math|h<rsub|T><around|(|v;\<cdot\>|)>> is
    differentiable at <math|x<around|(|T|)>>, and its derivative in each
    point and coordinate equals <math|h<rsub|T>> with that token replaced by
    its derivative token, of degree one higher.
  </itemize-minus>

  Then <math|h> has rate <math|d*<space|0.17em>w<around|(|v|)>+d<rsub|0>> on
  the whole corridor.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Use induction downward on <math|w<around|(|v|)>>.

    <item>For <math|w<around|(|v|)>> large,
    <math|<around|(|d-x<rsub|0>|)>*w<around|(|v|)>\<geqslant\>c<rsub|0>-d<rsub|0>>,
    so the rough bound suffices.

    <item>Otherwise choose a grid path whose distance from
    <math|x<around|(|T|)>> has upper rate <math|-d>. All intervening points
    stay in the same corridor. The mean value theorem and the induction bound
    for the derivative give rate <math|-d+d*<around|(|w<around|(|v|)>+1|)>+d<rsub|0>=d*w<around|(|v|)>+d<rsub|0>>
    for the change.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|interpolated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate/Corridor.lean#L34-L47>,
  <hlink|<verbatim|cloud_jump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate/Leap.lean#L39-L49>,
  <hlink|<verbatim|leap_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate/Leap.lean#L20-L27>.
  <em|(proof read for <verbatim|interpolated>)>

  <strong|Lemma VII.4.j (raw coefficient and remainder rates).>

  <em|Setting.> Assume (RG) and fix a coherent prescription and finite token
  lists <math|a,b>. Along <math|T\<to\>\<infty\>>, the cluster has extent of
  upper rate <math|-x> around <math|o> and reciprocal separation of upper
  rate <math|x\<gtr\>0>. Spectator distances from <math|o> have reciprocal
  upper rate <math|0\<leqslant\>y\<less\>x>, and their mutual distances have
  reciprocal upper rate <math|u\<geqslant\>y>.

  <em|Conclusions.>

  <\itemize-minus>
    <item>For each fixed mode <math|i>, <math|\<lambda\><rsub|i><around|(|a;\<cdot\>,o|)>>
    has upper rate <math|<around|(|w<around|(|a|)>-deg i|)>*x>.

    <item>For every <math|N>, the remainder of the raw truncation has upper
    rate <math|w<around|(|a|)>*x-<around|(|N+1|)>*<around|(|x-y|)>+w<around|(|b|)>*u>,
    uniformly in states and in <math|\<cal-A\>>.

    <item>In powers, with <math|r=e<rsup|-x*T>>, spectator distance
    <math|\<rho\>> and spectator separation <math|\<rho\><rprime|'>>: the
    remainder is <math|\<lesssim\>r<rsup|-w<around|(|a|)>>*<around|(|r/\<rho\>|)><rsup|N+1>*\<rho\><rprime|'><rsup|-w<around|(|b|)>>>
    up to <math|\<varepsilon\>>-losses.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Apply Lemma VII.4.i to Lemma VII.4.h, with grid height <math|d> and
    auxiliary height <math|a<rsub|0>>. The rough bound is Lemma VII.4.e(iii).

    <item>This gives the bounds of Lemma VII.4.h with
    <math|<math-up|tax>=w*d+4<around|\||I|\|>*<around|(|d-a<rsub|0>|)>>. Let
    <math|a<rsub|0>*\<uparrow\>*x> and <math|d*\<downarrow\>*x>; continuity
    of the exponents and availability of all intermediate heights give the
    claimed rates. Empty clusters are handled by the exact unit identities.

    <item>Translation invariance moves the centre to <math|o>.

    <item>The bound in <math|\<cal-A\>> follows from the bounds in every
    state by the norm characterization in the conventions.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|coefficient_rough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Corridor.lean#L22-L25>,
  <hlink|<verbatim|common_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Corridor.lean#L37-L41>,
  <hlink|<verbatim|early_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Corridor.lean#L68-L74>,
  <hlink|<verbatim|group_coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Travel.lean#L24-L30>,
  <hlink|<verbatim|group_remainder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Travel.lean#L31-L41>,
  <hlink|<verbatim|ground_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L49-L52>,
  <hlink|<verbatim|groundError>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L26-L27>,
  <hlink|<verbatim|arrangement_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L68-L71>.

  <subsection|4.7 The Reader and the separated
  OPE><label|47-the-reader-and-the-separated-ope>

  <strong|Lemma VII.4.k (transfer to the Reader).> In the regime of Lemma
  VII.4.j:

  <\itemize-minus>
    <item>the fresh vector of degree <math|n> has rate
    <math|<around|(|w<around|(|a|)>-n|)>*x>, and hence so does each
    <math|c<rsub|n,\<kappa\>>>;

    <item>the error element of VII.4.1 has rate
    <math|w<around|(|a|)>*x-<around|(|D+1|)>*<around|(|x-y|)>+w<around|(|b|)>*u>
    in <math|\<cal-A\>>.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Compare the cluster with its raw truncation at a horizon <math|H>,
    placed at <math|o>. Inside every rotated probe correlation, the
    difference has rate <math|<around|(|w-H-1|)>*x> by Lemma VII.4.j.

    <item>The raw estimate holds uniformly over all rotations, including the
    conjugate input reading. Integrating over normalized Haar measure and
    applying the fixed linear projections preserve its upper rate. Thus the
    fresh vector differs from <math|\<tau\><rsub|n,H>> of the raw vector by
    upper rate <math|<around|(|w-H-1|)>*x>.

    <item>In <math|\<tau\><rsub|n,n>> of the raw vector, only modes of degree
    <math|n> survive, with rate <math|<around|(|w-n|)>*x>.

    <item>For the remainder, write the error as the raw error plus
    <math|<big|sum><rsub|j\<leqslant\>D>> (the correlation of
    <math|\<tau\><rsub|j,D><around|(|<text|raw>|)>-<text|fresh><rsub|j>>),
    and bound each term.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|fresh_bridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Fee.lean#L45-L50>,
  <hlink|<verbatim|fresh_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Gain.lean#L21-L30>,
  <hlink|<verbatim|balance_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Gain.lean#L57-L72>,
  <hlink|<verbatim|coefficient_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L17-L22>,
  <hlink|<verbatim|algebra_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L30-L35>.
  <em|(proof read; <verbatim|fit_old>, <verbatim|discrepancy_rate_old>
  statement only)>

  <strong|Lemma VII.4.l (proof of VII.4.1).> For (O1) and (O2), apply Lemma
  VII.4.a with <math|T=-log r>.

  <\itemize-minus>
    <item>An <math|<around|(|r,M,\<eta\>|)>>-cluster sits at height
    <math|x=1>.

    <item>Fixed clearance <math|c> gives <math|y=u=0>.

    <item>So Lemma VII.4.k gives rates <math|w-n> and
    <math|w-<around|(|D+1|)>>. These are the powers
    <math|r<rsup|n-w-\<varepsilon\>>> and
    <math|r<rsup|D+1-w-\<varepsilon\>>>, uniformly in configurations and
    states.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|coefficient_separated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L64-L69>,
  <hlink|<verbatim|quantitative_separated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L71-L85>,
  <hlink|<verbatim|produce>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L67-L68>;
  assembly in <hlink|<verbatim|R2IGoals.fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>.

  <subsection|4.8 Integrated and nested forms><label|48-integrated-and-nested-forms>

  <strong|Lemma VII.4.m (integrated forms; VII.4.2).>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>For small <math|r>, every admissible configuration lies in an open
    set on which the correlations and the coefficients are continuous. There,
    the raw correlation is bounded by <math|r<rsup|-w-\<varepsilon\>>> and
    the remainder by <math|r<rsup|D+1-w-\<varepsilon\>>>, in every state.

    <item>So the integrands are measurable and dominated by
    <math|<around|\||w|\|>> times a constant, and the integrals are bounded
    by <math|B> times the pointwise bound.

    <item>For any probability measure on <math|X>, continuity of each fixed
    separated correlation in <math|\<xi\>> permits termwise integration of
    the finite truncation; the same pointwise bound then gives the mixture
    estimate.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|estimates_weighted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L98-L108>,
  <hlink|<verbatim|probability_mixtures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L52-L58>.

  <strong|Lemma VII.4.n (nested OPE; VII.4.3).>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Along a sequence, put <math|T=<big|sum><rsub|p>log
    <around|(|1/s<rsub|p>|)>>, summing over the inner nodes. The normalized
    logarithms lie in a compact simplex, so a refinement gives heights
    <math|a<rsub|p>\<geqslant\>0> with <math|<big|sum><rsub|p>a<rsub|p>=1>.
    This also covers scales shrinking faster than every power of the root
    radius.

    <item>Then induct over the tree.

    <item>At a fork, children whose rate equals the parent's are merged into
    the parent cluster.

    <item>Each other child is replaced by its own expansion at an auxiliary
    horizon high enough that its remainder is below any prescribed rate.

    <item>The replacements are telescoped in a fixed triangular order, so
    that each switch sees only outputs already fixed.

    <item>Summing the node costs gives (a). The composition error gains the
    smallest value of <math|<around|(|D<rsub|p>+1|)>*<around|(|a<rsub|p>-a<rsub|<math-up|parent><around|(|p|)>>|)>>
    over non-root inner nodes. The extra <math|\<varepsilon\>>-loss converts
    this rate estimate into (b). If there are no such nodes, the composed
    coefficient equals the direct coefficient exactly.

    <item>(c) and (d) follow as in Lemmas VII.4.k\Um.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Fusion.tariff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Fusion.lean#L97-L104>,
  <hlink|<verbatim|Quantified.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean>
  (<hlink|<verbatim|Limits.coe_power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean#L43-L51>,
  <hlink|<verbatim|Limits.tested_power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean#L54-L71>),
  <hlink|<verbatim|Tree.Tapered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Geometry.lean#L21-L23>,
  <hlink|<verbatim|Tree.Relative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Grove.lean#L99-L103>.
  <em|(proof read for <verbatim|coe_power>, <verbatim|tested_power>,
  <verbatim|tariff>; <verbatim|supplies> proof read; <verbatim|sequential>
  and <verbatim|high> statement only)>

  <subsection|4.9 The slab bound of V.1><label|49-the-slab-bound-of-v1>

  <strong|Lemma VII.4.o (point and train bounds).> Take levels
  <math|m\<leqslant\>k\<leqslant\>l\<leqslant\>b>.

  <\itemize-minus>
    <item>(a) <em|Point bound.> Assume:

    <\itemize-minus>
      <item>all points are separated; main\Umain and main\Uexterior
      sup-distances exceed <math|a<rsub|m>>, and exterior\Uexterior
      sup-distances exceed <math|a<rsub|l>>;

      <item>main points are congruent mod <math|a<rsub|m>> to one of <math|P>
      fixed points;

      <item><math|P\<cdot\>10*a<rsub|k>\<less\>a<rsub|m>> and
      <math|\<sharp\><around|(|<text|ext>|)>\<cdot\>6*a<rsub|b>\<less\>a<rsub|l>>;

      <item><math|A,B\<geqslant\>0>; main tokens have one-field bounds
      <math|A> at level <math|k> for all signed and reflected variants, and
      exterior tokens have bounds <math|B> at level <math|b>, eventually
      along the extraction;

      <item>the cutoff family has the construction properties, <math|S> is
      smooth on separated configurations, and generic point limits hold along
      this extraction.
    </itemize-minus>

    Then <math|<around|\||S<around|(|x;v|)>|\|>\<leqslant\>A<rsup|\<sharp\><math-up|main>>*B<rsup|\<sharp\><math-up|ext>>>.

    <item>(b) <em|Train bound.> Assume the Euclidean hierarchy and the same
    cutoff and point-limit hypotheses. Let <math|w> be <math|r>-buffered in a
    slab of width <math|d\<in\>a<rsub|m>*\<bbb-N\>>, with
    <math|a<rsub|m>\<less\>r>. Let <math|v> be a word supported at positive
    times with buffer larger than <math|a<rsub|l>>. Require
    <math|2<around|\||w|\|>\<cdot\>10*a<rsub|k>\<less\>a<rsub|m>> and
    <math|2<around|\||v|\|>\<cdot\>6*a<rsub|b>\<less\>a<rsub|l>>, and the
    one-field bounds in (a). Then for every <math|q\<in\>\<bbb-N\>> the Gram
    pairing satisfies
  </itemize-minus>

  <\equation*>
    <around|\||S*<around|(|\<Theta\>*v<rsub|q>\<cdot\>v<rsub|q>|)>|\|>\<leqslant\>B<rsup|2<around|\||v|\|>>*A<rsup|4*q<around|\||w|\|>>.
  </equation*>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>(a) The two-scale chessboard estimate at the cutoff: main factors
    are in separated coarse cells, and exterior groups in a finer tiling,
    with no restriction on how many exterior factors share a coarse cell. A
    translation of less than one exterior cell fits all the margins. Point
    limits at generic configurations and continuity give the continuum bound.

    <item>(b) The Gram pairing is the correlation of
    <math|4*q<around|\||w|\|>> main and <math|2<around|\||v|\|>> exterior
    insertions at separated points. Apply (a).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|cutoff_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Roots.lean#L125-L179>,
  <hlink|<verbatim|point_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Passage.lean#L187-L229>,
  <hlink|<verbatim|Gapped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Passage.lean#L84-L87>,
  <hlink|<verbatim|travel_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Trains.lean#L273-L304>.

  <strong|Lemma VII.4.p (uniform constants; proof of VII.4.5).>

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|One-field bounds.> For degrees <math|\<leqslant\>D> and norms
    <math|\<leqslant\>R> there are <math|F> and <math|J\<gtr\>0> such that,
    for <math|k\<geqslant\>F>, every such token, together with all its signed
    and reflected variants, has one-field bound
    <math|J*<space|0.17em>a<rsub|k><rsup|-<around|(|D+1|)>>>.

    <item><em|Choice of level.> For <math|r\<in\><around|(|0,1|]>>, take the
    first <math|m\<geqslant\>F> with <math|a<rsub|m>\<less\>r/32>. Gentleness
    gives a uniform lower bound <math|a<rsub|m>\<geqslant\>c<rsub|1>*r<rsup|2>>.
    A second level choice gives <math|k\<geqslant\>m> with
    <math|2<around|\||w|\|>\<cdot\>10*a<rsub|k>\<less\>a<rsub|m>> and
    <math|a<rsub|k>\<geqslant\>c*<around|(|r/<around|\||w|\|>|)><rsup|4>>.
    Hence <math|A<rsup|<around|\||w|\|>>\<leqslant\>\<rho\>=C<rsub|0><rsup|<around|\||w|\|>>*<around|(|<around|\||w|\|>/r|)><rsup|4*<around|(|D+1|)><around|\||w|\|>>>
    with <math|C<rsub|0>=J*c<rsup|-<around|(|D+1|)>>>.

    <item><em|Exterior.> For each exterior word <math|v>, choose its own
    levels and bound <math|X<rsub|v>>. Lemma VII.4.o(b) then gives the bound
    of VII.4.5 with <math|B<rsub|v>=X<rsub|v><rsup|2<around|\||v|\|>>>.

    <item><em|Width.> A sub-width <math|s\<leqslant\>d> covered at level
    <math|m> is chosen before the exterior.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|rates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L55-L77>,
  <hlink|<verbatim|replicas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L119-L151>,
  <hlink|<verbatim|seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L154-L160>.
  In V.1: <hlink|<verbatim|Drive.against>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L20-L60>,
  <hlink|<verbatim|producer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L116-L123>.

  <subsection|4.10 Contact extensions><label|410-contact-extensions>

  <strong|Lemma VII.4.q (Taylor deviation on shells).> Let <math|E> be a
  finite-dimensional Euclidean space, <math|K\<subset\>E> a subspace,
  <math|m,n\<in\>\<bbb-N\>>, <math|B\<geqslant\>1>, and <math|U> a compact
  subset of <math|<around|{|<tfrac|1|2>\<leqslant\><around|\||x<rsub|K>|\|>\<leqslant\>2|}>>.
  Write <math|D<rsub|a>*x=a*x<rsub|K>+x<rsub|K<rsup|\<perp\>>>>. There is
  <math|X\<geqslant\>1>, depending only on <math|E,K,U,m,n,B>, with the
  following property. Let <math|a,r,s\<gtr\>0> and let <math|A:E\<to\>E> be a
  linear isomorphism satisfying <math|<around|(|A*x|)><rsub|K>=r*x<rsub|K>>
  for every <math|x> and <math|A*x=r*x> for <math|x\<in\>K>. Let <math|f> be
  smooth and assume <math|r*a/s\<leqslant\>B>, <math|r\<leqslant\>B*s>, and

  <\equation*>
    <math-up|supp><around|(|f\<circ\>A|)>\<subset\><around|{|x:<around|\||x<rsub|K>|\|>\<leqslant\>B/2|}>,<space|2em><around|\<\|\|\>|f\<circ\>A|\<\|\|\>><rsub|C<rsup|n+m+1>>\<leqslant\>H.
  </equation*>

  Then the cut-off normal Taylor operator satisfies

  <\equation*>
    <mid|\|><around|(|f-T<rsup|K><rsub|m,s>*f|)>\<circ\>A\<circ\>D<rsub|a><mid|\|><rsub|C<rsup|n><around|(|U|)>>\<leqslant\>X*H<choice|<tformat|<table|<row|<cell|a<rsup|m+1>,>|<cell|a\<leqslant\>1,>>|<row|<cell|a<rsup|m>,>|<cell|a\<gtr\>1.>>>>>
  </equation*>

  <em|Proof sketch.> Taylor's formula with remainder, together with jet
  bounds for the smooth cut-off.

  <em|Lean:> <hlink|<verbatim|compact_deviation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/ShellTest.lean#L43-L72>.

  <strong|Lemma VII.4.r (the subtraction formula).>

  <em|Notation.>

  <\itemize-minus>
    <item><math|\<varphi\><rsub|i>> is the field <math|a<rsub|i>> at
    <math|x<rsub|i>>.

    <item>For a group <math|h\<subset\><around|{|1,\<ldots\>,k|}>>,
    <math|<around|\||h|\|>\<geqslant\>2>: <math|x<rsup|\<perp\>><rsub|h>> is
    the component of <math|x> normal to the <math|h>-diagonal,
    <math|<wide|x|\<bar\>><rsub|h>> the centroid, and <math|L<rsub|h>=max
    <around*|(|0,<big|sum><rsub|i\<in\>h>d<rsub|i>+1-4*<around|(|<around|\||h|\|>-1|)>|)>>.

    <item><math|T<rsup|h><rsub|m>*f<around|(|x|)>=\<chi\>*<around|(|<around|\||x<rsub|h><rsup|\<perp\>>|\|><rsup|2>/s<rsub|0><rsup|2>|)>*<big|sum><rsub|l\<leqslant\>m><frac|1|l!>*D<rsup|l>*f*<around|(|x-x<rsup|\<perp\>><rsub|h>|)>*<around|[|x<rsup|\<perp\>><rsub|h>,\<ldots\>,x<rsup|\<perp\>><rsub|h>|]>>,
    with <math|\<chi\>=1> near <math|0> and
    <math|\<chi\>*<around|(|<around|\||x<rsup|\<perp\>><rsub|h>|\|><rsup|2>/s<rsub|0><rsup|2>|)>=0>
    for <math|<around|\||x<rsup|\<perp\>><rsub|h>|\|>\<geqslant\>2*s<rsub|0>>.

    <item><math|R<rsup|h><rsub|w>> replaces a field polynomial by the
    weight-<math|w> component of its OPE projection, placed at
    <math|<wide|x|\<bar\>><rsub|h>>. The device detectors use finite probe
    sets, a linear decoder, an <math|O<around|(|4|)>>-average and
    simultaneous input and output conjugation, followed by the device's
    graded splitting.
  </itemize-minus>

  <em|Definition.> Set <math|C<rsub|<around|{|i|}>>=\<varphi\><rsub|i>\<otimes\>1>
  and, for <math|<around|\||h|\|>\<geqslant\>2>,

  <\equation*>
    C<rsub|h>=-<big|sum><rsub|w\<less\>L<rsub|h>>R<rsup|h><rsub|w><around|(|\<Pi\><rsub|h>|)>\<cdot\>T<rsup|h><rsub|L<rsub|h>-1-w>,<space|2em>\<Pi\><rsub|h>=<big|sum><rsub|\<pi\>><big|prod><rsub|\<beta\>\<in\>\<pi\>>C<rsub|\<beta\>>,<space|2em><math-up|full><rsub|h>=\<Pi\><rsub|h>+C<rsub|h>,
  </equation*>

  where <math|\<pi\>> runs over partitions of <math|h> into at least two
  blocks. For a singleton the full expression is
  <math|\<varphi\><rsub|i>\<otimes\>1>; for the empty group it is the unit.
  The kernel of <math|\<cal-D\><rsup|s><rsub|a>> at <math|x> is the
  <math|s>-expectation of <math|<math-up|full><rsub|<around|{|1..*k|}>>>
  applied to <math|f>. Expanding the recursion gives a Zimmermann-type forest
  sum. The child expressions are constructed recursively first. On the test
  function, the parent Taylor operator acts first, followed by the operators
  already present in the child expression; nested operators need not commute.

  <em|Per-group form.> <math|<around*|[|\<Pi\><rsub|h>-<big|sum><rsub|w\<less\>L<rsub|h>>R<rsup|h><rsub|w>*\<Pi\><rsub|h>|]>*f+<big|sum><rsub|w\<less\>L<rsub|h>>R<rsup|h><rsub|w><around|(|\<Pi\><rsub|h>|)>*<space|0.17em><around|(|1-T<rsup|h><rsub|L<rsub|h>-1-w>|)>*f>.

  <\itemize-minus>
    <item>Put <math|d<rsub|h>=<big|sum><rsub|i\<in\>h>d<rsub|i>> and
    <math|q<rsub|h>=4*<around|(|<around|\||h|\|>-1|)>>. After retaining
    weights <math|w\<less\>L<rsub|h>>, the remainder has radial order
    <math|O<around|(|<around|\||x<rsup|\<perp\>><rsub|h>|\|><rsup|L<rsub|h>-d<rsub|h>-\<varepsilon\>>|)>>,
    with <math|L<rsub|h>-d<rsub|h>\<geqslant\>1-q<rsub|h>>.

    <item>A retained weight-<math|w> term has coefficient order
    <math|O<around|(|<around|\||x<rsup|\<perp\>><rsub|h>|\|><rsup|w-d<rsub|h>-\<varepsilon\>>|)>>
    and test deviation <math|O<around|(|<around|\||x<rsup|\<perp\>><rsub|h>|\|><rsup|L<rsub|h>-w>|)>>.

    <item>For <math|0\<less\>\<varepsilon\>\<less\>1> these radial powers are
    integrable in <math|q<rsub|h>> normal dimensions. Angular sectors
    containing partial collisions require the subcluster induction of Lemma
    VII.4.s.

    <item>Each weight-<math|w> coefficient has scaling degree at most
    <math|d<rsub|h>-w>, and receives its own Taylor subtraction.

    <item>If <math|<big|sum><rsub|i\<in\>h>d<rsub|i>+1\<leqslant\>4*<around|(|<around|\||h|\|>-1|)>>,
    nothing is subtracted.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|takeRight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Score/Tape.lean#L56-L60>,
  <hlink|<verbatim|Score/Formula.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Score/Formula.lean>,
  <hlink|<verbatim|Normal.taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/Subtractions.lean#L68>,
  <hlink|<verbatim|majorKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L59>,
  <hlink|<verbatim|Devices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Tomography.lean#L17-L26>,
  <hlink|<verbatim|Devices.clearance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Coherent.lean#L137-L139>.
  <em|(definitions read)>

  <strong|Lemma VII.4.s (absolute bound; summation and scaling).> Fix the
  devices, labels, state and subtraction length as in VII.4.4. For every
  compact <math|U\<subset\><around|(|\<bbb-R\><rsup|4>|)><rsup|k>> there is
  <math|C\<gtr\>0> such that

  <\equation*>
    <big|int><around|\||<around|\<langle\>|<math-up|full>|\<rangle\>><rsub|s><around|(|f;x|)>|\|>*<space|0.17em>d*x\<leqslant\>C<space|0.17em><around|\<\|\|\>|f|\<\|\|\>><rsub|C<rsup|<around|(|2+w<around|(|a|)>|)>*k>><space|1em><text|whenever
    ><math-up|supp>f\<subset\>U.
  </equation*>

  The summation formulas and scaling bounds hold under the stage-family
  hypotheses of VII.4.4(d)\U(e).

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|Patching.> Cover <math|U> by finitely many patches. On each
    patch the relevant partition is the set of coincidence classes of its
    centre. A smooth partition of unity and the Leibniz rule combine the
    patch bounds.

    <item><em|Induction.> On a patch, use strong induction on
    <math|<around|\||h|\|>> minus the number of blocks.

    <\itemize-minus>
      <item>Base case: the separated correlation times <math|f>, bounded
      pointwise.

      <item>Inductive step: split into the remainder arm and the
      weight-<math|w> arms. Cut into dyadic normal shells
      <math|<around|\||x<rsup|\<perp\>><rsub|h>|\|>\<sim\>2<rsup|-n>> and
      angular fans. Rescale each sector to a finer partition, and apply the
      induction hypothesis.
    </itemize-minus>

    <item><em|OPE input.> The raw coefficient rate and the remainder rate in
    <math|\<cal-A\>> from Lemma VII.4.j.

    <item><em|Shell exponent.> Including normal volume, the effective
    exponent is <math|4*<around|(|<around|\||h|\|>-1|)>+L<rsub|h>-d<rsub|h>\<geqslant\>1>:

    <\itemize-minus>
      <item>the remainder gains <math|L<rsub|h>>;

      <item>a weight-<math|w> arm gains <math|w> from the coefficient and
      <math|L<rsub|h>-w> from Lemma VII.4.q.
    </itemize-minus>

    <item><em|Summing.> Choose <math|\<gamma\>\<gtr\>0> with
    <math|<around|(|3<rsup|<around|\||g|\|>-<around|\||Q|\|>>+1|)>*\<gamma\>\<leqslant\>1>,
    where <math|<around|\||Q|\|>> is the number of blocks. The accumulated
    exponent losses leave a factor <math|2<rsup|-n*\<gamma\>>> in the shell
    sum. The corresponding geometric series converges.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|glues_total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Skies.lean#L59-L79>,
  <hlink|<verbatim|global_charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L62-L63>,
  <hlink|<verbatim|commissions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L44-L45>,
  <hlink|<verbatim|Claim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Scaling.lean#L61>,
  <hlink|<verbatim|Annulus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Puncture.lean#L53>.
  <em|(proof read in outline)>

  <strong|Lemma VII.4.t (distribution and restriction).>

  <\itemize-minus>
    <item>A kernel with the bound of Lemma VII.4.s defines a continuous
    linear functional on <math|C<rsub|c><rsup|\<infty\>>>, of order
    <math|\<leqslant\><around|(|2+w<around|(|a|)>|)>*k>.

    <item>With the full group, <math|P=<math-up|id>>, <math|o=0>,
    <math|B<rsub|0>=min <around|(|1,<math-up|cl><around|(|w<around|(|a|)>|)>|)>>
    and <math|s<rsub|0>=B<rsub|0>/4>, the hypotheses of Lemma VII.4.s hold on
    all of <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|k>>.

    <item>If <math|<math-up|supp>f\<subset\><math-up|Conf><rsub|k>>, the
    Taylor terms evaluate jets of <math|f> on diagonals, where <math|f>
    vanishes with all its derivatives. So the kernel equals
    <math|f<around|(|x|)>*S<rsup|s><around|(|a;x|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L30-L31>,
  <hlink|<verbatim|Transport.harmonic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Blend.lean#L70-L71>,
  <hlink|<verbatim|contactDistribution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49>.

  <strong|Lemma VII.4.u (real bases and thresholds).>

  <\itemize-minus>
    <item>The device strata have bases fixed by the conjugation, and the
    basis in degree 0 contains the unit. Proof: real and imaginary parts
    span, and a real independent set extends to a basis.

    <item>Given <math|f<rsub|n>\<gtr\>0>, a valid choice of thresholds is
  </itemize-minus>

  <\equation*>
    g<rsub|n>=min <around*|(|f<rsub|n>,2<rsup|-n>,<math-up|cl><around|(|n|)>/<around|(|2*<around|(|n+1|)>|)>|)>,<space|2em>t<rsub|0>=g<rsub|0>,<space|2em>t<rsub|n+1>=min
    <around|(|t<rsub|n>/8,g<rsub|n+1>|)>.
  </equation*>

  The thresholds define smooth scalar cutoffs. At a length
  <math|0\<less\>\<ell\>\<leqslant\>t<rsub|n>>, the cutoff-weighted
  projection agrees with the original projection through degree <math|n>.
  These cutoffs do not enter <math|\<cal-D\><rsup|s><rsub|a>>.

  <em|Lean:> <hlink|<verbatim|real_basis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L52-L61>,
  <hlink|<verbatim|installs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L30-L36>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  <em|Routine but long.>

  <\itemize-minus>
    <item>The rate bookkeeping (Lemmas VII.4.a, j).

    <item>The <math|O<around|(|4|)>>-covariant Reader (Lemmas VII.4.c, k).

    <item>The tree combinatorics (Lemma VII.4.n).

    <item>The geometry of normal shells, angular sectors and compact patches.
  </itemize-minus>

  <em|Main estimates.>

  <\enumerate>
    <item><strong|The OPE comes from the RG.> The basic estimate (Lemmas
    VII.4.f\Ug) is a lattice statement: a cluster of renormalized observables
    equals one observable of degree <math|t> plus a remainder that gains
    <math|<around|(|a<rsub|m>/a<rsub|k>|)><rsup|t+1/16>>, at a cost
    <math|<around|(|a<rsub|m>/a<rsub|j>|)><rsup|4<around|\||I|\|>>>. The
    margin <math|<tfrac|1|16>> is set by the transport gain
    <math|<around|(|a<rsub|k>/a<rsub|m>|)><rsup|1/8>> of Part III's RG, not
    by the contraction <math|<around|(|a<rsub|m>/a<rsub|k>|)><rsup|t+1>> of
    the irrelevant part. This is where Part III enters.

    <item><strong|Uniformity in states and spectators comes from the
    C*-norm.> The norm of <math|\<cal-A\>> is computed by chessboard bounds
    on decks of translated copies, together with Gelfand and the full support
    of <math|\<nu\>> (Lemmas VII.4.d\Ue). The spectators then cost only their
    own one-field bounds, at their own scale, and the bound holds in every
    phase at once.

    <item><strong|The derivative bootstrap> (Lemma VII.4.i). Each derivative
    costs one power of the fine spacing, so a first-order comparison with the
    grid gains nothing. The induction therefore starts from high degree,
    where the crude bound is already strong enough.

    <item><strong|One coefficient system for every truncation degree.> It
    comes from a coherent prescription (VII.4.6) and the strata of the
    Reader.
  </enumerate>

  <em|Unusual, weaker or stronger than expected.>

  <\itemize-minus>
    <item><em|Exponents.> The estimates have an arbitrary
    <math|\<varepsilon\>>-loss and do not determine logarithmic corrections.
    The degree <math|w> is the sum of the label degrees; the statement does
    not identify it with a scaling dimension.

    <item><em|Coefficients.> They depend on the prescription and the Reader,
    and nothing relates them to perturbation theory (VII.5, VII.6).

    <item><em|Spectator distance.> The remainder bound holds with
    power-separated spectators, <math|<around|(|r/\<rho\>|)><rsup|N+1>>. The
    main theorem uses only a fixed clearance.

    <item><em|Contacts.> The contact extension is an existence statement. Its
    order <math|<around|(|2+w<around|(|a|)>|)>*k> is crude. Its OPE
    projection uses the device detectors, with the same prescription as the
    Reader but separate probe sets.

    <item><em|Interface to Part III.> The cluster replacement requires the
    numerical and geometric hypotheses in Lemma VII.4.f.
  </itemize-minus>

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|upper and exact
  exponential rates>|<cell|<hlink|<verbatim|RateLE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rate.lean#L23-L24>,
  <verbatim|RateIs>>|<cell|<math|f\<preceq\>e<rsup|\<kappa\>*T>>; <math|log
  f/T\<to\>\<kappa\>> with <math|f\<gtr\>0> eventually>>|<row|<cell|height of
  a level sequence>|<cell|<hlink|<verbatim|Height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Height.lean#L18-L20>>|<cell|<math|m\<to\>\<infty\>>,
  <math|log <around|(|1/a<rsub|m>|)>/T\<to\>c>>>|<row|<cell|cluster,
  clearance>|<cell|<hlink|<verbatim|WithinRoom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L24-L26>,
  <hlink|<verbatim|ClearOf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L28-L30>>|<cell|<math|<around|(|r,M,\<eta\>|)>>-cluster;
  <math|c>-clear>>|<row|<cell|total degree>|<cell|<verbatim|weight>,
  <verbatim|sigma>>|<cell|<math|w<around|(|a|)>>>>|<row|<cell|needles,
  sheets, tests>|<cell|<hlink|<verbatim|Prescription>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L44-L46>>|<cell|<math|u<rsub|i>>,
  <math|\<lambda\><rsub|i>>, <math|\<lambda\><rsub|i><rsup|<around|(|n|)>>>>>|<row|<cell|raw
  coefficient>|<cell|<hlink|<verbatim|Prescription.ope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Detector.lean#L80>>|<cell|<math|\<lambda\><rsub|i><around|(|a;x,o|)>>>>|<row|<cell|Reader>|<cell|<hlink|<verbatim|Orbits.Reader>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L17-L23>>|<cell|<math|\<cal-R\>>>>|<row|<cell|lower-degree
  removal, cut test, stratum>|<cell|<verbatim|knife>, <verbatim|cutTest>,
  <verbatim|stratum>>|<cell|<math|\<pi\><rsub|n>>, <math|\<tau\><rsub|n,q>>,
  <math|E<rsub|n>>>>|<row|<cell|channels, actors,
  coefficients>|<cell|<verbatim|channels>, <verbatim|actor>,
  <verbatim|coef>>|<cell|<math|<math-up|Ch><rsub|j>>,
  <math|O<rsub|j,\<kappa\>>>, <math|c<rsub|j,\<kappa\>><around|(|a;x,o|)>>>>|<row|<cell|ground
  algebra, states>|<cell|<verbatim|unselected.algebra>, <verbatim|glance>,
  <verbatim|Viewers>>|<cell|<math|\<cal-A\>>;
  <math|s\<in\>X\<sqcup\><around|{|<math-up|mix>|}>>>>|<row|<cell|error
  element>|<cell|<hlink|<verbatim|algebraError>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/System.lean#L61-L63>,
  <hlink|<verbatim|groundError>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L26-L27>>|<cell|<math|\<cal-E\><rsub|D><around|(|a,x;b,y|)>>>>|<row|<cell|chessboard
  root with interior condition>|<cell|<hlink|<verbatim|Cards.PaidAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Literal.lean#L28-L31>>|<cell|<math|<around|\||F|\|><rsub|\<cal-T\><rsub|k>>\<leqslant\>A>>>|<row|<cell|deck
  of translates>|<cell|<verbatim|deck>, <verbatim|Episode>>|<cell|<math|<big|prod><rsub|l\<less\>2*n>U<rsup|(\<ast\>)>\<circ\>\<tau\><rsub|2*t*l>>>>|<row|<cell|limit
  label of a cluster>|<cell|<hlink|<verbatim|Survival>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Remit.lean#L42-L44>>|<cell|<math|Q>>>|<row|<cell|coefficient
  size of a label>|<cell|<verbatim|quota>>|<cell|<math|<around|\||z|\|><rsub|m>>>>|<row|<cell|RG
  insertion, step and column bounds>|<cell|<verbatim|paid>,
  <verbatim|\<zeta\>>, <verbatim|\<delta\>>, <verbatim|\<varphi\>>,
  <verbatim|x>, <verbatim|columns>, <verbatim|alto>, <verbatim|march>,
  <verbatim|gainChart>>|<cell|<math|<math-up|paid><rsub|j>>, <math|\<zeta\>>,
  <math|\<delta\>>, <math|\<varphi\>>, <math|x>, <math|c<rsub|m>>,
  <math|A<rsub|k,t>>, <math|\<frak-m\><rsub|k,m>>,
  <math|<around|(|a<rsub|k>/a<rsub|m>|)><rsup|1/8>>>>|<row|<cell|cell and
  stencil fitting data>|<cell|<verbatim|coverSize>, <verbatim|lensScope>,
  <verbatim|GridApprox.tail>, <verbatim|clock.J>>|<cell|<math|\<frak-c\><rsub|k>>,
  <math|\<ell\><rsub|t>>, <math|\<tau\><rsub|m>>,
  <math|\<jmath\><rsub|m>>>>|<row|<cell|RG
  package>|<cell|<hlink|<verbatim|Services>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L56-L60>>|<cell|(RG)>>|<row|<cell|tree
  plot, admissibility>|<cell|<hlink|<verbatim|Accept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean#L15-L18>,
  <verbatim|Plot>>|<cell|<math|<around|(|s,z|)>> admissible>>|<row|<cell|tree
  costs>|<cell|<hlink|<verbatim|Tree.toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Actual.lean#L18-L19>,
  <hlink|<verbatim|nestPrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Weights.lean#L102-L103>>|<cell|<math|<math-up|toll><rsub|m>>,
  <math|<math-up|nest><rsub|D>>>>|<row|<cell|one-field bound,
  separation>|<cell|<hlink|<verbatim|Next.Phase.Single>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Roots.lean#L25-L26>,
  <hlink|<verbatim|Gapped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Passage.lean#L84-L87>>|<cell|<math|\|I(v,\<cdot\><around|)||\|><rsub|\<cal-T\><rsub|k>>\<leqslant\>A>>>|<row|<cell|train,
  quantum read>|<cell|<verbatim|ride>, <hlink|<verbatim|QRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L70-L71>>|<cell|<math|v<rsub|n>>;
  bench bound <math|\<rho\>>>>|<row|<cell|contact devices,
  clearance>|<cell|<hlink|<verbatim|Contacts.Devices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Tomography.lean#L17-L26>,
  <verbatim|clearance>>|<cell|<math|\<cal-M\>>,
  <math|<math-up|cl><around|(|n|)>>>>|<row|<cell|cumulant, punctured,
  full>|<cell|<verbatim|cumulant>, <verbatim|punctured>,
  <verbatim|full>>|<cell|<math|C<rsub|h>>, <math|\<Pi\><rsub|h>>,
  <math|<math-up|full><rsub|h>>>>|<row|<cell|normal Taylor
  operator>|<cell|<hlink|<verbatim|Normal.taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/Subtractions.lean#L68>>|<cell|<math|T<rsup|h><rsub|m>>>>|<row|<cell|distribution
  of finite order>|<cell|<hlink|<verbatim|Charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L30-L31>,
  <verbatim|totalTestOrder>>|<cell|<math|\<cal-D\><rsup|s><rsub|a>>, order
  <math|<around|(|2+w|)>*k>>>|<row|<cell|contact
  thresholds>|<cell|<hlink|<verbatim|Thresholds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L23-L28>>|<cell|<math|t<rsub|n>>>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|RG inputs below the cluster replacement.> Lemmas VII.4.f\Ug
    identify the scalar inequalities and the scale induction. The polymer
    norm estimates inside the one-step representation, fusion and final
    remainder transport have not been checked line by line. The dependence of
    their constants, and the complete Part III proofs of these inputs, remain
    to be reconciled with the stated RG package.

    <item><strong|Proofs used through their statements.> The full geometry
    behind the vacuum deck limit and the two-scale continuum transfer belongs
    to V.1. The rotated comparison estimates used in Lemma VII.4.k, and the
    triangular replacement and high-horizon lemmas used in VII.4.n, have not
    been checked internally. Their uses and exponent arithmetic agree with
    their stated conclusions.

    <item><strong|Contact sector induction.> The global patching argument,
    subtraction recursion, shell Taylor bound and scaling normalization have
    been checked. The finer angular decompositions and the full induction
    through partially coincident strata remain checked only at the level of
    their theorem calls. Lemma VII.4.r's radial estimate alone does not
    settle these partial collisions.

    <item><strong|Contact projection versus Reader coefficients.> The devices
    share the Reader's prescription but use separate detectors and a separate
    graded splitting. An identity between their weight-<math|w> rows and
    <math|<big|sum><rsub|\<kappa\>>c<rsub|w,\<kappa\>>*O<rsub|w,\<kappa\>>>
    has not been located. No such identity is used in the contact statement
    above.

    <item><strong|Limits of the conclusions.> The results do not assert
    uniqueness of coefficients or contact extensions, independence of the
    extraction subsequence, convergence as <math|D\<to\>\<infty\>>,
    reflection positivity or Ward identities for the extensions, or agreement
    with perturbative coefficients.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.3 Free Wick polynomials and reflected
  Gram positivity (notes)|VII-3.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-4.tm>|<hlink|VII.5 Asymptotic freedom of the running
  coupling (notes) \<rightarrow\>|VII-5.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.4. Operator product expansion and contact
    extensions \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|3>>
    <associate|2-what-it-uses|<tuple|2|9>>
    <associate|3-strategy|<tuple|3|11>>
    <associate|4-steps|<tuple|4|11>>
    <associate|41-rates-and-sequences|<tuple|4.1|11>>
    <associate|410-contact-extensions|<tuple|4.10|21>>
    <associate|42-prescription-and-reader|<tuple|4.2|12>>
    <associate|43-norms-in-the-ground-algebra|<tuple|4.3|13>>
    <associate|44-the-lattice-cluster-estimate|<tuple|4.4|14>>
    <associate|45-the-ope-at-grid-configurations|<tuple|4.5|16>>
    <associate|46-arbitrary-configurations-and-exponents|<tuple|4.6|17>>
    <associate|47-the-reader-and-the-separated-ope|<tuple|4.7|18>>
    <associate|48-integrated-and-nested-forms|<tuple|4.8|19>>
    <associate|49-the-slab-bound-of-v1|<tuple|4.9|20>>
    <associate|5-where-the-difficulty-lies|<tuple|5|24>>
    <associate|6-notation|<tuple|6|25>>
    <associate|7-what-remains-unexplained|<tuple|7|26>>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|4.6|17>>
    <associate|auto-11|<tuple|4.7|18>>
    <associate|auto-12|<tuple|4.8|19>>
    <associate|auto-13|<tuple|4.9|20>>
    <associate|auto-14|<tuple|4.10|21>>
    <associate|auto-15|<tuple|5|24>>
    <associate|auto-16|<tuple|6|25>>
    <associate|auto-17|<tuple|7|26>>
    <associate|auto-2|<tuple|2|9>>
    <associate|auto-3|<tuple|3|11>>
    <associate|auto-4|<tuple|4|11>>
    <associate|auto-5|<tuple|4.1|11>>
    <associate|auto-6|<tuple|4.2|12>>
    <associate|auto-7|<tuple|4.3|13>>
    <associate|auto-8|<tuple|4.4|14>>
    <associate|auto-9|<tuple|4.5|16>>
    <associate|vii4-operator-product-expansion-and-contact-extensions--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Rates and sequences
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Prescription and Reader
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Norms in the ground algebra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 The lattice cluster estimate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The OPE at grid configurations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Arbitrary configurations and exponents
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 The Reader and the separated OPE
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 Integrated and nested forms
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|4.9 The slab bound of V.1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|4.10 Contact extensions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
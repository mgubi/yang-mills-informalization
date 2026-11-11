<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.3 Free lattice kernels and
  covariances|III-3.tm>|<hlink|Part III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-4.tm>|<hlink|III.5 Cluster expansion of the polymer gas
  \<rightarrow\>|III-5.tm>>

  <ym-title|III.4. Gaussian integration: change of Gaussian sector,
  determinants, window law><label|iii4-gaussian-integration-change-of-gaussian-sector-determinants-window-law>

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

  Explains the Gaussian changes of variables, determinant bounds and local
  window estimates used in one renormalization step.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-4.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.3|III-3.tm> <ym-middot> <hlink|Next:
  III.5 \<rightarrow\>|III-5.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> about 40 work packages. The main ones are
    <hlink|<verbatim|YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE>
    (exact change of variables, gap, windows),
    <hlink|<verbatim|YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE>
    and <hlink|<verbatim|YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON>
    (determinants and the polymer form of a sector),
    <hlink|<verbatim|YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS>,
    <hlink|<verbatim|YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION>
    and <hlink|<verbatim|YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS>
    (Gaussian moments), <hlink|<verbatim|SECTOR_AFFINE_JETS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS>,
    <hlink|<verbatim|SECTOR_COVARIANCE_JETS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS>
    and <hlink|<verbatim|SELECTED_ORDERED_KERNELS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS>
    (jets), <hlink|<verbatim|LOCAL_GAUSSIAN_LAWS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS>,
    <hlink|<verbatim|GAUSSIAN_FIELD_ALIGNMENT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT>,
    <hlink|<verbatim|YM/Push/FREE_RESOLVENT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT>
    and <hlink|<verbatim|YM/RG08/Gaussian/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian>
    (locality, infinite-volume kernels), <hlink|<verbatim|YM/SectorNext/LARGE_FIELD_REMAINDERS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS>,
    and the constant-producing statements in <verbatim|Next/STATIONARY>,
    <verbatim|MergeProof> and <verbatim|PhysicalNext/V9_JOINT_ENDPOINT_LOAD>.
    <strong|Size:> 37,956 lines in 4,737 declarations in the source
    allocation.

    <strong|Conventions.> <math|x=<wide|\<beta\>|^><rsub|m>> in applications;
    <math|R<around|(|x|)>=<around|\<lceil\>|<around|(|log
    x|)><rsup|2>|\<rceil\>>>, <math|t<around|(|x|)>=x<rsup|-1/2>*e<rsup|<around|(|log
    log x|)><rsup|2>>>, <math|\<beta\><rsub|F><around|(|x,L|)>=x+s<rsub|G>*log
    L>, <math|t<rsub|L><around|(|x|)>=t<around|(|\<beta\><rsub|F><around|(|x,L|)>|)>>,
    <math|g=\<beta\><rsup|-1/2>> and <math|r<rsub|x>=<around|\<lfloor\>|R<around|(|x|)>/60|\<rfloor\>>>.
    Write <math|<around|\<\|\|\>|A|\<\|\|\>><rsub|s>> for the maximum
    weighted row and column sums with weight
    <math|e<rsup|s<space|0.17em><math-up|dist><around|(|i,j|)>>>, using
    coarse positions. Matrix inequalities are quadratic-form inequalities.
    \PFor large <math|x>\Q means beyond a threshold depending only on
    previously fixed constants.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Setting.> One block-spin step <math|S> maps a fine torus
  <math|\<Lambda\><rsub|f>> (side <math|f=L*c>, block size <math|L> odd) to a
  coarse torus <math|\<Lambda\><rsub|c>>. The push-forward of the density at
  fixed coarse field <math|V> is decomposed (III.1, III.9) into sectors. A
  sector is given by:

  <\itemize-minus>
    <item>a store <math|A>: the large-field data, made of cost cells, aisles
    and flagged sites, with a partition of unity
    <math|<math-up|bill><rsub|A>> given by an allocation <math|D>;

    <item>a choice <math|k> of gauge-fixing tags;

    <item>a spanning forest <math|F> (tree gauge).
  </itemize-minus>

  The integration variables are the free links of <math|F>, with product Haar
  measure. In each sector the unit splits the free links as follows
  (<hlink|<verbatim|chill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L38-L40>):

  <\itemize-minus>
    <item><strong|frozen links> <math|\<cal-F\><rsub|A>>: a parent block of
    an endpoint lies within distance <math|10*R<around|(|x|)>> of <math|A>.
    These are kept as Haar variables <math|Y>.

    <item><strong|active links> <math|\<cal-A\><rsub|A>>: all others. These
    are written <math|u<rsub|e>=exp <around|(|a<rsub|e>|)>*<space|0.17em>\<nu\><rsub|e>>,
    with <math|a<rsub|e>\<in\>\<frak-g\>> and <math|\<nu\>=\<iota\>*V> the
    copy of <math|V> on the fine lattice (<hlink|<verbatim|replica>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35-L36>).
  </itemize-minus>

  We write <math|n<rsub|a>=<around|\||\<cal-A\><rsub|A>|\|>*dim \<frak-g\>>.

  On selected stencils, the step energy contains a sum of affine squares
  <math|Q<rsub|Y><around|(|a|)>=<tfrac|1|2><around|\<lvert\>|M*a+s<around|(|Y|)>|\<rvert\>><rsup|2>>
  (<hlink|<verbatim|guide>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L37>):

  <\itemize-minus>
    <item><math|M> is a linear map from active coordinates to rows of
    linearised plaquette curvatures and block constraints;

    <item><math|s<around|(|Y|)>> depends on the frozen links.
  </itemize-minus>

  From these the unit defines three objects:

  <\itemize-minus>
    <item>the <strong|precision> <math|W=M<rsup|\<top\>>*M>
    (<hlink|<verbatim|Rows.gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L27>);

    <item>the <strong|covariance> <math|C=W<rsub|\<cal-W\>>>, the symmetrised
    windowed inverse of <math|W>, with windows of coarse radius
    <math|R<around|(|x|)>/20> (<hlink|<verbatim|fog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L69-L70>);

    <item>the <strong|mean> <math|m<around|(|Y|)>=-<around|(|W<rsup|<math-up|per>>|)><rsup|\<top\>>*M<rsup|\<top\>>*s<around|(|Y|)>>
    (<hlink|<verbatim|meanLog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L72-L74>).
    This is a window approximation to the minimiser
    <math|-W<rsup|-1>*M<rsup|\<top\>>*s<around|(|Y|)>>; its gradient need not
    vanish.
  </itemize-minus>

  <strong|Proposition III.4.1 (exact Gaussian change of variables in one
  sector).> Fix the following data:

  <\itemize-minus>
    <item>a step <math|S> and a tube <math|T> satisfying the funding
    conditions of a teller: the prescribed kernel and stage, the multiscale
    metric bounds, the prescribed fine and coarse cutoffs, bounds on both
    path families, and compatible free metrics and towers;

    <item>a representation <math|R> of the fine density whose paths satisfy
    their bounds and whose activities satisfy the validity bounds, with
    <math|\<beta\>=\<beta\><rsub|R>>;

    <item><math|x>, <math|V>, <math|k>, <math|A>, <math|F>, an allocation
    <math|D> and a cutoff profile <math|\<chi\>>;

    <item>a chart ratio <math|J>, meaning:

    <\itemize-minus>
      <item><math|J<rsub|<math-up|sc>>\<gtr\>0> and
      <math|\<rho\><rsub|J>\<gtr\>0>, and <math|J> is measurable;

      <item><math|J> is real-analytic and positive on a ball
      <math|B<rsub|\<rho\><rsub|J>>\<subset\>\<frak-g\>>;

      <item><math|J<around|(|0|)>=1>;

      <item><math|exp> is injective on <math|B<rsub|\<rho\><rsub|J>>>;

      <item><math|J<rsub|<math-up|sc>>*<space|0.17em>J<around|(|a|)>*<space|0.17em>d*a>
      is mapped by <math|exp> onto normalised Haar measure restricted to
      <math|exp B<rsub|\<rho\><rsub|J>>>;

      <item><math|exp B<rsub|\<rho\><rsub|J>>> is open;
    </itemize-minus>

    <item>a number <math|d\<gtr\>0>.
  </itemize-minus>

  Let <math|C> be a matrix on the active coordinates and <math|m> a map from
  frozen arrays to active coordinates. Assume they are <em|permitted>
  (<hlink|<verbatim|Permitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L95-L103>):

  <\itemize-minus>
    <item><math|C\<succ\>0>, <math|\<beta\>\<gtr\>0>, <math|m> measurable,
    and <math|4*d\<less\>\<rho\><rsub|J>>;

    <item>the <em|standing condition> (<hlink|<verbatim|Standing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L51-L55>):
    whenever <math|<math-up|bill><rsub|A>\<ne\>0> and the gauge tags are
    eligible, every active link equals <math|e<rsup|a<rsub|e>>*\<nu\><rsub|e>>
    with <math|<around|\<lvert\>|a<rsub|e>|\<rvert\>>\<leqslant\>d>.
  </itemize-minus>

  Let <math|\<Phi\><rsub|A,k>=<math-up|bill><rsub|A>\<cdot\><math-up|exposed><rsub|R>\<cdot\><math-up|enters><rsub|T,\<beta\>,k,V>>
  be the sector integrand. Here <math|<math-up|exposed><rsub|R>> is the
  interacting density of <math|R>, and <math|<math-up|enters>> is the tagged
  block-spin kernel times <math|e<rsup|-\<beta\>\<cdot\><text|gap energy>>>.
  Then the following hold (<hlink|<verbatim|Licenses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L127-L135>):

  <\itemize-minus>
    <item>(a) <math|\<Phi\><rsub|A,k>> is integrable on the slice;

    <item>(b) for every <math|Y>, <math|\<Psi\><around|(|Y,\<cdot\>|)>\<in\>L<rsup|1><around|(|\<gamma\><rsub|C>|)>>,
    and <math|\<Psi\>\<in\>L<rsup|1>*<around|(|<math-up|Haar><rsup|\<cal-F\><rsub|A>>\<otimes\>\<gamma\><rsub|C>|)>>;

    <item>(c) the identity
  </itemize-minus>

  <\equation*>
    <big|int>\<Phi\><rsub|A,k>*<space|0.17em>d<math-up|Haar><rsup|F>=<math-up|pref><rsub|S><around|(|\<beta\>|)>*<space|0.17em>J<rsub|<math-up|sc>><rsup|<space|0.17em><around|\<lvert\>|\<cal-A\><rsub|A>|\<rvert\>>>*<space|0.17em><around|(|2*\<pi\>*g<rsup|2>|)><rsup|n<rsub|a>/2><around|(|det
    C|)><rsup|1/2>*<big|int><math-up|Haar><rsup|\<cal-F\><rsub|A>><around|(|d*Y|)>*<big|int>\<gamma\><rsub|C>*<around|(|d*z|)>*<space|0.17em>\<Psi\><around|(|Y,z|)>.
  </equation*>

  Here <math|\<gamma\><rsub|C>=N<around|(|0,C|)>>. Set
  <math|a=m<around|(|Y|)>+g*z>, and let <math|U> be the configuration with
  frozen links <math|Y>, active links <math|e<rsup|a<rsub|e>>*\<nu\><rsub|e>>
  and tree links <math|1>. Then (<hlink|<verbatim|dyed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L63-L71>)

  <\equation*>
    \<Psi\><around|(|Y,z|)>=<wide|J|~><rsub|d><around|(|a|)>*<space|0.17em>\<chi\><rsub|d><around|(|a|)><space|0.17em><math-up|bill><rsub|A><space|0.17em><math-up|lik><rsub|k><around|(|U|)><space|0.17em><math-up|exposed><rsub|R><around|(|U|)>*<space|0.17em>exp
    <space|-0.17em><around*|(|-\<beta\><space|0.17em><wide|<math-up|res>|\<bar\>><around|(|Y,U,a|)>-\<beta\>*Q<rsub|Y><around|(|m<around|(|Y|)>|)>+\<eta\>\<cdot\>z+<tfrac|1|2>z\<cdot\><around|(|C<rsup|-1>-W|)>*z|)>.
  </equation*>

  In this formula:

  <\itemize-minus>
    <item><math|\<eta\>=-g<rsup|-1>*<around|(|W*m<around|(|Y|)>+M<rsup|\<top\>>*s<around|(|Y|)>|)>>;

    <item><math|<wide|<math-up|res>|\<bar\>>> is the orientation-averaged
    step energy minus the affine squares;

    <item><math|<wide|J|~><rsub|d><around|(|a|)>> is the product of the
    extended link Jacobians, each equal to <math|J<around|(|a<rsub|e>|)>> for
    <math|<around|\<lvert\>|a<rsub|e>|\<rvert\>>\<leqslant\>2*d>;
    <math|\<chi\><rsub|d>> is the product cutoff, equal to <math|1> when
    every <math|<around|\<lvert\>|a<rsub|e>|\<rvert\>>\<leqslant\>d>.
  </itemize-minus>

  The identity holds for every permitted <math|<around|(|C,m|)>> without
  quantitative locality assumptions.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|authorized_change>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192>.

  <strong|Proposition III.4.2 (licence of every committed RG step; the
  transfer identity).> Let <math|<with|math-font|cal*|R>> be a directed RG
  run (III.9) whose delays satisfy the rate conditions and the per-stage
  chart conditions (<hlink|<verbatim|Starcash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L57-L71>).
  Let <math|m\<less\>N>, let <math|p> be a period, and let <math|R> be a
  representation at level <math|m+1> on its selected history with
  <math|\<beta\><rsub|R>\<in\><around|[|<wide|\<beta\>|^><rsub|m+1>/2,<space|0.17em>2*<wide|\<beta\>|^><rsub|m+1>|]>>.
  Write:

  <\itemize-minus>
    <item><math|S> for the step from level <math|m+1> to level <math|m>;

    <item><math|x=<wide|\<beta\>|^><rsub|m>> and
    <math|\<beta\>=\<beta\><rsub|R>>;

    <item><math|j=J*<around|(|m+1|)>> and <math|i=J<around|(|m|)>> for the
    stage indices;

    <item><math|d=a<rsub|j*i>*<space|0.17em>t<around|(|<wide|\<beta\>|^><rsub|m+1>|)>>,
    and <math|w> for the allocation width at this stage pair.
  </itemize-minus>

  Then:

  <\itemize-minus>
    <item><math|w\<gtr\>0>, <math|d\<gtr\>0>, <math|\<beta\>\<gtr\>0>,
    <math|E<rsub|j*i>\<gtr\>0>, <math|2*d\<less\>\<rho\><rsub|<math-up|first>>>
    and <math|4*d\<less\>\<rho\><rsub|J>>;

    <item><math|<around|\<lvert\>|log J<around|(|t|)>|\<rvert\>>\<leqslant\>E<rsub|j*i><around|\<lvert\>|t|\<rvert\>><rsup|2>>
    for <math|<around|\<lvert\>|t|\<rvert\>>\<leqslant\>4*d>;

    <item>there is <math|\<kappa\>\<gtr\>0> such that for all allocations
    <math|D> of width <math|w>, forests <math|H> and profiles <math|\<chi\>>:

    <\itemize-minus>
      <item>(i) writing <math|I<rsub|A>> for the signed sector column, its
      contribution to the push-forward, and <math|L<rsub|A>> for the
      nonnegative column with absolute fine density, after removing the
      selected packet energy and kernel prefactor, both have bounded Borel
      envelopes and <math|<around|\||I<rsub|A><around|(|V|)>|\|>\<leqslant\><math-up|pref><around|(|\<beta\>|)>*e<rsup|-\<beta\>*\<kappa\>*t<rsub|L><around|(|x|)><rsup|2><around|\||A|\|>>*L<rsub|A><around|(|V|)>>
      (<hlink|<verbatim|PortionCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L151-L155>);

      <item>(ii) for all <math|A,k,V>, the chart is admitted
      (<hlink|<verbatim|Admitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L36-L42>);
      when <math|<math-up|flags><around|(|A|)>=<math-up|flags><rsub|t<around|(|x|)>><around|(|V|)>>,
      also <math|C=W<rsub|\<cal-W\>>\<succ\>0>, <math|W\<succ\>0> and the
      selected predictor rows have analytic derivatives with a common bound;
      and the conclusions of III.4.1 hold with <math|C=W<rsub|\<cal-W\>>> and
      the windowed mean for every store (for wrong flags trivially, since
      <math|<math-up|bill><rsub|A>\<equiv\>0>);

      <item>(iii) for every <math|V>:
    </itemize-minus>
  </itemize-minus>

  <\equation*>
    \<cal-S\><rsub|\<beta\>><around|(|\<rho\><rsub|R>|)><around|(|V|)>=<big|sum><rsub|A><math-up|sieve><around|(|V|)>*<big|sum><rsub|k><math-up|pref><space|0.17em>J<rsub|<math-up|sc>><rsup|<around|\<lvert\>|\<cal-A\><rsub|A>|\<rvert\>>>*<around|(|2*\<pi\>*g<rsup|2>|)><rsup|n<rsub|a>/2><around|(|det
    C<rsub|A,k,V>|)><rsup|1/2><big|iint>\<Psi\>*<space|0.17em>d*\<gamma\><rsub|C>*<space|0.17em>d<math-up|Haar>.
  </equation*>

  Here <math|\<cal-S\><rsub|\<beta\>>> is the block-spin push-forward,
  <math|\<rho\><rsub|R>> is the fine density, and
  <math|<math-up|sieve><around|(|V|)>=exp
  <around|(|-\<beta\>\<cdot\><text|orientation-averaged coarse energy of
  >V|)>>.

  <em|Status:> theorem, conditional on the run, history and band hypotheses.
  III.4.12 supplies the rate and chart conditions; III.9 supplies the
  selected history.

  <em|Lean:> <hlink|<verbatim|committed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182>,
  <hlink|<verbatim|displaced_wrong>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L124-L137>.

  <strong|Proposition III.4.3 (gap and locality of the actual precision and
  covariance).> Fix <math|G>, a patch <math|P=<around|(|L,J|)>> and a teller
  whose kernel satisfies the branch condition. There are
  <math|v,\<eta\>,b,E\<gtr\>0> and <math|K\<geqslant\>0> (post-<math|L>
  constants) with the following property. For large <math|x>, take any step
  with patch <math|P> and coarse side <math|c\<geqslant\>100*<around|(|1+R<around|(|x|)>|)>>,
  any funded tube, and any <math|A,F,k,V> with
  <math|<math-up|flags><around|(|A|)>=<math-up|flags><rsub|t<around|(|x|)>><around|(|V|)>>.
  Then:

  <\itemize-minus>
    <item>(i) <math|\<eta\><around|\<lvert\>|a|\<rvert\>><rsup|2>\<leqslant\>a\<cdot\>W*a>
    for all active <math|a> (<hlink|<verbatim|Gap.not_flat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264>);

    <item>(ii) <math|W> has exponential off-diagonal decay in the Schur norm:
    <math|sup<rsub|i> <big|sum><rsub|j>e<rsup|v<space|0.17em><math-up|dist><around|(|i,j|)>><around|\<lvert\>|W<rsub|i*j>|\<rvert\>>\<leqslant\>K>,
    and the same for columns, where <math|<math-up|dist>> is the coarse
    distance between the parent blocks of the coordinates;

    <item>(iii) <math|<around|\<lVert\>|C-W<rsup|-1>|\<rVert\>><rsub|0>\<leqslant\>E*<space|0.17em>e<rsup|-b*r<rsub|x>>>,
    and <math|C\<succ\>0>;

    <item>(iv) <math|C\<leqslant\>K<rprime|'>> for some post-<math|L>
    constant <math|K<rprime|'>> (<hlink|<verbatim|open_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/Apertures.lean#L43-L55>).
  </itemize-minus>

  The constants do not depend on the volume, the store, the forest or the
  field.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|opaqueCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L102-L143>.

  <strong|Proposition III.4.4 (window law).> Let
  <math|\<sigma\>,\<eta\>\<gtr\>0>, <math|K\<geqslant\>0>, and fix a
  nonnegative function <math|B:\<bbb-R\>\<to\>\<bbb-R\>>. There are
  <math|u,E,g\<gtr\>0> such that for every sufficiently large integer
  <math|r> the following holds, uniformly in the torus and the finite
  coordinate set. Let the coordinate positions <math|p<rsub|j>> satisfy
  <math|<big|sum><rsub|j>e<rsup|-v<space|0.17em><math-up|dist><around|(|i,p<rsub|j>|)>>\<leqslant\>B<around|(|v|)>>
  for every coarse site <math|i> and every <math|v\<gtr\>0>
  (<hlink|<verbatim|Revenue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L125>).
  Let <math|A> be a finite symmetric matrix with:

  <\itemize-minus>
    <item>Schur decay <math|<around|\<lVert\>|e<rsup|\<sigma\><space|0.17em><math-up|dist>>*A|\<rVert\>><rsub|<math-up|Schur>>\<leqslant\>K>;

    <item>spectral gap <math|\<eta\>>;

    <item>windows <math|\<cal-W\><rsub|i>> that contain the <math|r>-ball
    around <math|i>.
  </itemize-minus>

  Let <math|L> be the windowed inverse, <math|L<rsub|\<cdot\>i>=<around|(|A\|<rsub|\<cal-W\><rsub|i>>|)><rsup|-1>*e<rsub|i>>
  extended by zero, and <math|A<rsub|\<cal-W\>>=<tfrac|1|2><around|(|L+L<rsup|\<top\>>|)>>
  (<hlink|<verbatim|clouded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L70>).
  Then:

  <\itemize-minus>
    <item><math|<around|\<lVert\>|A<rsub|\<cal-W\>>-A<rsup|-1>|\<rVert\>><rsub|<math-up|Schur>>\<leqslant\>E*e<rsup|-u*r>>;

    <item><math|A<rsub|\<cal-W\>>\<geqslant\>g=\<eta\>/<around|(|2*<around|(|K+1|)><rsup|2>|)>>
    and <math|A<rsub|\<cal-W\>>\<succ\>0>.
  </itemize-minus>

  A strengthened form (<hlink|<verbatim|same_purchase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L72-L118>)
  gives a rate <math|s\<in\><around|(|0,\<sigma\>|]>> and a constant
  <math|K<rsub|1>> such that <math|A>, <math|A<rsup|-1>>, <math|L> and
  <math|<around|(|A<rsub|\<cal-W\>>|)><rsup|-1>> all have <math|s>-weighted
  Schur norm <math|\<leqslant\>K<rsub|1>>, and
  <math|<around|\<lVert\>|e<rsup|s<space|0.17em><math-up|dist>>*<around|(|L-A<rsup|-1>|)>|\<rVert\>><rsub|<math-up|Schur>>\<leqslant\>K<rsub|1>*e<rsup|-s*r>>.

  <em|Status:> theorem. The constants depend only on
  <math|<around|(|\<sigma\>,\<eta\>,K,B|)>>.

  <em|Lean:> <hlink|<verbatim|Schur.windows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L184-L239>.

  <strong|Proposition III.4.5 (log-determinants as local path series).> Let
  <math|A\<succ\>0> with windows <math|\<cal-W\>>
  (<math|i\<in\>\<cal-W\><rsub|i>>). Let <math|P<rsub|u>> be the column-wise
  windowed inverse of <math|A+u*I>, and <math|\<Delta\><rsub|u>=<around|(|A+u*I|)>*P<rsub|u>-I>.
  Assume the following bounds (<hlink|<verbatim|Priced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Walls.lean#L79-L89>),
  at a fixed nonnegative Schur rate, with <math|C\<geqslant\>1> and
  <math|0\<leqslant\>q\<less\>1>, for every <math|u\<geqslant\>0>:

  <\itemize-minus>
    <item><math|<around|\<lVert\>|A|\<rVert\>>\<leqslant\>C>;

    <item><math|<around|\<lVert\>|<around|(|A+u|)><rsup|-1>|\<rVert\>>,<around|\<lVert\>|P<rsub|u>|\<rVert\>>\<leqslant\>C/<around|(|1+u|)>>;

    <item><math|<around|\<lVert\>|\<Delta\><rsub|u>|\<rVert\>>\<leqslant\>q/<around|(|1+u|)>>;

    <item><math|<around|\<lVert\>|S|\<rVert\>>\<leqslant\>q>, where
    <math|S=A*A<rsub|\<cal-W\>>-1>.
  </itemize-minus>

  Assume also <math|A<rsub|\<cal-W\>>\<succ\>0>. Then

  <\equation*>
    log det A=<big|sum><rsub|i><around*|(|\<ell\><rsub|i>+<big|sum><rsub|n\<geqslant\>0>r<rsub|i,n>|)>,<space|2em>log
    det <around|(|1+S|)>=<big|sum><rsub|i><big|sum><rsub|n\<geqslant\>0><frac|<around|(|-1|)><rsup|n><around|(|S<rsup|n+1>|)><rsub|i*i>|n+1>,<space|2em>log
    det A<rsub|\<cal-W\>>=-log det A+log det <around|(|1+S|)>,
  </equation*>

  with:

  <\itemize-minus>
    <item><math|\<ell\><rsub|i>=<big|int><rsub|0><rsup|\<infty\>><around|[|<around|(|1+u|)><rsup|-1>-<around|(|P<rsub|u>|)><rsub|i*i>|]>*<space|0.17em>d*u=<around|(|log
    A\|<rsub|\<cal-W\><rsub|i>>|)><rsub|i*i>>, the single-window letter;

    <item><math|r<rsub|i,n>=-<big|int><rsub|0><rsup|\<infty\>><around|(|P<rsub|u>*<around|(|-\<Delta\><rsub|u>|)><rsup|n+1>|)><rsub|i*i>*<space|0.17em>d*u>
    and <math|<big|int><around|\<lvert\>|\<cdummy\>|\<rvert\>>\<leqslant\>C*q<rsup|n+1>>.
  </itemize-minus>

  All series converge absolutely. Moreover
  (<hlink|<verbatim|labeled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Alphabet.lean#L196-L208>),
  the matrix products expand into closed index paths. A term
  <math|r<rsub|i,n>> has one <math|P<rsub|u>> factor and <math|n+1> defect
  factors, hence <math|n+2> jumps; the corresponding trace-series term has
  <math|n+1> jumps. The absolute values, summed over the intermediate
  indices, are bounded by <math|C*q<rsup|n+1>> and
  <math|q<rsup|n+1>/<around|(|n+1|)>>, respectively.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Priced.chains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227>.

  For the relative expansions, the sector regularity conditions are: a lawful
  representation; matching fine paths and cutoff; a local chart with
  <math|d\<gtr\>0>, <math|4*d\<less\>\<rho\><rsub|J>> and
  <math|2*d\<less\>\<rho\><rsub|<math-up|first>>>; positive coupling and
  sector width; <math|0\<less\>t<rsub|L><around|(|x|)>\<leqslant\>1>; output
  threshold <math|t<around|(|x|)>>; and the tube's geometric,
  local-readability, predictor-derivative, covariance-positivity and
  spectral-gap conditions (<hlink|<verbatim|Chips>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Desk.lean#L41-L54>,
  <hlink|<verbatim|Boosted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Exposure.lean#L40-L46>).

  <strong|Proposition III.4.6 (relative normalisation of a sector and its
  localisation).> Let <math|K<rsub|F>> be the flat kinetic precision: the
  Gram matrix of the move at <math|V=1> with empty store, on all free links
  of <math|F>.

  (i) If the fine path family satisfies its path bounds and the kernel
  satisfies the patch's branch condition, <math|det K<rsub|F>> does not
  depend on the forest or on the gauge tags
  (<hlink|<verbatim|Native.shared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Bore.lean#L303-L305>).

  (ii) Assume:

  <\itemize-minus>
    <item>the tube is funded, and its fine path family and cutoff are those
    of <math|R>;

    <item>the precision bounds of Lemma 4.21 of the detailed notes holds;

    <item><math|J> is a local chart ratio, <math|\<beta\>\<gtr\>0>, and the
    threshold of the output budget point is <math|t<around|(|x|)>>.
  </itemize-minus>

  Then on every sector point <math|p=<around|(|A,F,k,V,Y,z|)>> with matching
  flags, the positive density factor, with the sector masks and polymer
  product kept outside it, factorises as

  <\equation*>
    <text|freight><around|(|p|)>=<text|loading><around|(|V|)>*<space|0.17em>e<rsup|\<Lambda\><around|(|p|)>>,<space|2em><text|loading><around|(|V|)>=<text|banker><around|(|V|)><space|0.17em><math-up|pref><around|(|\<beta\>|)>*<space|0.17em>e<rsup|v<rsub|R><around|\<lvert\>|\<Lambda\><rsub|f>|\<rvert\>>><space|0.17em><math-up|spare><around|(|\<beta\>|)><rsup|<around|\<lvert\>|F<rsup|<math-up|free>>|\<rvert\>>><around|(|det
    K<rsub|F>|)><rsup|-1/2>\<gtr\>0.
  </equation*>

  Here <math|<text|freight>=J<rsub|<math-up|sc>><rsup|<around|\<lvert\>|\<cal-A\>|\<rvert\>>>*<around|(|2*\<pi\>*g<rsup|2>|)><rsup|n<rsub|a>/2><around|(|det
  C|)><rsup|1/2>*e<rsup|<frac|1|2>*z\<cdot\>C<rsup|-1>*z>*<space|0.17em><wide|J|~>\<cdot\><around|(|<text|noise>|)>\<cdot\>e<rsup|<math-up|exponent><rsub|R>>>,
  and <math|<math-up|spare><around|(|\<beta\>|)>=<around|(|2*\<pi\>*g<rsup|2>|)><rsup|dim
  \<frak-g\>/2>*J<rsub|<math-up|sc>>> is the Gaussian normalisation per link.
  The exponent is

  <\equation*>
    \<Lambda\><around|(|p|)>=-\<beta\>*<space|0.17em>\<cal-E\><around|(|p|)>+\<eta\>\<cdot\>z+<tfrac|1|2>z\<cdot\><around|(|C<rsup|-1>-W|)>*z+\<kappa\><around|(|p|)>+<big|sum><rsub|e>log
    <wide|J|~><around|(|a<rsub|e>|)>+<around|(|<text|tails>|)>,
  </equation*>

  <\equation*>
    \<kappa\><around|(|p|)>=-<around|\<lvert\>|\<cal-F\><rsub|A>|\<rvert\>>*log
    <math-up|spare><around|(|\<beta\>|)>-<tfrac|1|2><around*|(|log det W-log
    det K<rsub|F>|)>+<tfrac|1|2>log det <around|(|W*C|)>.
  </equation*>

  Here <math|\<cal-E\>> is the orientation-averaged row energy, including the
  subtraction of the affine energy at <math|a> and its addition at <math|m>:

  <\equation*>
    \<cal-E\>=E<rsub|<math-up|noise>><around|(|U,V|)>+E<rsub|<math-up|fine>><rsup|<math-up|cut>><around|(|U|)>-E<rsub|<math-up|coarse>><rsup|<math-up|cut>><around|(|V|)>-Q<rsub|Y><around|(|a|)>+Q<rsub|Y><around|(|m|)>.
  </equation*>

  The tails are the remaining fine exponent after removing its volume
  constant and restoring its cut energy, together with the coarse cutoff
  correction.

  (iii) Assume in addition the sector regularity conditions stated above, a
  nonnegative polymer exponent, and both path-counting bounds of Lemma 4.21
  of the detailed notes. Then <math|\<kappa\><around|(|p|)>=-<around|\<lvert\>|\<cal-F\><rsub|A>|\<rvert\>>*log
  <math-up|spare>+<big|sum><rsub|e><math-up|sect><rsub|e>+I+<math-up|Sh>>
  (<hlink|<verbatim|book_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L34-L39>),
  where:

  <\itemize-minus>
    <item><math|<math-up|sect><rsub|e>=-<tfrac|1|2><big|sum><rsub|<math-up|colours>><around|[|\<ell\><rsub|e><around|(|<text|actual>|)>-\<ell\><rsub|e><around|(|<text|flat>|)>|]>>,
    the difference of the single-window letters of III.4.5 for the
    identity-completed full precision at <math|<around|(|A,V|)>> and at
    <math|<around|(|\<emptyset\>,1|)>>;

    <item><math|I> is the corresponding difference of path letters;

    <item><math|<math-up|Sh>=<tfrac|1|2>log det <around|(|1+S|)>>.
  </itemize-minus>

  (iv) Regrouping (<hlink|<verbatim|rate_pass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48>)
  gives <math|\<kappa\>=<big|sum><rsub|o><math-up|rent><rsub|o>+<math-up|far>+I+<math-up|Sh>>:

  <\itemize-minus>
    <item><math|o> runs over the cores of <math|A> (the components formed by
    overlap of the <math|500*R<around|(|x|)>>-halos of its seeds);

    <item><math|<math-up|rent><rsub|o>> is the sum of
    <math|<math-up|sect><rsub|e>-log <math-up|spare>\<cdot\>1<rsub|e\<in\>\<cal-F\><rsub|A>>>
    over links within <math|200*R<around|(|x|)>> of <math|o>;

    <item><math|<math-up|far>> is the same sum over links farther than
    <math|200*R<around|(|x|)>> from <math|A>.
  </itemize-minus>

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Dyed.cardinal_spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L102-L168>,
  <hlink|<verbatim|Dyed.keptEarly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L50-L54>,
  <hlink|<verbatim|Dyed.spoolLift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L56-L63>.

  <strong|Proposition III.4.7 (polymer form of a sector, with large-field
  suppression).> Fix:

  <\itemize-minus>
    <item>a teller and a patch <math|D> satisfying the branch condition;

    <item>a determinant-jet fund and a local chart ratio <math|J>;

    <item>a polymer exponent <math|e\<geqslant\>0>, a chart-width multiplier
    <math|h\<geqslant\>0>, constants <math|a,\<alpha\>,\<tau\>\<gtr\>0> with
    <math|2*\<alpha\>\<leqslant\>a/2>, and bound constants
    <math|C<rsub|0>\<geqslant\>0>, <math|g<rsub|0>,b<rsub|0>,d<rsub|0>\<gtr\>0>,
    <math|\<eta\><rsub|0>\<in\>\<bbb-R\>>.
  </itemize-minus>

  Then for large <math|x> the following holds. Let
  <math|y=<math-up|retime><around|(|x|)>>,
  <math|z=\<beta\><rsub|F><around|(|x,D.*L|)>> and
  <math|<math-up|hot><around|(|s|)>=e<rsup|<around|(|log log
  s|)><rsup|3/2>>>. Eventually <math|x\<leqslant\>y\<leqslant\>x<rsup|2>> and
  <math|t<around|(|y|)>=x<rsup|-1/2><math-up|hot><around|(|x|)>>. Take a step
  with patch <math|D>, a sector datum with chart <math|J>, and positive
  cutoff parameter <math|W<rsub|0>>, subject to the following assumptions:

  <\itemize-minus>
    <item>the representation is lawful; the tube has the same fine paths and
    cutoff as the representation and satisfies the funded, geometric and
    chart-admission conditions; the chart radius
    <math|d=h*<space|0.17em>t<rsub|D.*L><around|(|y|)>> satisfies
    <math|d\<gtr\>0>, <math|4*d\<less\>\<rho\><rsub|J>> and
    <math|2*d\<less\>\<rho\><rsub|<math-up|first>>>; the output threshold is
    <math|t<around|(|y|)>>;

    <item>the step satisfies the free-metric size condition and
    <math|c\<geqslant\>100*<around|(|1+R<around|(|y|)>|)>>, and its fine and
    coarse path families have a common path bound;

    <item><math|\<beta\>\<in\><around|[|z/2,2*z|]>>; the fine threshold
    <math|s=z<rsup|-1/2><math-up|hot><around|(|z|)>> also lies in
    <math|<around|[|t<rsub|D.*L><around|(|y|)>/2,2*t<rsub|D.*L><around|(|y|)>|]>>;

    <item>on each eligible packet the row energy <math|\<cal-E\>> is at least
    <math|a*s<rsup|2>> times its size, whenever the sector cutoffs are
    nonzero;

    <item>the support exponents satisfy the reserve inequality with
    parameters <math|<around|(|e,\<tau\>|)>>; the budget radius
    <math|B<rsub|0>> satisfies <math|25*R<around|(|y|)>+30\<leqslant\>B<rsub|0>\<leqslant\><math-up|walls><around|(|y|)>>,
    and the fine budget radius is at most <math|2*B<rsub|0>>;

    <item>the lawful-representation bound can be chosen with activity
    constant <math|\<Gamma\>\<leqslant\>\<beta\><rsub|F><around|(|y,D.*L|)><rsup|1/8>>
    and smallness parameter <math|\<delta\>\<leqslant\>y<rsup|-1/2>>, and the
    fine paths satisfy the required row-counting bound;

    <item>the determinant-jet bounds at halo <math|20>, exponential order
    <math|2> and derivative order <math|1>, and the precision and two
    path-counting bounds of Lemma 4.21 of the detailed notes hold at
    <math|y>, with constants <math|<around|(|g<rsub|0>,C<rsub|0>,\<eta\><rsub|0>,b<rsub|0>,d<rsub|0>|)>>;

    <item>uniformly over flag-matched sectors and frozen arrays,
    <math|<around|\<\|\|\>|C|\<\|\|\>><rsub|0>> is bounded by a common
    constant, every component of <math|m> and of <math|M*m+s<around|(|Y|)>>
    has absolute value at most <math|1>, and
    <math|<around|\||\<eta\><rsub|i>|\|>\<leqslant\>y<rsup|-4>>; on the
    chart-cutoff support, <math|<around|\||z<rsub|i>|\|>\<leqslant\>y<rsup|2>>.
  </itemize-minus>

  For such data there is a decomposition (<hlink|<verbatim|Plate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Plotter.lean#L19-L28>)

  <\equation*>
    \<Lambda\><around|(|p|)>=<big|sum><rsub|o\<in\><math-up|cores><around|(|A|)>><math-up|base><rsub|o><around|(|p|)>+<big|sum><rsub|X><math-up|aux><rsub|X><around|(|p|)>
  </equation*>

  whenever the flags match and the product of the fine-field, block,
  gauge-tag and chart cutoffs is nonzero. The bounds below hold for every
  flag-matched <math|p>, including points outside that support. In it:

  <\itemize-minus>
    <item><math|<math-up|base><rsub|o>> depends only on the data in the
    <math|500*R<around|(|y|)>>-neighbourhood of <math|o>;

    <item><math|<math-up|aux><rsub|X>> depends only on the data near the
    local support <math|X>;

    <item>both are gauge-invariant and lattice-covariant;

    <item><math|<math-up|base><rsub|o>\<leqslant\>-\<alpha\><space|0.17em><math-up|hot><around|(|z|)><rsup|2><around|\<lvert\>|o|\<rvert\>>>,
    where <math|<around|\<lvert\>|o|\<rvert\>>> counts cost cells, aisles and
    flags;

    <item><math|<around|\<lvert\>|e<rsup|<math-up|aux><rsub|X>>-1|\<rvert\>>\<leqslant\>f<rsub|X>>,
    with <math|f\<geqslant\>0> satisfying the polymer bound
    <math|<big|sum><rsub|X\<ni\>y<rprime|'>>f<rsub|X>*e<rsup|e*<space|0.17em>N<rsub|B<rsub|0>><around|(|X|)>>\<leqslant\>y<rsup|-1/48>>
    at every site <math|y<rprime|'>>, where <math|N<rsub|B<rsub|0>>> is the
    cover number at the output budget radius
    (<hlink|<verbatim|Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>).
  </itemize-minus>

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|foreshadows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134>,
  with hypotheses <hlink|<verbatim|Helps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L82-L95>.

  <strong|Proposition III.4.8 (moments under the sector law).> Fix <math|G>.
  For every covariance cap <math|L\<gtr\>0> and <math|k\<in\>\<bbb-N\>> there
  is <math|D\<geqslant\>1> with the following property. Take:

  <\itemize-minus>
    <item>any finite index set <math|I> and any probability space
    <math|<around|(|\<Omega\>,\<mu\>|)>>;

    <item>any <math|C\<succeq\>0> on <math|\<bbb-R\><rsup|I\<times\>dim
    \<frak-g\>>> with <math|C\<leqslant\>L>;

    <item>any finite family <math|<around|(|r<rsub|i>|)><rsub|i\<in\>Y>> of
    measurable insertions with <math|w<rsub|i>,d<rsub|i>\<geqslant\>0>,
    <math|<around|\<lvert\>|r<rsub|i><around|(|\<omega\>,z|)>|\<rvert\>>\<leqslant\>w<rsub|i>*e<rsup|d<rsub|i>*<around|(|1+<around|\<lvert\>|z<rsub|a<rsub|i>>|\<rvert\>><rsup|2>+<around|\<lvert\>|z<rsub|b<rsub|i>>|\<rvert\>><rsup|2>|)>>>,
    and <math|<big|sum><rsub|i:<space|0.17em>x\<in\><around|{|a<rsub|i>,b<rsub|i>|}>>d<rsub|i>\<leqslant\>c=1/<around|(|24*L|)>>
    at every coordinate site <math|x>;

    <item>any <math|\<rho\>,H\<geqslant\>0> and sets <math|P,J\<subset\>I>;

    <item>any measurable <math|v> with <math|<around|\<lvert\>|v|\<rvert\>>\<leqslant\>H*<around|(|1+<big|sum><rsub|i\<in\>P><around|\<lvert\>|z<rsub|i>|\<rvert\>><rsup|2>|)><rsup|k>>
    that vanishes unless <math|<around|\<lvert\>|z<rsub|i>|\<rvert\>>\<geqslant\>\<rho\>>
    for all <math|i\<in\>J>.
  </itemize-minus>

  Then <math|f=v*<big|prod><rsub|i\<in\>Y>r<rsub|i>\<in\>L<rsup|1>*<around|(|\<mu\>\<otimes\>\<gamma\><rsub|C>|)>>
  and

  <\equation*>
    <big|int><around|\<lvert\>|f|\<rvert\>>*<space|0.17em>d*<around|(|\<mu\>\<otimes\>\<gamma\><rsub|C>|)>\<leqslant\>H*<space|0.17em>D*<space|0.17em><around|(|1+<around|\<lvert\>|P|\<rvert\>>*dim
    \<frak-g\>|)><rsup|2*k+1>*<space|0.17em>e<rsup|-c<around|\<lvert\>|J|\<rvert\>>*\<rho\><rsup|2>>*<space|0.17em>2<rsup|dim
    \<frak-g\><space|0.17em><around|\<lvert\>|J|\<rvert\>>>*<big|prod><rsub|i\<in\>Y><around*|(|e<rsup|c>*<space|0.17em>4<rsup|dim
    \<frak-g\>>*w<rsub|i>|)>.
  </equation*>

  In a sector, take <math|\<mu\>=<math-up|Haar><rsup|\<cal-F\><rsub|A>>> and
  <math|C=W<rsub|\<cal-W\>>>; III.4.3 supplies a uniform covariance cap.
  Moreover:

  <\itemize-minus>
    <item>(<hlink|<verbatim|r4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Ember.lean#L69-L111>)
    For measurable <math|q<rsub|i>> on the same product space, let
    <math|<around|\<lvert\>|q<rsub|i>|\<rvert\>>\<leqslant\>x<rsub|i><rsup|2>*<around|(|1+<around|\<lvert\>|z<rsub|a<rsub|i>>|\<rvert\>><rsup|2>+<around|\<lvert\>|z<rsub|b<rsub|i>>|\<rvert\>><rsup|2>|)>>
    with <math|0\<leqslant\>x<rsub|i>\<leqslant\>1> and
    <math|<big|sum><rsub|i\<ni\><text|site>>8*x<rsub|i>\<leqslant\>c>. Then
    <math|<big|int><around|(|<big|prod><rsub|i><around|(|e<rsup|q<rsub|i>>-1|)>|)><rsup|4>\<leqslant\><around|(|<big|prod><rsub|i>M*x<rsub|i>|)><rsup|4>>,
    with <math|M=M<around|(|G,L|)>>.

    <item>(<hlink|<verbatim|oasis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Echo.lean#L191-L223>)
    Fix a patch, a teller satisfying its branch condition and a covariance
    cap <math|L\<gtr\>0>. For large <math|x>, every funded step with that
    patch and <math|c\<geqslant\>100*<around|(|1+R<around|(|x|)>|)>>,
    matching flags, <math|0\<less\>d\<leqslant\>1>,
    <math|2*d\<less\>\<rho\><rsub|<math-up|first>>> and
    <math|\<beta\>\<in\><around|[|\<beta\><rsub|F><around|(|x,L<rsub|<math-up|block>>|)>/2,2*\<beta\><rsub|F><around|(|x,L<rsub|<math-up|block>>|)>|]>>
    has the fourth-moment insertion bounds above. The single-site exponents
    come from <math|\<eta\>\<cdot\>z> and the pair exponents from
    <math|<tfrac|1|2>z\<cdot\><around|(|C<rsup|-1>-W|)>*z>. Their weights are
    <math|D*e<rsup|-u*R<around|(|x|)>/480>> for sites and exponentially
    decaying in distance for pairs; the constants are fixed before the
    threshold in <math|x>, which may depend on the covariance cap.
  </itemize-minus>

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|same_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253>.

  <strong|Proposition III.4.9 (Gaussian insertions supported on selected
  coordinates).> Fix <math|p\<geqslant\>1>, a finite jet order, <math|G>, a
  patch and a teller satisfying the branch condition. There are post-<math|L>
  constants <math|K,M,s,b\<gtr\>0> and <math|B\<geqslant\>0> such that, for
  large <math|x>, the following holds. Take a funded step with that patch,
  <math|c\<geqslant\>100*<around|(|1+R<around|(|x|)>|)>> and matching flags.
  Fix any <math|g,d,\<theta\>\<gtr\>0>, frozen array and slot set <math|U>.
  Restrict the linear and quadratic correction to <math|U>, obtaining
  <math|t\<cdot\>z<rsub|U>+<tfrac|1|2>z<rsub|U>\<cdot\>\<cal-J\>*z<rsub|U>>,
  where <math|t=\<eta\>> and <math|\<cal-J\>=C<rsup|-1>-W>. Its tilted law is
  <math|N<around|(|\<cal-A\>*t<rsub|U>,\<cal-A\>|)>>, with
  <math|\<cal-A\>=<around|(|C<rsup|-1>-\<cal-J\><rsub|U>|)><rsup|-1>\<succ\>0>.
  The likelihood ratio of the <math|U>-marginals satisfies

  <\equation*>
    \<bbb-E\><rsub|\<gamma\><rsub|C,U>><around*|[|<around|(|d*N<rsub|U>/d*\<gamma\><rsub|C,U>|)><rsup|p>|]>\<leqslant\>exp
    <space|-0.17em><around*|(|2*p*<around*|(|<around|\<lvert\>|U|\<rvert\>>*\<ell\><rsup|2>/<around|(|4*\<theta\>|)>+2*K<around|\<lvert\>|U|\<rvert\>>*<around|(|\<theta\>+\<varepsilon\>/2|)>|)>|)>
  </equation*>

  whenever <math|K*p*<around|(|\<theta\>+\<varepsilon\>/2|)>\<leqslant\>1/4>.
  The parameters are:

  <\itemize-minus>
    <item><math|\<varepsilon\>=K*e<rsup|-b*R<around|(|x|)>>>;

    <item><math|\<ell\>=g<rsup|-1>*M<rsup|2>*e<rsup|-s*r<rsub|x>>*B*<space|0.17em><around|(|t<around|(|x|)>+d|)>>.
  </itemize-minus>

  The restriction is on <math|z>; coefficients may depend on all background
  and frozen data.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Physical.blocks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Consumer.lean#L167-L199>,
  built on <hlink|<verbatim|insert_letter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172>.

  <strong|Proposition III.4.10 (jets of the block coefficients and of the
  covariance).> Fix <math|G>, a patch <math|P>, a teller satisfying the
  branch condition, and an order <math|n>. There are
  <math|r,d,v,\<eta\>,\<lambda\><rsub|0>,C<rsub|\<ast\>>\<gtr\>0> such that
  for large <math|x> the following holds. Take every funded step with patch
  <math|P> and <math|c\<geqslant\>100*<around|(|1+R<around|(|x|)>|)>>, every
  <math|A,F,V> with matching flags, every <math|k>, and every logarithmic
  perturbation <math|B> of the background with
  <math|<around|\<lVert\>|B|\<rVert\>>\<leqslant\>r>. The store, forest and
  tags remain fixed as <math|B> varies. Then:

  <\itemize-minus>
    <item>the move matrix <math|M<around|(|B|)>> is real-analytic;

    <item><math|M>, <math|W=M<rsup|\<top\>>*M> and <math|C> satisfy weighted
    Schur bounds up to order <math|n>. For every list <math|\<ell\>> of at
    most <math|n> coordinate directions, with coarse positions
    <math|p<rsub|b>>, and output and input positions
    <math|p<rsub|i>,p<rsub|j>>,
  </itemize-minus>

  <\equation*>
    <big|prod><rsub|b\<in\>\<ell\>>e<rsup|d<space|0.17em><math-up|dist><around|(|p<rsub|b>,p<rsub|i>|)>>*<big|sum><rsub|j>e<rsup|d<space|0.17em><math-up|dist><around|(|p<rsub|i>,p<rsub|j>|)>>*<around|\<lvert\>|\<partial\><rsub|\<ell\>>*X<rsub|i*j><around|(|B|)>|\<rvert\>>\<leqslant\>C<rsub|\<ast\>>,
  </equation*>

  and the analogous column bound holds with the external weights anchored at
  <math|p<rsub|j>>;

  <\itemize-minus>
    <item><math|W<around|(|B|)>\<geqslant\>\<eta\>*I>,
    <math|C<around|(|B|)>\<geqslant\>\<lambda\><rsub|0>*I> and
    <math|C<around|(|B|)>\<succ\>0>;

    <item>for every <math|u\<geqslant\>0>, the full, principal and windowed
    resolvents have the same marked jet bounds with cap
    <math|C<rsub|\<ast\>>/<around|(|1+u|)>> at order zero and
    <math|C<rsub|\<ast\>>/<around|(|1+u|)><rsup|2>> at positive orders;

    <item>the window defect has marked jet cap
    <math|C<rsub|\<ast\>>*e<rsup|-v*R<around|(|x|)>>/<around|(|1+u|)>>, and
    the difference between the windowed and full resolvents has cap
    <math|C<rsub|\<ast\>>*e<rsup|-v*R<around|(|x|)>>/<around|(|1+u|)><rsup|2>>.
  </itemize-minus>

  The selected predictor rows are real-analytic, with <math|k>-jets bounded
  by constants depending only on <math|<around|(|G,P,K,k|)>>, on a ball of
  fixed radius (<hlink|<verbatim|sounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101>,
  <hlink|<verbatim|chosen_branch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Branch.lean#L140-L219>).
  The precision <math|W> is also real-analytic; covariance and resolvent
  conclusions are finite-order jet bounds.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|assembly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Covariance.lean#L146-L210>,
  <hlink|<verbatim|fromTeller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sky.lean#L62-L77>,
  <hlink|<verbatim|coverall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Roof.lean#L39-L62>,
  <hlink|<verbatim|stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Fund.lean#L120-L127>.

  <strong|Proposition III.4.11 (affine squares in the large-field annulus).>
  Fix a teller, a block size <math|L>, <math|W<rsub|0>\<gtr\>0>,
  <math|K\<in\>\<bbb-R\>> and an integer halo <math|D\<geqslant\>0>. There
  are <math|C\<geqslant\>1> and an eventually nonnegative function
  <math|e<around|(|x|)>> with <math|<around|(|1+R<around|(|x|)>|)><rsup|n>*\<beta\><rsub|F><around|(|x,L|)>*e<around|(|x|)>\<to\>0>
  for every <math|n\<in\>\<bbb-N\>>, such that for large <math|x> the
  following holds. Take a funded step of block size <math|L> with
  <math|c\<geqslant\>100*<around|(|1+R<around|(|x|)>|)>>, stores <math|O,A>,
  a forest <math|F>, fields <math|U,V> and tags <math|k>. Assume <math|U> is
  in tree gauge. In the <math|<around|(|D+5|)>*R<around|(|x|)>>-halo of
  <math|O>, assume the following local sector conditions: fine plaquettes
  whose support meets that halo and which belong to <math|A> have toll at
  least <math|t<rsub|L><around|(|x|)>/4>, those outside <math|A> have toll at
  most <math|t<rsub|L><around|(|x|)>/2>; block bonds whose support meets that
  halo and which belong to <math|A> have discrepancy at least
  <math|W<rsub|0>*t<rsub|L><around|(|x|)>>, those outside have discrepancy at
  most <math|2*W<rsub|0>*t<rsub|L><around|(|x|)>>; the coarse flags match
  <math|V>; and the chosen frames have positive mass. Then there is a
  direction <math|a>, vanishing on the tree links, such that for every pair
  of windows <math|H,Q> with <math|H<rsub|<math-up|face>>\<subseteq\>Q<rsub|<math-up|face>>>
  and <math|H<rsub|<math-up|noise>>\<subseteq\>Q<rsub|<math-up|noise>>>, and
  with the face, noise and coarse rows of <math|Q> in
  <math|<around|{|p\<nin\>A<rsup|<around|(|2*R|)>>,p\<in\>O<rsup|<around|(|D*R|)>>|}>>:

  <\itemize-minus>
    <item><math|Q> is charted by <math|a> with constant <math|C>;

    <item>the affine series on <math|H> converge, the required curvature and
    predictor derivatives exist with the stated linearisation, and
    <math|<math-up|work><rsub|Q>\<geqslant\><math-up|squares><rsub|H><around|(|a|)>-e<around|(|x|)><around|\<lvert\>|O|\<rvert\>>>;

    <item>for every other <math|a<rprime|'>> charting <math|H> with constant
    <math|K>, the same convergence, derivative statements and bound hold with
    <math|a<rprime|'>>.
  </itemize-minus>

  Here <math|<around|\||O|\|>> is the number of cost cells, aisles and flags.
  The comparison with <math|a<rprime|'>> uses uniqueness of the logarithm on
  the selected stencils.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|annulus_pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127>,
  with <hlink|<verbatim|cleans_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Clean.lean#L110-L208>
  and <hlink|<verbatim|reacts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CollarData.lean#L131-L189>.

  <strong|Proposition III.4.12 (production of the step constants).> Assume:

  <\itemize-minus>
    <item><math|G> is simple;

    <item>the kernel choices <math|K> satisfy the branch condition for every
    patch;

    <item>the initial stage is at least <math|4>; the jet orders, position
    orders and support exponents are nondecreasing, the support exponents are
    positive, and at stage <math|i> the two orders are at least <math|max
    <around|(|6,i|)>> and <math|max <around|(|2,i|)>>, respectively;

    <item>costs <math|C<rsub|i>\<geqslant\>1> are given.
  </itemize-minus>

  Then there are pre-<math|L> data with kernel <math|K> and the prescribed
  orders, two families of path prices, free-field and slope bounds, and a
  cost bound, with the following property. For every tariff and scope there
  is a sequence of block-size floors. After any increase of those floors and
  any choice of block sizes above them, there is a stagewise Hessian spectral
  gap <math|\<eta\>>. For every compatible post-<math|L> cost choice
  (spectral gap <math|\<eta\>>, activity cap at least <math|1>, and slope
  bound below the chosen cap), protection and initial delays, the delays can
  be enlarged so that the rate and chart conditions hold for all further
  enlargements. On every paid run with these data there are stationary path
  families, including the full stationary estimates in the retained family.
  For each adjacent stage pair <math|<around|(|j,i|)>> above the initial
  stage, the per-step chart conditions hold with
  <math|a<rsub|j*i>,E<rsub|j*i>> chosen after <math|L<rsub|j>>
  (<hlink|<verbatim|sponsored_permit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L139-L168>).
  <hlink|<verbatim|issue_cosmos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L99-L116>
  replaces each entry value by the maximum of its old value and the
  thresholds for <math|<around|(|j,j|)>> and <math|<around|(|j,j-1|)>>,
  preserving the rate conditions.

  <em|Status:> theorem under these kernel and order assumptions.

  <em|Lean:> <hlink|<verbatim|sailsV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154>,
  using <hlink|<verbatim|geared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|III.1:> block-spin maps, tree gauge, tags and predictors
    (<hlink|<verbatim|StepData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25>);
    the branch condition requires unique selected minimisers and an eligible
    axial gauge.

    <item><strong|II.2, III.5, III.8:> representations, activity bounds,
    large-field allocations and polymer summability
    (<hlink|<verbatim|Rep.Lawful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183>).

    <item><strong|III.10:> funded tubes, work rows, cutoffs, path bounds and
    compatible free metrics (<hlink|<verbatim|Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109>).

    <item><strong|III.3, III.6\UIII.7:> free-field estimates, stationary
    paths and fourth-order matching (<hlink|<verbatim|FullPaths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305>).

    <item><strong|III.2, III.9:> ordered constants, directed runs, selected
    histories and coupling bands.

    <item><strong|I.1, III.16:> Haar measure, exponential charts, analytic
    jets and Gaussian measures.

    <item><strong|Standard results:> Gaussian affine transport,
    Combes\UThomas, the resolvent integral for <math|log>, Neumann series,
    Gaussian integration by parts and analytic-strip Fourier decay.
  </itemize-minus>

  Constants are chosen before <math|L>, after <math|L>, then before the
  threshold in <math|x>. Packet-energy, support-exponent, chart, noise and
  representation assumptions in III.4.7 remain separate inputs.

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Keep links near the store as Haar variables and put the remaining links in
  exponential coordinates. Split off affine squares, shift by the windowed
  mean and divide by a Gaussian density; the linear and quadratic errors
  remain in the integrand. A local Poincaré inequality gives the precision's
  spectral gap, and decay estimates make its windowed inverse positive and
  exponentially close to the full inverse.

  Expand relative log-determinants into window and path terms, then collect
  terms near large-field cores. Packet energy absorbs their logarithmic cost;
  the remainder has a small polymer norm. Gaussian moments control
  exponential insertions, marked jets control background derivatives, and
  annulus estimates recover affine squares away from the store.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Chart transport and Gaussian scaling.> Under III.4.1's
    support and chart hypotheses, extended Jacobians and cutoffs preserve the
    sector integral and its integrability. Translate and dilate the Lebesgue
    variables, then expand the affine square to obtain the exact Gaussian
    formula. <hlink|Lean: <verbatim|authorized_change>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192>.

    <item><strong|Precision and windows.> Under III.4.3's hypotheses, a
    linkwise gauge choice compares predictor derivatives with the flat field,
    and the local Poincaré estimate absorbs the errors. Combes\UThomas bounds
    the window defect, giving III.4.4 and positivity. <hlink|Lean:
    <verbatim|Gap.not_flat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264>,
    <hlink|<verbatim|Schur.windows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L184-L239>.

    <item><strong|Admission along the run.> Under the funding and size
    hypotheses, axial gauge bounds active-link chords by a constant times
    <math|t<rsub|L><around|(|x|)>>, so the logarithmic chart gives the
    standing condition. With III.4.2\<#2019\>s run and band assumptions,
    enlarge stage thresholds, apply the sector identity to matching flags,
    and use vanishing for wrong flags to recover the push-forward.
    <hlink|Lean: <verbatim|matinee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L45-L119>,
    <hlink|<verbatim|committed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182>.

    <item><strong|Relative determinants.> Identity completion puts actual and
    flat precisions on the same coordinates. Under III.4.5\UIII.4.6's
    assumptions, the resolvent integral and Neumann series give window
    letters and closed paths, which are regrouped near cores. <hlink|Lean:
    <verbatim|Priced.chains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227>,
    <hlink|<verbatim|rate_pass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48>.

    <item><strong|Core suppression.> Under III.4.7's hypotheses, packet
    energy dominates core normalisation costs; the remaining terms have
    powers <math|y<rsup|-1/8>>, <math|y<rsup|-1/24>> or exponential decay.
    Clamping preserves core values on the cutoff support, and symmetrisation
    gives the <math|y<rsup|-1/48>> bound. <hlink|Lean:
    <verbatim|foreshadows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134>.
    <em|(proof read; some supporting path and interaction bounds statement
    only)>

    <item><strong|Gaussian moments and local insertions.> Under
    III.4.8\UIII.4.9's assumptions, exponential quadratic moments and
    polynomial moments control insertions and tails. A correction supported
    on selected coordinates has a likelihood ratio determined by those
    marginals. <hlink|Lean: <verbatim|same_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253>,
    <hlink|<verbatim|insert_letter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172>.
    <em|(moment and insertion proofs read; marginal-support assertion
    statement only)>

    <item><strong|Jets.> Under III.4.10's hypotheses, transplant predictor
    stencils to a fixed torus and use a local gauge to obtain uniform
    analytic rows. Perturbation preserves the precision's spectral gap and
    supplies the weighted inverse and window jet bounds. <hlink|Lean:
    <verbatim|sounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101>,
    <hlink|<verbatim|assembly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Covariance.lean#L146-L210>.
    <em|(predictor and precision proofs read; transport and cut-error bounds
    statement only)>

    <item><strong|Annulus squares and constants.> Under III.4.11's
    hypotheses, clean logarithmic coordinates give cubic row errors; summing
    the rows and discarding unselected positive squares proves the annulus
    bound. Under III.4.12's assumptions, choose stationary paths and block
    sizes, then enlarge delays and chart thresholds. <hlink|Lean:
    <verbatim|annulus_pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127>,
    <hlink|<verbatim|sailsV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154>.
    <em|(assembly and constant selection proofs read; clean-field
    construction and row recovery statement only)>
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The spectral gap requires a different gauge comparison for each link; its
  smallness radius comes from continuity. Inverse bounds spend decay rate
  while remaining uniform in volume and sector. Relative determinants compare
  different active dimensions, and the large-field threshold must absorb
  their core costs while preserving polymer summability.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <\itemize-minus>
    <item><strong|Symbol:> <math|\<gamma\><rsub|C>>

    <strong|Lean:> <hlink|<verbatim|Gaussian.cloud>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L31>

    <strong|Meaning:> Centred Gaussian <math|N<around|(|0,C|)>>.

    <item><strong|Symbol:> <math|\<cal-F\><rsub|A>,\<cal-A\><rsub|A>>

    <strong|Lean:> <hlink|<verbatim|chill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L38-L40>

    <strong|Meaning:> Frozen and active free links.

    <item><strong|Symbol:> <math|W=M<rsup|\<top\>>*M>

    <strong|Lean:> <hlink|<verbatim|Rows.gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L27>

    <strong|Meaning:> Precision of the affine squares.

    <item><strong|Symbol:> <math|C=W<rsub|\<cal-W\>>>

    <strong|Lean:> <hlink|<verbatim|fog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L69-L70>

    <strong|Meaning:> Symmetrised windowed inverse.

    <item><strong|Symbol:> <math|m<around|(|Y|)>>

    <strong|Lean:> <hlink|<verbatim|meanLog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L72-L74>

    <strong|Meaning:> Windowed mean.

    <item><strong|Symbol:> <math|\<kappa\><around|(|p|)>,\<Lambda\><around|(|p|)>>

    <strong|Lean:> <hlink|<verbatim|keptEarly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L50-L54>

    <strong|Meaning:> Relative log-normalisation and full log-integrand.
  </itemize-minus>

  <math|N<rsub|B<rsub|0>><around|(|X|)>> is the cover number; store size
  counts cost cells, aisles and flags.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  The simultaneous supply of III.4.7's packet-energy and support-exponent
  assumptions on the selected run, and the transfer of stationary paths to
  work rows, remain unexplained. Several supporting kernel, counting,
  transport and clean-field proofs were read only as statements. The
  free-kernel comparison is for flat sectors without frozen links under
  compatibility assumptions; no direct comparison for arbitrary interacting
  sectors was located. Downstream reset and repeatable-step results and the
  additional assigned packages remain unchecked; precise bibliographic
  references remain open.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-4.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.1|III-1.tm>,
  <hlink|III.11|III-11.tm>, <hlink|III.10|III-10.tm>, <hlink|III.7|III-7.tm>,
  <hlink|III.5|III-5.tm>, <hlink|III.16|III-16.tm>, <hlink|III.6|III-6.tm>,
  <hlink|II.2|II-2.tm>, <hlink|III.2|III-2.tm>, <hlink|III.9|III-9.tm>,
  <hlink|II.1|II-1.tm>, <hlink|III.8|III-8.tm>, <hlink|III.3|III-3.tm>,
  <hlink|III.15|III-15.tm>, <hlink|VIII.1|VIII-1.tm>.

  <strong|Referenced by:> <hlink|III.10|III-10.tm>, <hlink|III.11|III-11.tm>,
  <hlink|III.2|III-2.tm>, <hlink|VII.6|VII-6.tm>, <hlink|III.13|III-13.tm>,
  <hlink|III.9|III-9.tm>, <hlink|III.12|III-12.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|VII.1|VII-1.tm>, <hlink|III.15|III-15.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 37,956 attributed lines; 4,737 line-counted
  declarations; 5,885 assigned declaration names. Of the assigned names,
  5,618 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|foreshadows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134>
    \V 4,885 lines.

    <item>work package <hlink|<verbatim|YM/Push/FREE_RESOLVENT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT>
    \V 3,930 lines.

    <item>work package <hlink|<verbatim|YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE>
    \V 3,807 lines.

    <item>proof of <hlink|<verbatim|endures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Instruments.lean#L69-L86>
    \V 3,712 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS>
    \V 3,574 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/SECTOR_AFFINE_JETS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS>
    \V 2,712 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS>
    \V 1,903 lines.

    <item>work package <hlink|<verbatim|YM/SectorNext/LARGE_FIELD_REMAINDERS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS>
    \V 1,657 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS>
    \V 1,639 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE>
    \V 979 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Gaussian/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian>
    \V 957 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/MARGINAL_MULTIPLIER_3B1D/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/MARGINAL_MULTIPLIER_3B1D>
    \V 688 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT>
    \V 659 lines.

    <item>shared machinery (corollaries of endures) \V 641 lines.

    <item>work package <hlink|<verbatim|YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS>
    \V 636 lines.

    <item>shared machinery (corollaries of foreshadows) \V 602 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/LOCAL_GAUSSIAN_MULTIPLIER/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_MULTIPLIER>
    \V 601 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY>
    \V 593 lines.

    <item>work package <hlink|<verbatim|YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C>
    \V 497 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE_1AD/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE_1AD>
    \V 465 lines.

    <item>work package <hlink|<verbatim|YM/PhysicalNext/ACTUAL_SECTOR_FACTOR_DICTIONARY/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/ACTUAL_SECTOR_FACTOR_DICTIONARY>
    \V 462 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Trees/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Trees>,
    with <hlink|<verbatim|YM/WilsonBulk/Grid/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Grid>,
    <hlink|<verbatim|YM/WilsonBulk/Vacuum/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Vacuum>
    \V 454 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS>
    \V 391 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL>
    \V 220 lines.

    <item>work package <hlink|<verbatim|YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION>
    \V 174 lines.

    <item>work package <hlink|<verbatim|YM/MultiNext/VACUUM_STABILITY/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/VACUUM_STABILITY>
    \V 156 lines.

    <item>work package <hlink|<verbatim|YM/ProofPorts/COMMON_COMPLEX_PRODUCTION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/COMMON_COMPLEX_PRODUCTION>
    \V 153 lines.

    <item>work package <hlink|<verbatim|YM/Next/MULTISOURCE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MULTISOURCE>
    \V 105 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Flat/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat>
    \V 101 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Agenda/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Agenda>
    \V 90 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_GAUSSIAN_INTERFACE>
    \V 78 lines.

    <item>work package <hlink|<verbatim|YM/ProjectorNext/PROJECTOR_EQUIVARIANCE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProjectorNext/PROJECTOR_EQUIVARIANCE>
    \V 77 lines.

    <item>work package <hlink|<verbatim|YM/SectorNext/RECONNECTED_LOCALITY/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/RECONNECTED_LOCALITY>
    \V 70 lines.

    <item>work package <hlink|<verbatim|YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16>
    \V 58 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Broadcast/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Broadcast>
    \V 56 lines.

    <item>work package <hlink|<verbatim|YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH>
    \V 45 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Transit/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Transit>
    \V 34 lines.

    <item>work package <hlink|<verbatim|YM/PhysicalNext/ORDERED_AFFINE_2B/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/ORDERED_AFFINE_2B>
    \V 26 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Cash/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Cash>
    \V 26 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Heat/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Heat>
    \V 17 lines.

    <item>work package <hlink|<verbatim|YM/PhysicalNext/RECURSIVE_SECANTS_079/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RECURSIVE_SECANTS_079>
    \V 11 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Tuning/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Tuning>
    \V 6 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Series/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Series>
    \V 3 lines.

    <item>work package <hlink|<verbatim|YM/Progress/CLASSICAL_KIN_RECURSION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/CLASSICAL_KIN_RECURSION>
    \V 2 lines.

    <item>work package <hlink|<verbatim|YM/Primitives/TWO_WAVE_TRACE_DENSITY/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/TWO_WAVE_TRACE_DENSITY>
    \V 1 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Invert/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Invert>
    \V 1 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Staves/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Staves>
    \V 1 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Tickets/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Tickets>
    \V 1 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|letterBase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L45-L46>

    <item><hlink|<verbatim|excess>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Walls.lean#L35>

    <item><hlink|<verbatim|ChartRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23-L26>

    <item><hlink|<verbatim|LocalRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38>

    <item><hlink|<verbatim|rents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L32>

    <item><hlink|<verbatim|nightly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L35>

    <item><hlink|<verbatim|bills>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L71-L89>

    <item><hlink|<verbatim|wages>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L90-L114>

    <item><hlink|<verbatim|issued>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L27-L35>

    <item><hlink|<verbatim|paltry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L52-L65>

    <item><hlink|<verbatim|Petty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Petty.lean#L28-L29>

    <item><hlink|<verbatim|introTax>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L31>

    <item><hlink|<verbatim|showTax>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L32>

    <item><hlink|<verbatim|billIt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L60-L77>

    <item><hlink|<verbatim|ranked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Spreaders.lean#L53-L61>

    <item><hlink|<verbatim|minimum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Spreaders.lean#L82-L89>

    <item><hlink|<verbatim|garlic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Stocks.lean#L21>

    <item><hlink|<verbatim|center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Turret.lean#L74>

    <item><hlink|<verbatim|radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>

    <item><hlink|<verbatim|temp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25>

    <item><hlink|<verbatim|fiery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26>

    <item><hlink|<verbatim|Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>

    <item><hlink|<verbatim|protected_pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Broad.lean#L115-L120>

    <item><hlink|<verbatim|coupling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L35>

    <item><hlink|<verbatim|recolored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L73-L93>

    <item><hlink|<verbatim|chartCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L103-L104>

    <item><hlink|<verbatim|at_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L117-L125>

    <item><hlink|<verbatim|cloud_formula>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L134-L156>

    <item><hlink|<verbatim|Gaussian.gauged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L204-L210>

    <item><hlink|<verbatim|force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L79>

    <item><hlink|<verbatim|log_transport>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L143-L162>

    <item><hlink|<verbatim|Schur.inverse_tilt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Inverse.lean#L74-L121>

    <item><hlink|<verbatim|spare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Ledger.lean#L34>

    <item><hlink|<verbatim|compose_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L102-L105>

    <item><hlink|<verbatim|Rows.adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L128-L146>

    <item><hlink|<verbatim|Gapped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Schur.lean#L110>

    <item><hlink|<verbatim|Pours>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Schur.lean#L25-L28>

    <item><hlink|<verbatim|sheltered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L76-L109>

    <item><hlink|<verbatim|Schur.provides>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L103-L119>

    <item><hlink|<verbatim|Schur.per>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L67-L68>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-4-1>

  <\itemize-minus>
    <item><strong|K-III.4.1> <hlink|<verbatim|gathered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Margins.lean#L51-L75>
    <em|(numbered result)> \V A linear map of a Gaussian vector with PSD
    covariance is Gaussian with the transformed covariance,
    measure-preservingly.
  </itemize-minus>

  <label|k-iii-4-2>

  <\itemize-minus>
    <item><strong|K-III.4.2> <hlink|<verbatim|still>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_MULTIPLIER/TicketsChart.lean#L63-L107>
    <em|(numbered result)> \V For a smooth function vanishing to first order
    at 0, rescaling by d in (0,1] gives Taylor-type jet bounds of size
    W<ym-middot>d\<twosuperior\> uniformly on a ball.
  </itemize-minus>

  <label|k-iii-4-3>

  <\itemize-minus>
    <item><strong|K-III.4.3> <hlink|<verbatim|passports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Currencies.lean#L127-L150>
    <em|(key result)> \V Under volume-growth hypotheses and a smallness
    condition, a counting inventory of clusters satisfies a summable
    total-cost bound.
  </itemize-minus>

  <label|k-iii-4-4>

  <\itemize-minus>
    <item><strong|K-III.4.4> <hlink|<verbatim|publish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Fold.lean#L139-L180>
    <em|(key result)> \V A family of finite-volume operators with uniform
    exponential off-diagonal decay is realized by a single infinite-volume
    kernel with a slightly weaker decay rate restricting to each of them.
  </itemize-minus>

  <label|k-iii-4-5>

  <\itemize-minus>
    <item><strong|K-III.4.5> <hlink|<verbatim|strip_resolvent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Metric.lean#L30-L37>
    <em|(key result)> \V A strip-decaying kernel with a uniform spectral gap
    has an inverse of the resolvent type that is again strip-decaying with
    explicit degraded rate and constant.
  </itemize-minus>

  <label|k-iii-4-6>

  <\itemize-minus>
    <item><strong|K-III.4.6> <hlink|<verbatim|carried>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Visits.lean#L81-L120>
    <em|(numbered result)> \V A jet budget at a walk endpoint transfers to
    the start with factor exponential in walk length via adjoint transport.
  </itemize-minus>

  <label|k-iii-4-7>

  <\itemize-minus>
    <item><strong|K-III.4.7> <hlink|<verbatim|follows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Tracks.lean#L36-L89>
    <em|(numbered result)> \V A pointwise jet-budget bound on target
    endpoints transfers to a bound on a sum over covered walks with
    exponential-in-length control.
  </itemize-minus>

  <label|k-iii-4-8>

  <\itemize-minus>
    <item><strong|K-III.4.8> <hlink|<verbatim|fires>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Parade.lean#L56-L90>
    <em|(numbered result)> \V A tail-weighted polynomial bill is dominated by
    an exponentially decaying quantity in the trigger count for large x.
  </itemize-minus>

  <label|k-iii-4-9>

  <\itemize-minus>
    <item><strong|K-III.4.9> <hlink|<verbatim|charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Due.lean#L70-L87>
    <em|(numbered result)> \V A function with finite-range locality around a
    site, vanishing when far from it, has pointwise jet dues with exponential
    weight in the radius.
  </itemize-minus>

  <label|k-iii-4-10>

  <\itemize-minus>
    <item><strong|K-III.4.10> <hlink|<verbatim|local_prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/SmallArc.lean#L28-L60>
    <em|(key result)> \V Under local volume growth and derivative bounds, the
    free resolvent jets satisfy a polarized row/column budget bound with
    explicit altitude.
  </itemize-minus>

  <label|k-iii-4-11>

  <\itemize-minus>
    <item><strong|K-III.4.11> <hlink|<verbatim|coordinates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Coordinates.lean#L126-L179>
    <em|(key result)> \V For small coordinate perturbations, the field
    entries and scene fields admit uniform derivative bounds with constants
    depending only on the gauge and order.
  </itemize-minus>

  <label|k-iii-4-12>

  <\itemize-minus>
    <item><strong|K-III.4.12> <hlink|<verbatim|transport_rows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/TrueTransport.lean#L257-L299>
    <em|(key result)> \V Transport rows built from path data decaying at rate
    \<sigma\> are priced bundles with exponentially small bounds in the
    minimal path length.
  </itemize-minus>

  <label|k-iii-4-13>

  <\itemize-minus>
    <item><strong|K-III.4.13> <hlink|<verbatim|bound_plotted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Visits.lean#L135-L195>
    <em|(numbered result)> \V Jet budgets for the plotted path data follow
    from toll bounds on nearby cells with geometric collapse over cut labels.
  </itemize-minus>

  <label|k-iii-4-14>

  <\itemize-minus>
    <item><strong|K-III.4.14> <hlink|<verbatim|slots>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Prices.lean#L151-L182>
    <em|(numbered result)> \V The negative log of the spare ratio is bounded
    by a constant times one plus the log of the scale.
  </itemize-minus>

  <label|k-iii-4-15>

  <\itemize-minus>
    <item><strong|K-III.4.15> <hlink|<verbatim|release_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L167-L184>
    <em|(key result)> \V Integrals over link arrays can be rewritten as
    integrals over log coordinates by exponential substitution, with a
    Jacobian and indicator of the chart domain.
  </itemize-minus>

  <label|k-iii-4-16>

  <\itemize-minus>
    <item><strong|K-III.4.16> <hlink|<verbatim|authentic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Trace.lean#L228-L253>
    <em|(key result)> \V For a Gaussian measure, the exponential of a
    quadratic-plus-linear exponent with small weights is integrable with
    integral at most exp(2 trace), with trace counted over actual uses.
  </itemize-minus>

  <label|k-iii-4-17>

  <\itemize-minus>
    <item><strong|K-III.4.17> <hlink|<verbatim|amount>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Moment.lean#L67-L71>
    <em|(key result)> \V Under a base condition, the exponential of a sum of
    charges is Gaussian-integrable with integral at most exp(2 times the due
    quantity).
  </itemize-minus>

  <label|k-iii-4-18>

  <\itemize-minus>
    <item><strong|K-III.4.18> <hlink|<verbatim|natural>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/ColourBooks.lean#L163-L192>
    <em|(numbered result)> \V Windowed compressed covariance of ordered
    columns commutes with complete-block reindexing, for all u, even in
    singular cases and without symmetry.
  </itemize-minus>

  <label|k-iii-4-19>

  <\itemize-minus>
    <item><strong|K-III.4.19> <hlink|<verbatim|moves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Binding.lean#L116-L134>
    <em|(numbered result)> \V Under a change of site set and color-block
    projection, the windowed Gaussian covariance and mean transform naturally
    with the induced windows.
  </itemize-minus>

  <label|k-iii-4-20>

  <\itemize-minus>
    <item><strong|K-III.4.20> <hlink|<verbatim|windows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L184-L239>
    <em|(key result)> \V For symmetric gapped covariances with decay, the
    window-compressed covariance approximates the inverse with exponentially
    small error in radius, and is gapped and positive definite for large
    radius.
  </itemize-minus>

  <label|k-iii-4-21>

  <\itemize-minus>
    <item><strong|K-III.4.21> <hlink|<verbatim|side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY/Frozen.lean#L83-L106>
    <em|(numbered result)> \V The active-column block of the windowed matrix
    of an enlarged system equals the windowed matrix of the original system.
  </itemize-minus>

  <label|k-iii-4-22>

  <\itemize-minus>
    <item><strong|K-III.4.22> <hlink|<verbatim|fluctuate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Packets.lean#L85-L113>
    <em|(numbered result)> \V Uniform finite bound on the fluctuation
    (log-ratio) cost in a real logarithm neighborhood of the parameter.
  </itemize-minus>

  <label|k-iii-4-23>

  <\itemize-minus>
    <item><strong|K-III.4.23> <hlink|<verbatim|thaw_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L225-L253>
    <em|(numbered result)> \V Iterated integration formula after exponential
    substitution on relative links for bounded functions supported where the
    chart condition holds, with integrability.
  </itemize-minus>

  <label|k-iii-4-24>

  <\itemize-minus>
    <item><strong|K-III.4.24> <hlink|<verbatim|produce>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/LocalPolynomial.lean#L58-L67>
    <em|(key result)> \V A complex local polynomial of bounded degree,
    supported on a marked set with weights and magnitudes controlled,
    compiles to the ordered probe class with the stated read-set and cost
    bound.
  </itemize-minus>

  <label|k-iii-4-25>

  <\itemize-minus>
    <item><strong|K-III.4.25> <hlink|<verbatim|poly_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/Polynomial.lean#L82-L85>
    \V Any complex polynomial of bounded total degree is moderate on the
    committed marginals with bound coefficient norm times a normal price.
  </itemize-minus>

  <label|k-iii-4-26>

  <\itemize-minus>
    <item><strong|K-III.4.26> <hlink|<verbatim|impression>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Press.lean#L123-L155>
    <em|(numbered result)> \V There is a common finite reference frame so
    actual block predictors exist for all sufficiently large coarse sides.
  </itemize-minus>

  <label|k-iii-4-27>

  <\itemize-minus>
    <item><strong|K-III.4.27> <hlink|<verbatim|uses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/Tags.lean#L97-L112>
    <em|(numbered result)> \V The uniform average of a product of functions
    depending on pairwise disjoint tag sets factorizes into the product of
    averages.
  </itemize-minus>

  <label|k-iii-4-28>

  <\itemize-minus>
    <item><strong|K-III.4.28> <hlink|<verbatim|aperture>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Pan.lean#L57-L122>
    <em|(key result)> \V For a gapped, finite-range, symmetric covariance
    family with rate bounds, the localized installed estimate holds uniformly
    with exponential decay at large scale.
  </itemize-minus>

  <label|k-iii-4-29>

  <\itemize-minus>
    <item><strong|K-III.4.29> <hlink|<verbatim|charts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/AffineCharts.lean#L51-L121>
    <em|(numbered result)> \V An analytic function vanishing at zero and
    matching a tangent map on one slice differs from the affine response by
    O(u\<twosuperior\>) on small balls.
  </itemize-minus>

  <label|k-iii-4-30>

  <\itemize-minus>
    <item><strong|K-III.4.30> <hlink|<verbatim|linear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/NearJet.lean#L159-L187>
    <em|(numbered result)> \V For a real-analytic map near zero, the
    first-derivative remainder is bounded by a constant times the parameter
    size in a small ball.
  </itemize-minus>

  <label|k-iii-4-31>

  <\itemize-minus>
    <item><strong|K-III.4.31> <hlink|<verbatim|stocked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Completion.lean#L181-L212>
    <em|(numbered result)> \V On inactive positions the identity completion
    gives the identity completion of the integral's covariance, omitting no
    zero modes.
  </itemize-minus>

  <label|k-iii-4-32>

  <\itemize-minus>
    <item><strong|K-III.4.32> <hlink|<verbatim|regularized_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L142-L199>
    <em|(key result)> \V At fixed volume the iterated sector integral equals
    an exact formula, with absolute integrability, for a chart ratio and
    enveloped observable.
  </itemize-minus>

  <label|k-iii-4-33>

  <\itemize-minus>
    <item><strong|K-III.4.33> <hlink|<verbatim|wide>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Tracks.lean#L134-L161>
    <em|(numbered result)> \V Pointwise jet budgets at all sites within
    distance R transfer to a budget for the finite-range kernel applied to
    the data.
  </itemize-minus>

  <label|k-iii-4-34>

  <\itemize-minus>
    <item><strong|K-III.4.34> <hlink|<verbatim|cleans_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Clean.lean#L110-L208>
    <em|(key result)> \V Under wide-field and funding hypotheses, there is a
    uniform constant and a direction vanishing on trunks such that all swept
    sites are clean for large x.
  </itemize-minus>

  <label|k-iii-4-35>

  <\itemize-minus>
    <item><strong|K-III.4.35> <hlink|<verbatim|freshQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Duplicated.lean#L52-L101>
    <em|(numbered result)> \V The copied Q table's prediction map is, up to
    gauge endpoint factors, a contraction-bounded linear paste of the coarse
    and fine directions.
  </itemize-minus>

  <label|k-iii-4-36>

  <\itemize-minus>
    <item><strong|K-III.4.36> <hlink|<verbatim|block_comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Block.lean#L316-L361>
    <em|(key result)> \V For small fields in a local stencil, the branch
    derivative on a block is comparable to the left-trivialized group
    differential with uniform constants over all steps.
  </itemize-minus>

  <label|k-iii-4-37>

  <\itemize-minus>
    <item><strong|K-III.4.37> <hlink|<verbatim|near_collective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/AffineRows.lean#L184-L192>
    <em|(numbered result)> \V Near zero, the affine collective kernel equals
    the individual kernel for all choices and orientations.
  </itemize-minus>

  <label|k-iii-4-38>

  <\itemize-minus>
    <item><strong|K-III.4.38> <hlink|<verbatim|plotted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Ink.lean#L93-L120>
    <em|(numbered result)> \V Block predictor chart maps are real-analytic
    with jet bounds uniform near zero on each fixed torus.
  </itemize-minus>

  <label|k-iii-4-39>

  <\itemize-minus>
    <item><strong|K-III.4.39> <hlink|<verbatim|sounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101>
    <em|(key result)> \V All mixed derivatives up to order k of the block
    coefficients on the selected row are bounded uniformly, and analytic, in
    a neighborhood of radius r.
  </itemize-minus>

  <label|k-iii-4-40>

  <\itemize-minus>
    <item><strong|K-III.4.40> <hlink|<verbatim|reacts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CollarData.lean#L131-L189>
    <em|(key result)> \V For large scale x, large-field remainder estimates
    hold uniformly over all admissible steps and tubes, with constants and a
    weak radius decaying faster than any power.
  </itemize-minus>

  <label|k-iii-4-41>

  <\itemize-minus>
    <item><strong|K-III.4.41> <hlink|<verbatim|bump_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/NONFLAT_COVARIANCE_LOCALITY/Either.lean#L27-L58>
    <em|(numbered result)> \V If two data agree within a radius, the
    corresponding bump rows agree at entries whose separation plus patch span
    is within the radius.
  </itemize-minus>

  <label|k-iii-4-42>

  <\itemize-minus>
    <item><strong|K-III.4.42> <hlink|<verbatim|sub_gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/AffineMatch.lean#L162-L175>
    <em|(numbered result)> \V The Gram matrix of the cut selected precision
    equals a submatrix of the repaired matrix.
  </itemize-minus>

  <label|k-iii-4-43>

  <\itemize-minus>
    <item><strong|K-III.4.43> <hlink|<verbatim|notarized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/CutGerm.lean#L110-L129>
    <em|(key result)> \V Near zero, the active and raw matrices of the
    no-hole cut comparison agree in a flat neighborhood.
  </itemize-minus>

  <label|k-iii-4-44>

  <\itemize-minus>
    <item><strong|K-III.4.44> <hlink|<verbatim|not_flat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264>
    <em|(key result)> \V There is a uniform positive lower bound on the
    precision (Gram) form of active prices at flag-correct volumes, valid for
    all large temperatures and admissible steps.
  </itemize-minus>

  <label|k-iii-4-45>

  <\itemize-minus>
    <item><strong|K-III.4.45> <hlink|<verbatim|shared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Bore.lean#L303-L305>
    <em|(numbered result)> \V The determinant of the flat kinetic precision
    matrix is the same for two admissible chart choices, so normalized
    Jacobians drop out.
  </itemize-minus>

  <label|k-iii-4-46>

  <\itemize-minus>
    <item><strong|K-III.4.46> <hlink|<verbatim|late_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Year.lean#L113-L197>
    <em|(key result)> \V For large scale x, uniformly over admissible step
    data, the actual transforms satisfy certified fixed-L price bounds with
    uniform constants.
  </itemize-minus>

  <label|k-iii-4-47>

  <\itemize-minus>
    <item><strong|K-III.4.47> <hlink|<verbatim|open_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SHARP_NORMALIZED_TAIL/Apertures.lean#L43-L55>
    <em|(key result)> \V The relevant Gaussian covariance is positive
    definite with a uniform cap for all keys and placements with correct
    flags.
  </itemize-minus>

  <label|k-iii-4-48>

  <\itemize-minus>
    <item><strong|K-III.4.48> <hlink|<verbatim|ground_supply>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorData.lean#L88-L110>
    <em|(key result)> \V For a patch and teller, uniform constants exist such
    that all non-higher-order ground estimates hold on every large-scale
    step, tube and configuration.
  </itemize-minus>

  <label|k-iii-4-49>

  <\itemize-minus>
    <item><strong|K-III.4.49> <hlink|<verbatim|laplace_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Laplace.lean#L70-L85>
    <em|(numbered result)> \V An exponential of an observable bounded by a
    quadratic-type penalty is integrable under a Gaussian with covariance
    ceiling, with an explicit bound.
  </itemize-minus>

  <label|k-iii-4-50>

  <\itemize-minus>
    <item><strong|K-III.4.50> <hlink|<verbatim|shifted_heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/Hot.lean#L84-L107>
    <em|(numbered result)> \V A shifted Gaussian covariance with a billed
    exponential budget and bounded shift satisfies the joint exponential
    test.
  </itemize-minus>

  <label|k-iii-4-51>

  <\itemize-minus>
    <item><strong|K-III.4.51> <hlink|<verbatim|chosen_branch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Branch.lean#L140-L219>
    <em|(key result)> \V Predictor rows of the selected block have uniformly
    bounded mixed derivatives in a uniform ball of field parameters, with a
    single local gauge branch.
  </itemize-minus>

  <label|k-iii-4-52>

  <\itemize-minus>
    <item><strong|K-III.4.52> <hlink|<verbatim|selected_priced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/EntryBounds.lean#L186-L243>
    <em|(numbered result)> \V Kernel entries of the selected rows satisfy
    uniform two-sided derivative/price bounds in the price coordinates of a
    small ball.
  </itemize-minus>

  <label|k-iii-4-53>

  <\itemize-minus>
    <item><strong|K-III.4.53> <hlink|<verbatim|precision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Neighborhood.lean#L122-L159>
    <em|(key result)> \V Marked precision jets yield a period-uniform
    neighborhood in which the flat-comparison gap persists under perturbation
    of the base field with flags fixed.
  </itemize-minus>

  <label|k-iii-4-54>

  <\itemize-minus>
    <item><strong|K-III.4.54> <hlink|<verbatim|assembly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Covariance.lean#L146-L210>
    <em|(key result)> \V For a branch-certified patch, the selected-sector
    source object admits kernel jets of every finite order with uniform
    positive constants on a price-coordinate ball.
  </itemize-minus>

  <label|k-iii-4-55>

  <\itemize-minus>
    <item><strong|K-III.4.55> <hlink|<verbatim|estimates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Residual.lean#L153-L187>
    <em|(key result)> \V On the actual selected Gaussian's inverse, there are
    uniform constants giving the cost and multiplier-defect estimates for
    small price coordinates.
  </itemize-minus>

  <label|k-iii-4-56>

  <\itemize-minus>
    <item><strong|K-III.4.56> <hlink|<verbatim|projecting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/TreeInverse.lean#L64-L115>
    <em|(key result)> \V The tree inverse of the quadratic slice Hessian is
    obtained by projecting the inverse of the joint completion, rather than
    estimated by kernel closeness.
  </itemize-minus>

  <label|k-iii-4-57>

  <\itemize-minus>
    <item><strong|K-III.4.57> <hlink|<verbatim|cutHead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/TellerFold.lean#L118-L146>
    <em|(key result)> \V The plane-tree-inverse covariance of the ideal free
    head equals the Gaussian conditional covariance tensor for any
    tag-consistent tree.
  </itemize-minus>

  <label|k-iii-4-58>

  <\itemize-minus>
    <item><strong|K-III.4.58> <hlink|<verbatim|authorized_change>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192>
    <em|(key result)> \V Under permitted Gaussian data, the actual sector
    integral admits an exact Gaussian change-of-variables formula with
    controlled price, licensing the downstream application.
  </itemize-minus>

  <label|k-iii-4-59>

  <\itemize-minus>
    <item><strong|K-III.4.59> <hlink|<verbatim|committed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182>
    <em|(key result)> \V Under the stated hypotheses, the committed
    renormalization-group integral is licensed: all displayed integrals are
    valid and the sector-change identity holds at each scale step.
  </itemize-minus>

  <label|k-iii-4-60>

  <\itemize-minus>
    <item><strong|K-III.4.60> <hlink|<verbatim|prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Center.lean#L115-L151>
    <em|(key result)> \V Uniform constants exist so that, for all large x,
    the affine pricing data satisfy estimates on a ball of coordinates and a
    shift bound.
  </itemize-minus>

  <label|k-iii-4-61>

  <\itemize-minus>
    <item><strong|K-III.4.61> <hlink|<verbatim|openings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Desk.lean#L42-L107>
    <em|(numbered result)> \V For a local ratio chart there exist constants
    such that aperture and sponsored conditions hold for all large x.
  </itemize-minus>

  <label|k-iii-4-62>

  <\itemize-minus>
    <item><strong|K-III.4.62> <hlink|<verbatim|fromTeller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sky.lean#L62-L77>
    <em|(main result)> \V For a fixed patch and gauge and teller data, there
    exist positive constants such that for all large x the sector covariance
    jet estimate holds with exact Gaussian endpoint metric.
  </itemize-minus>

  <label|k-iii-4-63>

  <\itemize-minus>
    <item><strong|K-III.4.63> <hlink|<verbatim|authorized_loans>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/AuthorizedLoans.lean#L44-L61>
    <em|(key result)> \V Ground, higher-derivative and query bounds for
    selected ordered kernels hold uniformly without extra jet input
    hypotheses.
  </itemize-minus>

  <label|k-iii-4-64>

  <\itemize-minus>
    <item><strong|K-III.4.64> <hlink|<verbatim|trusting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Deposit.lean#L68-L93>
    <em|(key result)> \V Uniformly for large x, gap and integrable-calculus
    (TestD) hypotheses hold on a germ neighborhood for the actual data.
  </itemize-minus>

  <label|k-iii-4-65>

  <\itemize-minus>
    <item><strong|K-III.4.65> <hlink|<verbatim|headComparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Ideal.lean#L120-L144>
    <em|(key result)> \V The physical free horizon-linked inverse is compared
    with the ideal one with a positive exponential rate chosen post-L.
  </itemize-minus>

  <label|k-iii-4-66>

  <\itemize-minus>
    <item><strong|K-III.4.66> <hlink|<verbatim|commissioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorLie.lean#L126-L134>
    <em|(key result)> \V Ground bounds exist with constants, and any
    higher-derivative request yields a query bound with combined constants.
  </itemize-minus>

  <label|k-iii-4-67>

  <\itemize-minus>
    <item><strong|K-III.4.67> <hlink|<verbatim|freeHead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/HeadSwitch.lean#L104-L143>
    <em|(key result)> \V For large volume, zeroth-order Gaussian exchange
    holds: the actual free covariance is exponentially close to the ideal
    horizon-linked covariance with uniform constants.
  </itemize-minus>

  <label|k-iii-4-68>

  <\itemize-minus>
    <item><strong|K-III.4.68> <hlink|<verbatim|total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Taylor.lean#L73-L108>
    <em|(key result)> \V The full affine inverse germ's jet discrepancy
    against spatial marks is bounded by an exponential window loss plus a
    path-cut loss on the same tree and data.
  </itemize-minus>

  <label|k-iii-4-69>

  <\itemize-minus>
    <item><strong|K-III.4.69> <hlink|<verbatim|earned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L67-L103>
    <em|(key result)> \V Given a strip-bounded metric with gap, there is a
    strip-decaying operator whose restriction to each period equals the
    plane-tree-inverse conditional covariance form.
  </itemize-minus>

  <label|k-iii-4-70>

  <\itemize-minus>
    <item><strong|K-III.4.70> <hlink|<verbatim|bought>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Stead.lean#L94-L117>
    <em|(numbered result)> \V A uniform bundle price bound, with constants
    chosen before the orbit, trees and volume, holds for large x.
  </itemize-minus>

  <label|k-iii-4-71>

  <\itemize-minus>
    <item><strong|K-III.4.71> <hlink|<verbatim|entries>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Quote.lean#L99-L127>
    <em|(numbered result)> \V For large parameter, the move-matrix entries
    satisfy derivative bounds up to order k on a uniform real neighborhood.
  </itemize-minus>

  <label|k-iii-4-72>

  <\itemize-minus>
    <item><strong|K-III.4.72> <hlink|<verbatim|face_payment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/RowStack.lean#L117-L130>
    <em|(numbered result)> \V Face kicks satisfy derivative bounds with a
    uniform face cost across all channels and geometries.
  </itemize-minus>

  <label|k-iii-4-73>

  <\itemize-minus>
    <item><strong|K-III.4.73> <hlink|<verbatim|fine_squares>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/AffineRows.lean#L157-L209>
    <em|(numbered result)> \V Affine approximation of curvature squares along
    actual paths is controlled by the local deviation bounds in a tube.
  </itemize-minus>

  <label|k-iii-4-74>

  <\itemize-minus>
    <item><strong|K-III.4.74> <hlink|<verbatim|joint_universal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/Completion.lean#L62-L110>
    <em|(key result)> \V For each j\<geqslant\>4 there is a uniform \<sigma\>
    such that every branching patch with J=j admits a row inverse with strip
    bound for the flat Gaussian completion, uniform over scales.
  </itemize-minus>

  <label|k-iii-4-75>

  <\itemize-minus>
    <item><strong|K-III.4.75> <hlink|<verbatim|before_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CorePacket.lean#L151-L160>
    <em|(key result)> \V Beyond some scale, the before-L ledger and
    point-charge bounds hold for all large x and admissible steps.
  </itemize-minus>

  <label|k-iii-4-76>

  <\itemize-minus>
    <item><strong|K-III.4.76> <hlink|<verbatim|quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/SameQuote.lean#L216-L232>
    <em|(key result)> \V The actual ordered kernels and their probability
    covariances are compared to Gaussian ones at the same Gram matrix with
    uniform constants, eventually in the parameter.
  </itemize-minus>

  <label|k-iii-4-77>

  <\itemize-minus>
    <item><strong|K-III.4.77> <hlink|<verbatim|freezer_row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/PeriodicInverse.lean#L104-L139>
    <em|(key result)> \V A frozen periodic inverse yields a row inverse with
    strip bound whose constants depend only on the slab, uniformly in period.
  </itemize-minus>

  <label|k-iii-4-78>

  <\itemize-minus>
    <item><strong|K-III.4.78> <hlink|<verbatim|patch_agreed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Collar.lean#L52-L107>
    <em|(numbered result)> \V Squares and charges on a coarse site's patch
    depend only on inputs agreeing on that patch, regardless of other
    choices.
  </itemize-minus>

  <label|k-iii-4-79>

  <\itemize-minus>
    <item><strong|K-III.4.79> <hlink|<verbatim|coverall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Roof.lean#L39-L62>
    <em|(key result)> \V For each finite order there exist uniform constants
    such that, for large scale, the sector-change covariance presentation
    (Sky and Deck bounds) holds.
  </itemize-minus>

  <label|k-iii-4-80>

  <\itemize-minus>
    <item><strong|K-III.4.80> <hlink|<verbatim|onePlateau>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L114-L136>
    <em|(main result)> \V There is a single exponentially localized operator
    that simultaneously represents the conditional covariance for all
    admissible steps and has exponentially small differences under
    shortening.
  </itemize-minus>

  <label|k-iii-4-81>

  <\itemize-minus>
    <item><strong|K-III.4.81> <hlink|<verbatim|shortening>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/AffineResolvent.lean#L81-L100>
    <em|(key result)> \V After cutting at radius R, the k-jet of the affine
    inverse germ differs from the original by an exponentially small error
    including position and energy cost.
  </itemize-minus>

  <label|k-iii-4-82>

  <\itemize-minus>
    <item><strong|K-III.4.82> <hlink|<verbatim|residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorWindows.lean#L139-L165>
    <em|(numbered result)> \V The residual window term is small in chart
    bundle, exponentially in radius, at all derivative orders.
  </itemize-minus>

  <label|k-iii-4-83>

  <\itemize-minus>
    <item><strong|K-III.4.83> <hlink|<verbatim|knows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/AffineResolvent.lean#L65-L74>
    <em|(numbered result)> \V Affine inverse jet outputs are controlled in
    the actual unselected no-hole geometry without assuming a gap.
  </itemize-minus>

  <label|k-iii-4-84>

  <\itemize-minus>
    <item><strong|K-III.4.84> <hlink|<verbatim|haar_operators>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/HaarOperators.lean#L71-L83>
    <em|(key result)> \V Marginal input estimates for Haar operator ordered
    kernels hold eventually with uniform constants for all admissible steps.
  </itemize-minus>

  <label|k-iii-4-85>

  <\itemize-minus>
    <item><strong|K-III.4.85> <hlink|<verbatim|annulus_pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127>
    <em|(key result)> \V For large fields, annulus contributions admit chart
    bounds and super-polynomially small error with affine direction selection
    uniformly over steps.
  </itemize-minus>

  <label|k-iii-4-86>

  <\itemize-minus>
    <item><strong|K-III.4.86> <hlink|<verbatim|preflight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Trees/Pressure.lean#L69-L82>
    <em|(key result)> \V There exists a sequence of scales, one for each
    level, such that covariance models serve with constants for all patches
    and horizons.
  </itemize-minus>

  <label|k-iii-4-87>

  <\itemize-minus>
    <item><strong|K-III.4.87> <hlink|<verbatim|coat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Recovery.lean#L68-L219>
    <em|(key result)> \V Local annulus analytic estimate: rows in the sweep
    with wide data return with error decaying faster than any power.
  </itemize-minus>

  <label|k-iii-4-88>

  <\itemize-minus>
    <item><strong|K-III.4.88> <hlink|<verbatim|packing_bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Trees/Transfer.lean#L55-L66>
    <em|(key result)> \V For a patch, there is a positive rate and constant
    such that any bed with strip metric and floors is served by the model.
  </itemize-minus>

  <label|k-iii-4-89>

  <\itemize-minus>
    <item><strong|K-III.4.89> <hlink|<verbatim|focused>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Subtotal.lean#L123-L165>
    <em|(key result)> \V Uniform estimates for the lifted step: under small
    perturbations along tube configurations, the step's kernel comparison
    holds with explicit constants for large parameter.
  </itemize-minus>

  <label|k-iii-4-90>

  <\itemize-minus>
    <item><strong|K-III.4.90> <hlink|<verbatim|aperture>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/WEIGHTED_GAUSSIAN_MARGINAL_LIMIT_45C/Venue/Chips.lean#L31-L68>
    <em|(key result)> \V For large x, on every collection of link colors and
    sector-admissible configurations, a Gaussian marginal comparison estimate
    holds uniformly.
  </itemize-minus>

  <label|k-iii-4-91>

  <\itemize-minus>
    <item><strong|K-III.4.91> <hlink|<verbatim|contracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Contraction.lean#L159-L215>
    <em|(numbered result)> \V Under local ratio hypothesis, the committed J
    at every point in the ball equals the absolute value of the spin
    function.
  </itemize-minus>

  <label|k-iii-4-92>

  <\itemize-minus>
    <item><strong|K-III.4.92> <hlink|<verbatim|same_row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Reading.lean#L194-L212>
    <em|(numbered result)> \V A full-precision matrix entry is unchanged
    between two configurations agreeing on the relevant neighborhood.
  </itemize-minus>

  <label|k-iii-4-93>

  <\itemize-minus>
    <item><strong|K-III.4.93> <hlink|<verbatim|chain_receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/ACTUAL_SECTOR_FACTOR_DICTIONARY/Chains.lean#L68-L94>
    <em|(numbered result)> \V Under a relative decay condition with ratio
    below one, the path sum over chains converges absolutely to the
    difference of inverses C\<#207B\>\<onesuperior\>\<minus\>A.
  </itemize-minus>

  <label|k-iii-4-94>

  <\itemize-minus>
    <item><strong|K-III.4.94> <hlink|<verbatim|publish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Color.lean#L38-L63>
    <em|(numbered result)> \V Smoothness of a function together with weighted
    jet bounds yields a bound estimate (norm-type estimate) on a ball.
  </itemize-minus>

  <label|k-iii-4-95>

  <\itemize-minus>
    <item><strong|K-III.4.95> <hlink|<verbatim|labeled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Alphabet.lean#L196-L208>
    <em|(numbered result)> \V Log determinant and log of one plus excess are
    sums over labeled tuple series with summable pieces.
  </itemize-minus>

  <label|k-iii-4-96>

  <\itemize-minus>
    <item><strong|K-III.4.96> <hlink|<verbatim|gilded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Alabaster.lean#L141-L155>
    <em|(numbered result)> \V Three letter data types obey the shared hit
    budget at gauge-invariant value level.
  </itemize-minus>

  <label|k-iii-4-97>

  <\itemize-minus>
    <item><strong|K-III.4.97> <hlink|<verbatim|foreshadows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L96-L134>
    <em|(numbered result)> \V Under positivity hypotheses, a payment bound
    for the unmarked assembly holds for all large parameter and compatible
    step data.
  </itemize-minus>

  <label|k-iii-4-98>

  <\itemize-minus>
    <item><strong|K-III.4.98> <hlink|<verbatim|panel_report>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Ink.lean#L162-L182>
    <em|(numbered result)> \V Smoothness and integrability of differentiated
    label arcs holds at a point given a local scaling form.
  </itemize-minus>

  <label|k-iii-4-99>

  <\itemize-minus>
    <item><strong|K-III.4.99> <hlink|<verbatim|growth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RANK_COVARIANCE_ATLAS/Planning.lean#L39-L54>
    <em|(numbered result)> \V Given entries per family and growth of order,
    one can choose panels, index sets and sizes with compatibility and
    size-book conditions.
  </itemize-minus>

  <label|k-iii-4-100>

  <\itemize-minus>
    <item><strong|K-III.4.100> <hlink|<verbatim|abound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Regale.lean#L65-L88>
    <em|(key result)> \V For large x, under tree-exponent and lane-count
    hypotheses, the terra exponent function is petty with error x^(-1/24)
    uniformly over sectors.
  </itemize-minus>

  <label|k-iii-4-101>

  <\itemize-minus>
    <item><strong|K-III.4.101> <hlink|<verbatim|issue_invoice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Petty.lean#L72-L90>
    <em|(key result)> \V A decomposition of the spool lift into local pieces
    plus a petty remainder yields a plate with bounded base and an
    exponential-minus-one bound by a Hit-type budget.
  </itemize-minus>

  <label|k-iii-4-102>

  <\itemize-minus>
    <item><strong|K-III.4.102> <hlink|<verbatim|rate_pass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48>
    <em|(key result)> \V The kept-early log-determinant decomposes as a sum
    of site rents, a nightly term, and intro and show taxes.
  </itemize-minus>

  <label|k-iii-4-103>

  <\itemize-minus>
    <item><strong|K-III.4.103> <hlink|<verbatim|book_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L34-L39>
    <em|(key result)> \V The kept-early log-determinant equals minus the
    number of frozen sites times log of spare, plus sector sums and intro and
    show taxes.
  </itemize-minus>

  <label|k-iii-4-104>

  <\itemize-minus>
    <item><strong|K-III.4.104> <hlink|<verbatim|bolsters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Sage.lean#L82-L114>
    <em|(key result)> \V For large x, the quadratic auxiliary and relative
    log-price terms are both petty with error x^(-1/8) uniformly over
    sectors.
  </itemize-minus>

  <label|k-iii-4-105>

  <\itemize-minus>
    <item><strong|K-III.4.105> <hlink|<verbatim|chains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227>
    <em|(key result)> \V The log determinant chain identities hold: the log
    determinant of a positive definite covariance expands as a convergent
    series of trace terms.
  </itemize-minus>

  <label|k-iii-4-106>

  <\itemize-minus>
    <item><strong|K-III.4.106> <hlink|<verbatim|stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Fund.lean#L120-L127>
    <em|(key result)> \V For a gauge, patch and predictor with branching
    property, there is a fund object so that the post-L stock for determinant
    labels holds eventually in x.
  </itemize-minus>

  <label|k-iii-4-107>

  <\itemize-minus>
    <item><strong|K-III.4.107> <hlink|<verbatim|posDef_of_integrable_quadratic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Escape.lean#L52-L94>
    <em|(numbered result)> \V If exp(-quadratic/2 - linear + constant) is
    integrable on Euclidean space, then the symmetric matrix is positive
    definite.
  </itemize-minus>

  <label|k-iii-4-108>

  <\itemize-minus>
    <item><strong|K-III.4.108> <hlink|<verbatim|inverse_perturb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH/TableCosts.lean#L63-L83>
    <em|(numbered result)> \V If D\<#207B\>\<onesuperior\> has decay bound K
    and A\<minus\>D is small with decay, then A\<#207B\>\<onesuperior\> has
    the same decay with constant 2K.
  </itemize-minus>

  <label|k-iii-4-109>

  <\itemize-minus>
    <item><strong|K-III.4.109> <hlink|<verbatim|likelihood_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Support.lean#L178-L207>
    <em|(numbered result)> \V For a locally confined perturbation, the
    likelihood ratio equals that of the marginal Gaussians on the local
    support.
  </itemize-minus>

  <label|k-iii-4-110>

  <\itemize-minus>
    <item><strong|K-III.4.110> <hlink|<verbatim|priceShift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L245-L266>
    <em|(numbered result)> \V The log of the Gaussian density ratio under a
    shift is bounded by explicit quadratic expressions in the difference and
    inverse-decay constants.
  </itemize-minus>

  <label|k-iii-4-111>

  <\itemize-minus>
    <item><strong|K-III.4.111> <hlink|<verbatim|takings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Folio/Takings.lean#L99-L116>
    <em|(key result)> \V For any fixed polynomial degree and support
    exponent, the joint endpoint load is eventually exponentially small in
    the radius parameter.
  </itemize-minus>

  <label|k-iii-4-112>

  <\itemize-minus>
    <item><strong|K-III.4.112> <hlink|<verbatim|power_iff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Moment.lean#L183-L185>
    <em|(numbered result)> \V The p-th power of a Gaussian likelihood ratio
    is integrable exactly when the mixed precision matrix is positive
    definite.
  </itemize-minus>

  <label|k-iii-4-113>

  <\itemize-minus>
    <item><strong|K-III.4.113> <hlink|<verbatim|root_pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Origin.lean#L208-L218>
    <em|(numbered result)> \V The blame term is uniformly bounded by a
    constant per key over admissible data.
  </itemize-minus>

  <label|k-iii-4-114>

  <\itemize-minus>
    <item><strong|K-III.4.114> <hlink|<verbatim|paid_kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/ResidualPrice.lean#L159-L221>
    <em|(key result)> \V The residual quadratic and one log term of the
    sector change are controlled with exponentially small cost using the true
    covariance and window.
  </itemize-minus>

  <label|k-iii-4-115>

  <\itemize-minus>
    <item><strong|K-III.4.115> <hlink|<verbatim|visions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/CovBound.lean#L118-L146>
    <em|(numbered result)> \V A fixed-L covariance is bounded above and below
    uniformly in flags, positions, forest and placement for large x.
  </itemize-minus>

  <label|k-iii-4-116>

  <\itemize-minus>
    <item><strong|K-III.4.116> <hlink|<verbatim|holds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Chord.lean#L133-L158>
    <em|(key result)> \V Uniform Schur-type size and decay bounds hold for
    the quantities in the Gaussian bills across all admissible steps, forests
    and placements for large x.
  </itemize-minus>

  <label|k-iii-4-117>

  <\itemize-minus>
    <item><strong|K-III.4.117> <hlink|<verbatim|oasis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Echo.lean#L191-L223>
    <em|(key result)> \V Uniform signed exponent bounds hold on the genuine
    law including the blame term for all admissible data and large x.
  </itemize-minus>

  <label|k-iii-4-118>

  <\itemize-minus>
    <item><strong|K-III.4.118> <hlink|<verbatim|weighted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Weighted.lean#L104-L138>
    <em|(key result)> \V A trace-priced weighted local Gaussian change has
    positive-definite mixed precision and an explicit exponential bound on
    its p-th moment.
  </itemize-minus>

  <label|k-iii-4-119>

  <\itemize-minus>
    <item><strong|K-III.4.119> <hlink|<verbatim|insert_letter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172>
    <em|(key result)> \V A small signed local quadratic-affine insertion into
    a Gaussian density has finite p-th likelihood moment under an explicit
    smallness condition.
  </itemize-minus>

  <label|k-iii-4-120>

  <\itemize-minus>
    <item><strong|K-III.4.120> <hlink|<verbatim|pockets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Brume.lean#L144-L152>
    <em|(numbered result)> \V For an injective family of enrolled keys, the
    tilt cost on a finite set of distinct keys is bounded, allowing untouched
    keys to be dropped.
  </itemize-minus>

  <label|k-iii-4-121>

  <\itemize-minus>
    <item><strong|K-III.4.121> <hlink|<verbatim|many>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Buoy.lean#L104-L152>
    <em|(numbered result)> \V Trigger and detector cost on an enrollment of n
    real coordinates is bounded by an explicit polynomial in n with constant
    depending on L and k.
  </itemize-minus>

  <label|k-iii-4-122>

  <\itemize-minus>
    <item><strong|K-III.4.122> <hlink|<verbatim|same_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253>
    <em|(key result)> \V Terms with polynomial score bounds supported on a
    trigger set have expectation under the true sector law controlled
    uniformly by Gaussian-table data with a constant depending only on L and
    k.
  </itemize-minus>

  <label|k-iii-4-123>

  <\itemize-minus>
    <item><strong|K-III.4.123> <hlink|<verbatim|r4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Ember.lean#L69-L111>
    <em|(numbered result)> \V A fourth-moment style L1 bound for products of
    ratio insertions on a common marginal under a Gaussian table with bounded
    hit counts.
  </itemize-minus>

  <label|k-iii-4-124>

  <\itemize-minus>
    <item><strong|K-III.4.124> <hlink|<verbatim|painting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Rain.lean#L55-L68>
    <em|(key result)> \V For any gauge, patch and teller with branches, there
    exists a paint such that the medium condition holds eventually for large
    x.
  </itemize-minus>

  <label|k-iii-4-125>

  <\itemize-minus>
    <item><strong|K-III.4.125> <hlink|<verbatim|same_purchase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L72-L118>
    <em|(key result)> \V For symmetric gapped covariance matrices with
    exponentially decaying inverse, localized to windows of large radius, the
    windowed matrix has uniform decay with constants independent of volume.
  </itemize-minus>

  <label|k-iii-4-126>

  <\itemize-minus>
    <item><strong|K-III.4.126> <hlink|<verbatim|before_paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124>
    <em|(key result)> \V For any kernel choices there are constants such that
    cheap-stage budgets yield a horizon structure with the required suffices
    and sworn properties for all paid inputs.
  </itemize-minus>

  <label|k-iii-4-127>

  <\itemize-minus>
    <item><strong|K-III.4.127> <hlink|<verbatim|book>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Calendar.lean#L133-L138>
    <em|(key result)> \V Under local ratio and outlet hypotheses, one can
    choose booths and a sufficiently late ordered delay schedule such that
    funding, ringing and annulus conditions hold for all later schedules.
  </itemize-minus>

  <label|k-iii-4-128>

  <\itemize-minus>
    <item><strong|K-III.4.128> <hlink|<verbatim|blocks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Consumer.lean#L167-L199>
    <em|(key result)> \V Physical Gaussian Lp insertion estimates hold
    eventually with explicit positive constants for the actual correction
    pieces.
  </itemize-minus>

  <label|k-iii-4-129>

  <\itemize-minus>
    <item><strong|K-III.4.129> <hlink|<verbatim|purchase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Charges.lean#L151-L204>
    <em|(key result)> \V For fixed patch, there exist constants such that for
    large x all admissible steps and flag-cell configurations satisfy the
    Ready bundle of Gram/resolvent window estimates, with constants
    independent of fields and volume.
  </itemize-minus>

  <label|k-iii-4-130>

  <\itemize-minus>
    <item><strong|K-III.4.130> <hlink|<verbatim|geared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66>
    <em|(main result)> \V For simple G, kernel choices and budgets, one can
    choose widths, amplitudes and rates so that for all sheets and levels
    satisfying the purchases, full paths with prescribed costs exist (B70
    production without external Rack premise).
  </itemize-minus>

  <label|k-iii-4-131>

  <\itemize-minus>
    <item><strong|K-III.4.131> <hlink|<verbatim|sailsV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154>
    <em|(main result)> \V For a simple graph and kernel choices with
    branching, there exists a sheet with prescribed kernel and stage, with
    prices such that for all tariffs and scopes the paid view holds from some
    index on.
  </itemize-minus>

  <label|k-iii-4-132>

  <\itemize-minus>
    <item><strong|K-III.4.132> <hlink|<verbatim|advanced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Bias.lean#L193-L217>
    <em|(key result)> \V At eligible cells, the translated Gaussian prices of
    the actual affine source are controlled by uniform constants depending
    only on the data, giving a readiness estimate.
  </itemize-minus>

  <label|k-iii-4-133>

  <\itemize-minus>
    <item><strong|K-III.4.133> <hlink|<verbatim|sources_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Bias.lean#L104-L133>
    <em|(key result)> \V The actual affine source/bias cost in physical
    coordinates is bounded by C(temp x + l), uniformly in the step data for
    large x.
  </itemize-minus>

  <label|k-iii-4-134>

  <\itemize-minus>
    <item><strong|K-III.4.134> <hlink|<verbatim|color_pipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435>
    <em|(key result)> \V For simple G, all-period assembly yields constants
    and a path datum for the next scale with bounds, classical matching and
    records, from inherited data.
  </itemize-minus>

  <label|k-iii-4-135>

  <\itemize-minus>
    <item><strong|K-III.4.135> <hlink|<verbatim|endures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Instruments.lean#L69-L86>
    <em|(key result)> \V Given a concert and early choices, one can choose
    records with small epsilon so that for any menu and delays, later
    schedules satisfy the cadence and sustained conditions.
  </itemize-minus>

  <label|k-iii-4-136>

  <\itemize-minus>
    <item><strong|K-III.4.136> <hlink|<verbatim|boats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Ride.lean#L62-L74>
    <em|(key result)> \V For a patch with branching teller, there is a
    uniform constant such that for all large x every matching desk with
    calling and day hypotheses satisfies the joint trip bound.
  </itemize-minus>

  <label|k-iii-4-137>

  <\itemize-minus>
    <item><strong|K-III.4.137> <hlink|<verbatim|bands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Band.lean#L141-L145>
    <em|(key result)> \V For a branching patch and teller, in-band Gaussian
    insertion prices hold eventually with positive constants for each Lp
    exponent.
  </itemize-minus>

  <label|k-iii-4-138>

  <\itemize-minus>
    <item><strong|K-III.4.138> <hlink|<verbatim|ruese>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Expound.lean#L68-L77>
    <em|(key result)> \V For any budget function, there exists a sheet with
    kernel K and stage, and nested thresholds producing delays and directed
    structures.
  </itemize-minus>

  <label|k-iii-4-139>

  <\itemize-minus>
    <item><strong|K-III.4.139> <hlink|<verbatim|post>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Reverse.lean#L64-L88>
    <em|(key result)> \V For a given gauge, patch and teller, there exist
    constants such that for large x the comparison returns into the paid
    endpoint law uniformly over steps, tubes and fields.
  </itemize-minus>

  <label|k-iii-4-140>

  <\itemize-minus>
    <item><strong|K-III.4.140> <hlink|<verbatim|transition_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182>
    <em|(key result)> \V For simple G, there exist constants so that whenever
    the horizon calculation holds, suitable parameters yield a coherent
    transition bound.
  </itemize-minus>

  <label|k-iii-4-141>

  <\itemize-minus>
    <item><strong|K-III.4.141> <hlink|<verbatim|timberT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Retreat.lean#L44-L63>
    <em|(key result)> \V There exist parameter sequences, programs and
    registers so that for all large indices the full sheltered package holds.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.3 Free lattice kernels and
  covariances|III-3.tm>|<hlink|Part III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-4.tm>|<hlink|III.5 Cluster expansion of the polymer gas
  \<rightarrow\>|III-5.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.4. Gaussian integration: change of Gaussian
    sector, determinants, window law \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|11>>
    <associate|3-strategy|<tuple|3|12>>
    <associate|4-steps|<tuple|4|12>>
    <associate|5-where-the-difficulty-lies|<tuple|5|13>>
    <associate|6-notation|<tuple|6|13>>
    <associate|7-what-remains-unexplained|<tuple|7|14>>
    <associate|additional-source-locations|<tuple|9.1|16>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|16>>
    <associate|auto-11|<tuple|10|18>>
    <associate|auto-2|<tuple|2|11>>
    <associate|auto-3|<tuple|3|12>>
    <associate|auto-4|<tuple|4|12>>
    <associate|auto-5|<tuple|5|13>>
    <associate|auto-6|<tuple|6|13>>
    <associate|auto-7|<tuple|7|14>>
    <associate|auto-8|<tuple|8|14>>
    <associate|auto-9|<tuple|9|14>>
    <associate|code-dependencies|<tuple|8|14>>
    <associate|iii4-gaussian-integration-change-of-gaussian-sector-determinants-window-law|<tuple|?|1>>
    <associate|k-iii-4-1|<tuple|10|18>>
    <associate|k-iii-4-10|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-4-100|<tuple|<with|mode|<quote|math>|<rigid|->>|28>>
    <associate|k-iii-4-101|<tuple|<with|mode|<quote|math>|<rigid|->>|28>>
    <associate|k-iii-4-102|<tuple|<with|mode|<quote|math>|<rigid|->>|28>>
    <associate|k-iii-4-103|<tuple|<with|mode|<quote|math>|<rigid|->>|28>>
    <associate|k-iii-4-104|<tuple|<with|mode|<quote|math>|<rigid|->>|28>>
    <associate|k-iii-4-105|<tuple|<with|mode|<quote|math>|<rigid|->>|28>>
    <associate|k-iii-4-106|<tuple|<with|mode|<quote|math>|<rigid|->>|29>>
    <associate|k-iii-4-107|<tuple|<with|mode|<quote|math>|<rigid|->>|29>>
    <associate|k-iii-4-108|<tuple|<with|mode|<quote|math>|<rigid|->>|29>>
    <associate|k-iii-4-109|<tuple|<with|mode|<quote|math>|<rigid|->>|29>>
    <associate|k-iii-4-11|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-4-110|<tuple|<with|mode|<quote|math>|<rigid|->>|29>>
    <associate|k-iii-4-111|<tuple|<with|mode|<quote|math>|<rigid|->>|29>>
    <associate|k-iii-4-112|<tuple|<with|mode|<quote|math>|<rigid|->>|29>>
    <associate|k-iii-4-113|<tuple|<with|mode|<quote|math>|<rigid|->>|29>>
    <associate|k-iii-4-114|<tuple|<with|mode|<quote|math>|<rigid|->>|29>>
    <associate|k-iii-4-115|<tuple|<with|mode|<quote|math>|<rigid|->>|29>>
    <associate|k-iii-4-116|<tuple|<with|mode|<quote|math>|<rigid|->>|30>>
    <associate|k-iii-4-117|<tuple|<with|mode|<quote|math>|<rigid|->>|30>>
    <associate|k-iii-4-118|<tuple|<with|mode|<quote|math>|<rigid|->>|30>>
    <associate|k-iii-4-119|<tuple|<with|mode|<quote|math>|<rigid|->>|30>>
    <associate|k-iii-4-12|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-4-120|<tuple|<with|mode|<quote|math>|<rigid|->>|30>>
    <associate|k-iii-4-121|<tuple|<with|mode|<quote|math>|<rigid|->>|30>>
    <associate|k-iii-4-122|<tuple|<with|mode|<quote|math>|<rigid|->>|30>>
    <associate|k-iii-4-123|<tuple|<with|mode|<quote|math>|<rigid|->>|30>>
    <associate|k-iii-4-124|<tuple|<with|mode|<quote|math>|<rigid|->>|30>>
    <associate|k-iii-4-125|<tuple|<with|mode|<quote|math>|<rigid|->>|31>>
    <associate|k-iii-4-126|<tuple|<with|mode|<quote|math>|<rigid|->>|31>>
    <associate|k-iii-4-127|<tuple|<with|mode|<quote|math>|<rigid|->>|31>>
    <associate|k-iii-4-128|<tuple|<with|mode|<quote|math>|<rigid|->>|31>>
    <associate|k-iii-4-129|<tuple|<with|mode|<quote|math>|<rigid|->>|31>>
    <associate|k-iii-4-13|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-4-130|<tuple|<with|mode|<quote|math>|<rigid|->>|31>>
    <associate|k-iii-4-131|<tuple|<with|mode|<quote|math>|<rigid|->>|31>>
    <associate|k-iii-4-132|<tuple|<with|mode|<quote|math>|<rigid|->>|31>>
    <associate|k-iii-4-133|<tuple|<with|mode|<quote|math>|<rigid|->>|31>>
    <associate|k-iii-4-134|<tuple|<with|mode|<quote|math>|<rigid|->>|32>>
    <associate|k-iii-4-135|<tuple|<with|mode|<quote|math>|<rigid|->>|32>>
    <associate|k-iii-4-136|<tuple|<with|mode|<quote|math>|<rigid|->>|32>>
    <associate|k-iii-4-137|<tuple|<with|mode|<quote|math>|<rigid|->>|32>>
    <associate|k-iii-4-138|<tuple|<with|mode|<quote|math>|<rigid|->>|32>>
    <associate|k-iii-4-139|<tuple|<with|mode|<quote|math>|<rigid|->>|32>>
    <associate|k-iii-4-14|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-4-140|<tuple|<with|mode|<quote|math>|<rigid|->>|32>>
    <associate|k-iii-4-141|<tuple|<with|mode|<quote|math>|<rigid|->>|32>>
    <associate|k-iii-4-15|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-4-16|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-4-17|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-4-18|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-4-19|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-4-2|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-4-20|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-4-21|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-4-22|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-4-23|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-4-24|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-4-25|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-4-26|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-4-27|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-4-28|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-4-29|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-4-3|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-4-30|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-4-31|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-4-32|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-4-33|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-4-34|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-4-35|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-4-36|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-4-37|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-4-38|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-4-39|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-4-4|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-4-40|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-4-41|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-4-42|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-4-43|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-4-44|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-4-45|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-4-46|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-4-47|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-4-48|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-4-49|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-4-5|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-4-50|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-4-51|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-4-52|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-4-53|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-4-54|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-4-55|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-4-56|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-4-57|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-4-58|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-4-59|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-4-6|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-4-60|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-4-61|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-4-62|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-4-63|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-4-64|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-4-65|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-4-66|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-4-67|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-4-68|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-4-69|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-4-7|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-4-70|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-4-71|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-4-72|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-4-73|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-4-74|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-4-75|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-4-76|<tuple|<with|mode|<quote|math>|<rigid|->>|26>>
    <associate|k-iii-4-77|<tuple|<with|mode|<quote|math>|<rigid|->>|26>>
    <associate|k-iii-4-78|<tuple|<with|mode|<quote|math>|<rigid|->>|26>>
    <associate|k-iii-4-79|<tuple|<with|mode|<quote|math>|<rigid|->>|26>>
    <associate|k-iii-4-8|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-4-80|<tuple|<with|mode|<quote|math>|<rigid|->>|26>>
    <associate|k-iii-4-81|<tuple|<with|mode|<quote|math>|<rigid|->>|26>>
    <associate|k-iii-4-82|<tuple|<with|mode|<quote|math>|<rigid|->>|26>>
    <associate|k-iii-4-83|<tuple|<with|mode|<quote|math>|<rigid|->>|26>>
    <associate|k-iii-4-84|<tuple|<with|mode|<quote|math>|<rigid|->>|26>>
    <associate|k-iii-4-85|<tuple|<with|mode|<quote|math>|<rigid|->>|26>>
    <associate|k-iii-4-86|<tuple|<with|mode|<quote|math>|<rigid|->>|27>>
    <associate|k-iii-4-87|<tuple|<with|mode|<quote|math>|<rigid|->>|27>>
    <associate|k-iii-4-88|<tuple|<with|mode|<quote|math>|<rigid|->>|27>>
    <associate|k-iii-4-89|<tuple|<with|mode|<quote|math>|<rigid|->>|27>>
    <associate|k-iii-4-9|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-4-90|<tuple|<with|mode|<quote|math>|<rigid|->>|27>>
    <associate|k-iii-4-91|<tuple|<with|mode|<quote|math>|<rigid|->>|27>>
    <associate|k-iii-4-92|<tuple|<with|mode|<quote|math>|<rigid|->>|27>>
    <associate|k-iii-4-93|<tuple|<with|mode|<quote|math>|<rigid|->>|27>>
    <associate|k-iii-4-94|<tuple|<with|mode|<quote|math>|<rigid|->>|27>>
    <associate|k-iii-4-95|<tuple|<with|mode|<quote|math>|<rigid|->>|27>>
    <associate|k-iii-4-96|<tuple|<with|mode|<quote|math>|<rigid|->>|28>>
    <associate|k-iii-4-97|<tuple|<with|mode|<quote|math>|<rigid|->>|28>>
    <associate|k-iii-4-98|<tuple|<with|mode|<quote|math>|<rigid|->>|28>>
    <associate|k-iii-4-99|<tuple|<with|mode|<quote|math>|<rigid|->>|28>>
    <associate|key-statements|<tuple|10|18>>
    <associate|lean-source|<tuple|9|14>>
    <associate|unit-difficulty|<tuple|8|13>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|unit-limitations|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|unit-notation|<tuple|5|13>>
    <associate|unit-results|<tuple|?|2>>
    <associate|unit-steps|<tuple|3|12>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
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
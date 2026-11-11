<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.3 Free lattice kernels and
  covariances (notes)|III-3.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-4.tm>|<hlink|III.5 Cluster expansion of the polymer
  gas (notes) \<rightarrow\>|III-5.tm>>

  <ym-title|III.4. Gaussian integration: change of Gaussian sector,
  determinants, window law \V detailed notes><label|iii4-gaussian-integration-change-of-gaussian-sector-determinants-window-law--detailed-notes>

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

    <with|par-left|1tab|4.1 Exact change of variables
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Gap, decay and windows
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Determinants <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Gaussian moments and insertions
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Jets <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Large fields and constants
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
    The full account of unit III.4: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-4.tm>.
  </quotation>

  <hlink|Unit page|../units/III-4.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

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
  <strong|Size:> 37,956 lines in 4,737 declarations of the main-theorem
  closure.

  <strong|Conventions.> The parameter <math|x> is the coarse inverse-coupling
  parameter: in applications <math|x=<wide|\<beta\>|^><rsub|m>>. Throughout:

  <\itemize-minus>
    <item><math|R<around|(|x|)>=<around|\<lceil\>|<around|(|log
    x|)><rsup|2>|\<rceil\>>> is the cluster radius
    (<hlink|<verbatim|radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>).

    <item><math|t<around|(|x|)>=x<rsup|-1/2>*e<rsup|<around|(|log log
    x|)><rsup|2>>> is the small-field threshold
    (<hlink|<verbatim|temp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25>).

    <item><math|\<beta\><rsub|F><around|(|x,L|)>=x+s<rsub|G>*log L> is the
    coupling one level finer.

    <item><math|t<rsub|L><around|(|x|)>=t<around|(|\<beta\><rsub|F><around|(|x,L|)>|)>>
    is the fine-level threshold (<hlink|<verbatim|fiery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26>).

    <item><math|g=\<beta\><rsup|-1/2>>.

    <item>"For large <math|x>" means: there is <math|x<rsub|0>>, depending
    only on the constants fixed before it, such that the statement holds for
    <math|x\<geqslant\>x<rsub|0>>.

    <item>Write <math|<around|\<\|\|\>|A|\<\|\|\>><rsub|s>> for the maximum
    of the row and column sums <math|<big|sum><rsub|j>e<rsup|s<space|0.17em><math-up|dist><around|(|i,j|)>><around|\||A<rsub|i*j>|\|>>.
    Positions lie on the coarse torus; several coordinates may have the same
    position. Matrix inequalities refer to quadratic forms. Put
    <math|r<rsub|x>=<around|\<lfloor\>|R<around|(|x|)>/60|\<rfloor\>>>.
  </itemize-minus>

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

  The unit proves four things:

  <\itemize-minus>
    <item>an <em|exact> Gaussian change of variables in every sector of every
    RG step;

    <item>the gap and locality of <math|W> and <math|C>, uniformly in volume,
    store and field;

    <item>local expansions of the log-determinants, and a polymer form of
    each sector with large-field suppression;

    <item>Gaussian moment bounds, jet bounds, and the production of all
    post-<math|L> constants.
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

  Equivalently, <math|<math-up|pref>\<cdot\>\<Psi\><around|(|Y,z|)>=e<rsup|<frac|1|2>*z\<cdot\>C<rsup|-1>*z>*<space|0.17em>r<around|(|Y,m<around|(|Y|)>+g*z|)>>,
  where <math|r> is the integrand in Lebesgue log-coordinates
  (<hlink|<verbatim|recolored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L73-L93>).
  The identity holds for <em|every> permitted <math|<around|(|C,m|)>>. No
  quantitative locality assumption is needed.

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

    <item>gap <math|\<eta\>>;

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
  local-readability, predictor-derivative, covariance-positivity and gap
  conditions (<hlink|<verbatim|Chips>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Desk.lean#L41-L54>,
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

    <item>the precision certificate of Lemma 4.21 holds;

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
  correction. Thus <math|\<cal-E\>> is not merely a sum of affine squares.

  (iii) Assume in addition the sector regularity conditions below, a
  nonnegative polymer exponent, and both path-counting bounds of Lemma 4.21.
  Then <math|\<kappa\><around|(|p|)>=-<around|\<lvert\>|\<cal-F\><rsub|A>|\<rvert\>>*log
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
    <math|2*\<alpha\>\<leqslant\>a/2>, and certificate constants
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

    <item>the determinant-jet certificate at halo <math|20>, exponential
    order <math|2> and derivative order <math|1>, and the precision and two
    path-counting certificates of Lemma 4.21 hold at <math|y>, with constants
    <math|<around|(|g<rsub|0>,C<rsub|0>,\<eta\><rsub|0>,b<rsub|0>,d<rsub|0>|)>>;

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

  The support restriction concerns the Gaussian variable <math|z>; the
  coefficients may depend on all the background and frozen data. The bound
  retains its dependence on <math|g>, <math|d> and <math|<around|\||U|\|>>.

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
  The precision <math|W> is also real-analytic (Lemma 4.27); the covariance
  and resolvent conclusions used here are finite-order jet bounds.

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
  any choice of block sizes above them, there is a stagewise Hessian gap
  <math|\<eta\>>. For every compatible post-<math|L> cost choice (gap
  <math|\<eta\>>, activity cap at least <math|1>, and slope bound below the
  chosen cap), protection and initial delays, the delays can be enlarged so
  that the rate and chart conditions hold for all further enlargements. On
  every paid run with these data there are stationary path families,
  including the full stationary estimates in the retained family. For each
  adjacent stage pair <math|<around|(|j,i|)>> above the initial stage, the
  per-step chart conditions hold with <math|a<rsub|j*i>,E<rsub|j*i>> chosen
  after <math|L<rsub|j>> (<hlink|<verbatim|sponsored_permit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L139-L168>).
  <hlink|<verbatim|issue_cosmos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L99-L116>
  replaces each entry value by the maximum of its old value and the
  thresholds for <math|<around|(|j,j|)>> and <math|<around|(|j,j-1|)>>,
  preserving the rate conditions.

  <em|Status:> theorem under these kernel and order assumptions.

  <em|Lean:> <hlink|<verbatim|sailsV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154>,
  using <hlink|<verbatim|geared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66>.

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|III.1 (block-spin step and gauge fixing):> fine and coarse
    tori with <math|f=L*c>, tree-gauge slices, gauge tags, predictor and
    push-forward (<hlink|<verbatim|StepData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25>).
    The branch condition requires unique frame and predictor minimisers on
    the selected supports and existence of an eligible axial gauge
    (<hlink|<verbatim|Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>).

    <item><strong|II.2, III.5, III.8 (representations and activities):> path
    and activity bounds for the fine density
    (<hlink|<verbatim|Rep.Lawful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183>),
    large-field allocations, and the polymer summability norm of III.4.7.

    <item><strong|III.10 (step estimator):> the tube's fine, coarse and noise
    work rows, together with their path bounds, cutoff compatibility and
    free-metric data (<hlink|<verbatim|Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109>).
    These determine <math|M> and <math|s<around|(|Y|)>>.

    <item><strong|III.6\UIII.7 (stationary branch and fourth-order
    matching):> stationary path families and their finite-volume estimates
    (<hlink|<verbatim|FullPaths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305>).
    Their production in III.4.12 uses the free-field estimates of III.3.

    <item><strong|III.2 and III.9 (schedule and marginal flow):> ordered
    constants, selected histories, the running inverse coupling and its band.
    III.4.2 applies to these data through its directed-run hypotheses.

    <item><strong|I.1 and III.16 (analytic toolkit):> the matrix gauge group,
    normalised Haar measure, exponential charts, analytic jets and
    finite-dimensional Gaussian measures.
  </itemize-minus>

  The analytic tools are Gaussian affine changes of variables, the Haar
  Jacobian in exponential coordinates, Combes\UThomas estimates, the
  resolvent integral for <math|log>, Neumann series, Gaussian integration by
  parts and Fourier decay from analytic strips. General references are
  Helgason, <em|Differential Geometry, Lie Groups and Symmetric Spaces>;
  Glimm\UJaffe, <em|Quantum Physics>; and Katznelson, <em|An Introduction to
  Harmonic Analysis>. Balaban's fluctuation-integral papers and Dimock's
  <em|The renormalization group according to Balaban> provide related RG
  constructions; precise bibliographic locations remain open (Ÿ7).

  The order of constants is pre-<math|L> data, block sizes, post-<math|L>
  bounds, then thresholds in <math|x>. Statements with additional parameters
  retain those dependencies. The precision and path-counting certificates
  come from <hlink|<verbatim|late_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Year.lean#L113-L197>,
  and the determinant-jet fund from Lemma 4.21. The packet-energy, chart,
  noise and representation hypotheses in III.4.7 are separate assumptions.
  The branch and order assumptions of III.4.12, and the rate assumptions of
  the scheduling statements in Lemma 4.33, remain explicit.

  <section|3. Strategy><label|3-strategy>

  Keep links within <math|10*R<around|(|x|)>> of the large-field store as
  Haar variables. Write the others in exponential coordinates about the
  coarse-field copy <math|\<iota\>*V>, and separate the affine squares
  <math|Q<rsub|Y><around|(|a|)>=<tfrac|1|2><around|\||M*a+s<around|(|Y|)>|\|><rsup|2>>
  from the remaining energy. The substitution <math|a=m<around|(|Y|)>+g*z>
  and division by an arbitrary Gaussian density give the exact identity of
  III.4.1. Choose the symmetrised windowed inverse for <math|C> and the
  windowed mean for <math|m>. The endpoint windows give finite range, at most
  <math|<around|\<lfloor\>|R<around|(|x|)>/20|\<rfloor\>>>; the linear
  correction and <math|C<rsup|-1>-W> remain in the integrand.

  A local Poincaré inequality in tree gauge gives the gap of <math|W>.
  Predictor-derivative comparison permits absorption of the gauge errors at
  small threshold. Path decay gives a uniform weighted Schur bound;
  Combes\UThomas and the window law then give
  <math|C=W<rsup|-1>+O<around|(|e<rsup|-c*R<around|(|x|)>>|)>> and
  positivity. The resolvent integral for <math|log>, followed by a Neumann
  expansion, expresses the relative Gaussian normalisation as single-window
  and path terms. Regroup these near the large-field cores. Their logarithmic
  cost is absorbed by the packet energy <math|\<beta\>*s<rsup|2>\<gtrsim\><math-up|hot><around|(|z|)><rsup|2>>,
  leaving exponentially suppressed core factors and a small polymer remainder
  on the cutoff support.

  Gaussian moment bounds control the exponential corrections, marked jets
  control background derivatives, and the annulus estimates recover affine
  squares away from the store. The construction follows the
  fluctuation-integral method, with window errors retained explicitly.
  III.4.12 chooses the constants in the order needed along the run.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Exact change of variables><label|41-exact-change-of-variables>

  <strong|Lemma 4.1 (Gaussian density and scaling).> For <math|C\<succ\>0>,
  <math|g\<gtr\>0>, <math|m\<in\>\<bbb-R\><rsup|n>>, and any Banach-valued
  <math|f> on <math|\<bbb-R\><rsup|n>>, <math|f\<in\>L<rsup|1>> iff
  <math|z\<mapsto\>e<rsup|<frac|1|2>*z\<cdot\>C<rsup|-1>*z>*f*<around|(|m+g*z|)>\<in\>L<rsup|1><around|(|\<gamma\><rsub|C>|)>>,
  and

  <\equation*>
    <big|int>f=g<rsup|n>*<around|(|2*\<pi\>|)><rsup|n/2><around|(|det
    C|)><rsup|1/2>*<big|int>e<rsup|<frac|1|2>*z\<cdot\>C<rsup|-1>*z>*f*<around|(|m+g*z|)>*<space|0.17em>d*\<gamma\><rsub|C>.
  </equation*>

  Lean's Bochner integral assigns value zero to a nonintegrable function, so
  the identity also holds under that convention without an integrability
  premise. <em|Sketch:> the density of <math|\<gamma\><rsub|C>> follows by
  pushing <math|N<around|(|0,1|)><rsup|\<otimes\>n>> forward by
  <math|C<rsup|1/2>> (<hlink|<verbatim|cloud_formula>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L134-L156>);
  then translate and dilate.

  <em|Lean:> <hlink|<verbatim|Gaussian.gauged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L204-L210>,
  <hlink|<verbatim|at_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L117-L125>.

  <strong|Lemma 4.2 (exponential chart on links).> For a local chart ratio
  <math|J> and base links <math|\<nu\>>, the map
  <math|a\<mapsto\><around|(|e<rsup|a<rsub|e>>*\<nu\><rsub|e>|)><rsub|e>>
  sends <math|<big|prod><rsub|e>J<rsub|<math-up|sc>>*J<around|(|a<rsub|e>|)>*<space|0.17em>d*a<rsub|e>>
  on <math|B<rsub|\<rho\><rsub|J>><rsup|\<cal-A\>>> onto product Haar measure
  restricted to the image. Hence <math|<big|int>g*<space|0.17em>d<math-up|Haar>=<big|int><rsub|B<rsub|\<rho\><rsub|J>><rsup|\<cal-A\>>><big|prod><rsub|e>J<rsub|<math-up|sc>>*J<around|(|a<rsub|e>|)>*<space|0.17em>g*<around|(|e<rsup|a>*\<nu\>|)>*<space|0.17em>d*a>
  for strongly measurable <math|g> vanishing off the image, with equivalence
  of integrability. In the iterated form on the slice (frozen links Haar,
  active links in the chart), assume also that <math|g> is bounded; then
  every chart section and the outer integral are integrable.

  <em|Lean:> <hlink|<verbatim|log_transport>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L143-L162>,
  <hlink|<verbatim|release_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L167-L184>,
  <hlink|<verbatim|thaw_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Haar.lean#L225-L253>.

  <strong|Lemma 4.3 (regularised integrand).> Assume the branch condition, a
  local chart ratio, the standing condition, <math|d\<gtr\>0> and
  <math|4*d\<less\>\<rho\><rsub|J>>. For a multiplier with a bounded Borel
  envelope, the chart integrand equals <math|J<rsub|<math-up|sc>><rsup|<around|\<lvert\>|\<cal-A\>|\<rvert\>>>*<wide|J|~><rsub|d><around|(|a|)>*\<chi\><rsub|d><around|(|a|)>>
  times the sector multiplier everywhere. Its sector integral equals
  <math|J<rsub|<math-up|sc>><rsup|<around|\<lvert\>|\<cal-A\>|\<rvert\>>><big|iint>r*<space|0.17em>d*a*<space|0.17em>d<math-up|Haar><around|(|Y|)>>,
  with section-wise, outer and joint integrability. <em|Sketch:> on the
  support, <math|<around|\<lvert\>|a<rsub|e>|\<rvert\>>\<leqslant\>d> forces
  <math|\<chi\><rsub|d>=1> and each extended Jacobian to equal <math|J>; off
  the support both sides vanish (<hlink|<verbatim|protected_pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Broad.lean#L115-L120>).
  The envelope supplies boundedness and measurability.

  <em|Lean:> <hlink|<verbatim|sheltered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L76-L109>,
  <hlink|<verbatim|regularized_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L142-L199>.

  <strong|Lemma 4.4 (affine-square splitting).> Under the fine path bounds,
  the averaged step energy equals <math|<wide|<math-up|res>|\<bar\>>+Q<rsub|Y><around|(|a|)>>
  (<hlink|<verbatim|compose_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L102-L105>).
  For any <math|C,m,z> and <math|g\<gtr\>0>, with <math|\<beta\>=g<rsup|-2>>
  and <math|\<eta\>=-g<rsup|-1>*<around|(|W*m+M<rsup|\<top\>>*s<around|(|Y|)>|)>>:

  <\equation*>
    -\<beta\>*Q<rsub|Y><around|(|m|)>+\<eta\>\<cdot\>z+<tfrac|1|2>z\<cdot\><around|(|C<rsup|-1>-W|)>*z=<tfrac|1|2>z\<cdot\>C<rsup|-1>*z-\<beta\>*Q<rsub|Y>*<around|(|m+g*z|)>.
  </equation*>

  <em|Sketch:> expand <math|<tfrac|1|2><around|\<lvert\>|M*<around|(|m+g*z|)>+s|\<rvert\>><rsup|2>>
  and use <math|g<rsup|-2>=\<beta\>>.

  <em|Lean:> <hlink|<verbatim|Rows.adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L128-L146>,
  <hlink|<verbatim|recolored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L73-L93>.

  <strong|Lemma 4.5 (proof of III.4.1).> Apply Lemma 4.1 to
  <math|r<around|(|Y,\<cdot\>|)>> for each <math|Y>, then Lemma 4.4 to
  identify the Gaussian integrand with <math|<math-up|pref>\<cdot\>\<Psi\><around|(|Y,\<cdot\>|)>>.
  The same change applied to norms multiplies their Gaussian integral by the
  positive constant <math|<math-up|pref><space|0.17em><around|(|2*\<pi\>*g<rsup|2>|)><rsup|n<rsub|a>/2><around|(|det
  C|)><rsup|1/2>>. Lemma 4.3 and the Fubini criterion therefore give joint
  integrability. Inserting the section identity into the outer Haar integral
  proves the formula.

  <em|Lean:> <hlink|<verbatim|authorized_change>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L137-L192>.

  <strong|Lemma 4.6 (admission of the chart).> Fix a teller, local chart
  ratio, block size <math|L> and allocation width <math|w\<gtr\>0>. There are
  <math|D,E\<gtr\>0> such that for large <math|x>, with
  <math|d=D*<space|0.17em>t<rsub|L><around|(|x|)>>:

  <\itemize-minus>
    <item><math|0\<less\>d>, <math|4*d\<less\>\<rho\><rsub|J>> and
    <math|2*d\<less\>\<rho\><rsub|<math-up|first>>>;

    <item><math|<around|\<lvert\>|log J<around|(|a|)>|\<rvert\>>\<leqslant\>E<around|\<lvert\>|a|\<rvert\>><rsup|2>>
    for <math|<around|\<lvert\>|a|\<rvert\>>\<leqslant\>4*d>;

    <item>for every funded step of block size <math|L> with
    <math|c\<geqslant\>100*<around|(|1+R<around|(|x|)>|)>> and stencil span
    at most <math|R<around|(|x|)>/50>, and every store, forest, allocation of
    width <math|w> and <math|V>, each active link (and each frozen link read
    on a selected stencil) in the support of
    <math|<math-up|bill>\<cdot\><math-up|lik>> equals
    <math|e<rsup|a>*\<nu\><rsub|e>> with <math|<around|\<lvert\>|a|\<rvert\>>\<leqslant\>d>.
  </itemize-minus>

  <em|Sketch:> the allocation gives toll <math|\<leqslant\>t<rsub|L><around|(|x|)>>
  off the cost cells and block discrepancy
  <math|\<leqslant\>2*w*<space|0.17em>t<rsub|L><around|(|x|)>> off the
  aisles. The axial-gauge estimate bounds the chord distance to
  <math|\<nu\><rsub|e>> by <math|m*<space|0.17em>t<rsub|L><around|(|x|)>>.
  The logarithmic chart then gives <math|<around|\<lvert\>|a|\<rvert\>>\<leqslant\>C*m*<space|0.17em>t<rsub|L><around|(|x|)>>.

  <em|Lean:> <hlink|<verbatim|matinee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L45-L119>.

  <strong|Lemma 4.7 (permits and the licence; proof of III.4.2).> Under the
  fixed patch, branch, funding and volume hypotheses, combine Lemma 4.6,
  III.4.3 and continuity of the windowed mean. For large <math|x>, matching
  flags and every <math|\<beta\>\<gtr\>0>,
  <math|<around|(|W<rsub|\<cal-W\>>,m|)>> is permitted, <math|W\<succ\>0>,
  and the selected predictor derivatives are bounded. Enlarge the entry
  thresholds to cover every admissible stage pair. Then:

  <\itemize-minus>
    <item>apply III.4.1 to stores with matching flags;

    <item>wrong flags force <math|<math-up|bill><rsub|A>\<equiv\>0>, so all
    integrals vanish;

    <item>insert both identities into the sector decomposition of the
    push-forward, using tagged kernel times density
    <math|=<math-up|sieve><around|(|V|)>\<cdot\><math-up|exposed>\<cdot\><math-up|enters>>.
  </itemize-minus>

  The step size is <math|d=a<rsub|j*i>*t<around|(|<wide|\<beta\>|^><rsub|m+1>|)>>,
  because <math|t<rsub|L><around|(|<wide|\<beta\>|^><rsub|m>|)>=t<around|(|<wide|\<beta\>|^><rsub|m+1>|)>>.

  <em|Lean:> <hlink|<verbatim|sponsored_permit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Stamped.lean#L139-L168>,
  <hlink|<verbatim|committed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Handoff.lean#L132-L182>.

  <strong|Lemma 4.8 (identity completion).> Assume
  <math|W\<geqslant\>\<eta\>*I> with <math|\<eta\>\<gtr\>0> and
  <math|R<around|(|x|)>\<geqslant\>120>. Complete <math|W> by the identity on
  the inactive positions (frozen and tree links), with the corresponding
  endpoint windows. The windowed inverse and its symmetrisation are the
  identity completions of <math|W<rsup|<math-up|per>>> and
  <math|W<rsub|\<cal-W\>>>; the mean is extended by zero. The determinant is
  unchanged. This puts the actual and flat log-determinants on the same full
  link set.

  <em|Lean:> <hlink|<verbatim|Completion.stocked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Completion.lean#L181-L212>.

  <subsection|4.2 Gap, decay and windows><label|42-gap-decay-and-windows>

  <strong|Lemma 4.9 (gap of the active precision).> Under the patch, branch,
  funding and volume hypotheses of III.4.3, there is
  <math|\<eta\>=\<eta\><around|(|G,P,<text|teller>|)>\<gtr\>0> with
  <math|\<eta\><around|\<lvert\>|a|\<rvert\>><rsup|2>\<leqslant\>a\<cdot\>W*a>
  for large <math|x>, every flag-matched sector and every active vector
  <math|a>. <em|Sketch:>

  <\itemize-minus>
    <item>Each active link is bounded by a constant times a local sum of
    plaquette jets plus a block jet, computed in a gauge chosen per link. The
    comparison of the predictor's derivative with its value at the flat field
    (<hlink|<verbatim|block_comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Block.lean#L316-L361>)
    makes the gauge-rotation errors <math|O<around|(|\<varepsilon\>|)>> once
    <math|t<around|(|x|)>\<leqslant\>\<delta\>>.

    <item>Summing gives <math|<around|\<lvert\>|a|\<rvert\>><rsup|2>\<leqslant\>c<rsub|1>*<big|sum><around|\<lvert\>|<text|plaq>|\<rvert\>><rsup|2>+c<rsub|2>*<big|sum><around|\<lvert\>|<text|block>|\<rvert\>><rsup|2>+O<around|(|\<varepsilon\><rsup|2>|)><around|\<lvert\>|a|\<rvert\>><rsup|2>>.

    <item>The last term is absorbed, and the energy is bounded by the Gram
    form.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Gap.not_flat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gap.lean#L242-L264>.

  the derivative-comparison theorem itself states two things. For links
  within the predictor's reach that are <math|\<delta\>>-close to <math|1>,
  the derivative of <math|a\<mapsto\>> curvature of
  <math|<math-up|pred><around|(|e<rsup|a>*U|)><math-up|pred><around|(|U|)><rsup|-1>>
  at <math|0> is <math|\<leqslant\>B<around|\<lVert\>|a|\<rVert\>><rsub|\<ell\><rsup|1><around|(|<text|stencil>|)>>>.
  It also differs from its value at <math|U=1> by
  <math|\<leqslant\>\<varepsilon\><around|\<lVert\>|a|\<rVert\>><rsub|\<ell\><rsup|1>>>.
  The constant <math|\<delta\><around|(|\<varepsilon\>|)>> comes from
  continuity and is not explicit.

  <strong|Lemma 4.10 (Combes\UThomas).> Given
  <math|\<sigma\>,\<varepsilon\>\<gtr\>0> and <math|M\<geqslant\>0>, there
  are <math|v\<in\><around|(|0,\<sigma\>|]>> and <math|C=2/\<varepsilon\>>
  such that every symmetric <math|A> with
  <math|<around|\<lVert\>|e<rsup|\<sigma\><space|0.17em><math-up|dist>>*A|\<rVert\>><rsub|<math-up|Schur>>\<leqslant\>M>
  and gap <math|\<varepsilon\>> satisfies
  <math|e<rsup|v<space|0.17em><math-up|dist><around|(|i,j|)>><around|\<lvert\>|A<rsup|-1><rsub|i*j>|\<rvert\>>\<leqslant\>C>,
  in any volume. The same holds for all principal submatrices, since they
  inherit the gap. <em|Sketch:>

  <\itemize-minus>
    <item>Conjugate <math|A> by <math|e<rsup|v<space|0.17em><math-up|dist><around|(|\<cdummy\>,i|)>>>
    with <math|v=min <around|(|1,\<varepsilon\>/<around|(|2*<around|(|M+1|)>|)>|)>*\<sigma\>>.

    <item>The conjugate differs from <math|A> by
    <math|\<leqslant\>\<varepsilon\>/2> in Schur norm, so it keeps gap
    <math|\<varepsilon\>/2>.

    <item>Test it on the weighted <math|i>-th column of <math|A<rsup|-1>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Schur.inverse_tilt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Inverse.lean#L74-L121>,
  <hlink|<verbatim|Schur.provides>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L103-L119>.

  <strong|Lemma 4.11 (proof of the window law, III.4.4).>

  <\enumerate>
    <item><math|<around|(|A*L|)><rsub|j*i>=\<delta\><rsub|j*i>> for
    <math|j\<in\>\<cal-W\><rsub|i>>, because column <math|i> of <math|L>
    solves the window system. So <math|A*L-1> is supported at distance
    <math|\<gtr\>r> and has unweighted Schur norm
    <math|\<leqslant\>e<rsup|-u*r>\<cdot\>>const.

    <item>Hence <math|L-A<rsup|-1>=A<rsup|-1>*<around|(|A*L-1|)>> has the
    same size, and so does its symmetrisation.

    <item>The gap of <math|A<rsup|-1>> is at least
    <math|\<eta\>/<around|(|K+1|)><rsup|2>>, because
    <math|<around|\<lVert\>|A|\<rVert\>>\<leqslant\>K+1>. For <math|r> large
    the error is below half of it.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Schur.windows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L184-L239>.

  <strong|Lemma 4.12 (proof of III.4.3).>

  <\enumerate>
    <item>Lemma 4.9 gives the gap.

    <item>The path-decay and predictor-derivative bounds give weighted row
    and column bounds for <math|M>; multiplying <math|M<rsup|\<top\>>*M>
    gives the weighted Schur bound on <math|W>.

    <item>The counting function is <math|B<around|(|v|)>=dim
    \<frak-g\>\<cdot\>L<rsup|4>\<cdot\>4\<cdot\><big|sum><rsub|z\<in\>\<bbb-Z\><rsup|4>>e<rsup|-v<around|\||z|\|><rsub|1>>>
    for <math|v\<gtr\>0>: each coarse site carries at most
    <math|4*L<rsup|4>*dim \<frak-g\>> coordinates.

    <item>The endpoint windows contain <math|r<rsub|x>>-balls.

    <item>III.4.4 gives (iii) and <math|C\<succ\>0>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|opaqueCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L102-L143>.
  The decay certificate <hlink|<verbatim|holds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Chord.lean#L133-L158>
  adds bounds for <math|C<rsup|-1>> and <math|<around|\<lVert\>|C<rsup|-1>-W|\<rVert\>>\<leqslant\>M*e<rsup|-a*R<around|(|x|)>>>.

  <strong|Lemma 4.13 (perturbation of inverses).> Let <math|s\<geqslant\>0>
  and <math|A,D\<succ\>0> with <math|<around|\<lVert\>|D<rsup|-1>|\<rVert\>><rsub|s>\<leqslant\>K>,
  <math|<around|\<lVert\>|A-D|\<rVert\>><rsub|s>\<leqslant\>\<delta\>> and
  <math|K*\<delta\>\<leqslant\><frac|1|2>>. Then
  <math|<around|\<lVert\>|A<rsup|-1>|\<rVert\>><rsub|s>\<leqslant\>2*K>.
  <em|Sketch:> from <math|A<rsup|-1>=D<rsup|-1>-D<rsup|-1>*<around|(|A-D|)>*A<rsup|-1>>,
  a bound <math|t> on <math|A<rsup|-1>> improves to <math|K+t/2>; iterate
  from any finite-volume bound and pass to the limit.

  <em|Lean:> <hlink|<verbatim|inverse_perturb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_SWITCH/TableCosts.lean#L63-L83>.

  <strong|Lemma 4.14 (infinite-volume kernels).>

  <\itemize-minus>
    <item>Let <math|r\<gtr\>0>, <math|M\<geqslant\>0>. A family of periodic
    kernels compatible under coverings and bounded pointwise by
    <math|M*e<rsup|-r<space|0.17em><math-up|dist>>> is, for every
    <math|\<gamma\>\<less\>r>, exactly the periodisation of a kernel on
    <math|\<bbb-Z\><rsup|4>> with strip norm at rate <math|\<gamma\>> bounded
    by <math|M*<big|sum><rsub|z\<in\>\<bbb-Z\><rsup|4>>e<rsup|-<around|(|r-\<gamma\>|)><around|\||z|\|><rsub|1>>>.
    The proof extracts a pointwise limit along the periods <math|k!> and
    passes compatibility to the limit by dominated convergence.

    <item>Given a strip bound with positive rate and a uniform positive gap
    in every period, each nonnegative-shift resolvent is the periodisation of
    a strip-decaying kernel at any rate below the resulting inverse-decay
    margin (<hlink|<verbatim|strip_resolvent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Metric.lean#L30-L37>).

    <item>Under the analytic-strip inverse bound and real-symmetry condition
    on the symbol, Fourier inversion gives a real inverse kernel with strip
    decay at rate <math|\<eta\>/4> (<hlink|<verbatim|freezer_row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/PeriodicInverse.lean#L104-L139>).
    Consequently, for each stage <math|J\<geqslant\>4> there is a rate
    <math|\<sigma\>\<gtr\>0>, chosen before the patch, such that every patch
    at stage <math|J> satisfying the branch condition has a strip-decaying
    inverse of its flat gauge-completed Hessian. The cap may depend on the
    patch; both rate and cap are uniform in the permitted kinetic profiles,
    gauge tags and periods (<hlink|<verbatim|joint_universal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/Completion.lean#L62-L110>).
  </itemize-minus>

  <em|(proof read for periodic extraction and the uniform flat inverse;
  statement only for the other assertions)>

  <em|Lean:> <hlink|<verbatim|publish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/Fold.lean#L139-L180>.

  <strong|Lemma 4.15 (tree inverse and the free covariance).>

  <\itemize-minus>
    <item>Gauge-fixing completion: for a symmetric free metric and a step
    satisfying the branch condition, if the gauge-completed joint matrix
    <math|\<cal-H\>> satisfies <math|\<cal-H\>*N=I>, then
    <math|Z*N*Z<rsup|\<top\>>> inverts the tree matrix and the projected
    <math|N> is the tree covariance (<hlink|<verbatim|projecting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/TreeInverse.lean#L64-L115>,
    pure algebra, proof read).

    <item>Fix a patch, kernel satisfying the branch condition, and positive
    strip and gap bounds. Each free metric satisfying these bounds has a
    strip-decaying operator representing its plane tree-inverse covariance at
    every coarse period at least <math|3>. The rate and cap are uniform over
    these metrics. With odd <math|L> and the fine and coarse free-field lower
    bounds and diagonal tower compatibility, the same operator represents the
    conditional covariances of every admissible step with that patch. Its
    range-<math|d> truncation has strip norm at rate <math|t/2> at most
    <math|A*e<rsup|-t*d/2>> (<hlink|<verbatim|earned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L67-L103>,
    <hlink|<verbatim|onePlateau>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Covers.lean#L114-L136>,
    proof read).

    <item>For a large step, a tube satisfying the fine path bounds, a sector
    with no frozen free links, and an attached, normalised free metric whose
    full kernel has Gram matrix equal to that metric and satisfies the
    free-field symmetry conditions, the windowed resolvent at flat background
    differs from the free tree resolvent by at most
    <math|C*e<rsup|-t*R<around|(|x|)>>*<around|(|1+u|)><rsup|-2>> in a
    positive-rate Schur norm, for every <math|u\<geqslant\>0>. The statement
    applies to the geometric windows used in this comparison. At <math|u=0>
    it also gives precision and log-determinant comparison bounds
    (<hlink|<verbatim|headComparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Ideal.lean#L120-L144>,
    <hlink|<verbatim|freeHead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/HeadSwitch.lean#L104-L143>,
    statement only).
  </itemize-minus>

  <strong|Lemma 4.16 (covariance and locality of entries).>

  <\itemize-minus>
    <item>The windowed inverse commutes with site bijections combined with
    orthogonal colour rotations, for every <math|u>
    (<hlink|<verbatim|natural>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/ColourBooks.lean#L163-L192>).

    <item>If the precision, source and windows are transported together by
    such a map, so are the ordered inverse, windowed covariance and mean; the
    covariance determinant is preserved (<hlink|<verbatim|moves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Binding.lean#L116-L134>).

    <item>Under the branch condition, <math|R<around|(|x|)>\<geqslant\>120>
    and stencil span at most <math|R<around|(|x|)>/50>, agreement of the
    configurations, tags, trees and stores on a set containing the
    <math|14*R<around|(|x|)>>-ball about the row position makes the
    corresponding full precision rows equal
    (<hlink|<verbatim|same_row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Reading.lean#L194-L212>).
  </itemize-minus>

  <subsection|4.3 Determinants><label|43-determinants>

  <strong|Lemma 4.17 (proof of III.4.5).>

  <\enumerate>
    <item>On the spectrum of <math|A\<succ\>0>, <math|log
    \<lambda\>=<big|int><rsub|0><rsup|\<infty\>><around|[|<around|(|1+u|)><rsup|-1>-<around|(|\<lambda\>+u|)><rsup|-1>|]>*d*u>,
    so <math|log det A=<big|sum><rsub|i><big|int><rsub|0><rsup|\<infty\>><around|[|<around|(|1+u|)><rsup|-1>-<around|(|A+u|)><rsup|-1><rsub|i*i>|]>*d*u>.

    <item>Split <math|<around|(|A+u*I|)><rsup|-1>=P<rsub|u>+<around|(|<around|(|A+u*I|)><rsup|-1>-P<rsub|u>|)>>.

    <item>The first part gives <math|\<ell\><rsub|i>>, bounded by
    <math|<around|(|C+1|)>*C> through <math|<big|int><around|(|1+u|)><rsup|-2>=1>.

    <item>Expand the second part as <math|P<rsub|u>*<big|sum><rsub|n\<geqslant\>1><around|(|-\<Delta\><rsub|u>|)><rsup|n>>.
    Its negative enters the logarithm. The <math|n>th correction in III.4.5
    has absolute integral at most <math|C*q<rsup|n+1>>.

    <item>For <math|log det <around|(|1+S|)>> use the trace series;
    <math|1+S=A*A<rsub|\<cal-W\>>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Priced.chains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L203-L227>,
  <hlink|<verbatim|letterBase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L45-L46>.

  <strong|Lemma 4.18 (proof of III.4.6 (ii)\U(iv)).>

  <\itemize-minus>
    <item><em|(ii)> Use <math|J<rsub|<math-up|sc>><rsup|<around|\<lvert\>|\<cal-A\>|\<rvert\>>>*<around|(|2*\<pi\>*g<rsup|2>|)><rsup|n<rsub|a>/2>=<math-up|spare><rsup|<around|\<lvert\>|F<rsup|<math-up|free>>|\<rvert\>>><math-up|spare><rsup|-<around|\<lvert\>|\<cal-F\><rsub|A>|\<rvert\>>>>
    and <math|det C=det W<rsup|-1>*det <around|(|W*C|)>>, with <math|det
    K<rsub|F>> independent of the forest. The quadratic part follows from
    Lemma 4.4, and the coarse factors are collected in the coarse
    normalisation.

    <item><em|(iii)> Apply the path-series expansion both to the
    identity-completed full precision at <math|<around|(|A,V|)>> ("panel")
    and at <math|<around|(|\<emptyset\>,1|)>> ("frame"), and subtract letter
    by letter.

    <item><em|(iv)> Sum <math|<math-up|sect><rsub|e>-log
    <math-up|spare>\<cdot\>1<rsub|\<cal-F\><rsub|A>><around|(|e|)>> over
    links, split by distance to the cores (<math|200*R<around|(|x|)>>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|book_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L34-L39>,
  <hlink|<verbatim|rate_pass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L36-L48>.

  <strong|Lemma 4.19 (local bounds on the pieces).> Call a function
  <em|<math|\<varepsilon\>>-small> if it is a sum of local terms
  <math|\<phi\><rsub|X>> on flag-matched sectors where the cutoff product is
  nonzero, with <math|<around|\<lvert\>|\<phi\><rsub|X>|\<rvert\>>\<leqslant\>b<rsub|X>>
  on every flag-matched sector and <math|<big|sum><rsub|X\<ni\>y<rprime|'>>b<rsub|X>*e<rsup|e*N<rsub|B><around|(|X|)>>\<leqslant\>\<varepsilon\>>
  at every site <math|y<rprime|'>>. Here <math|B> is the specified cover
  radius. Under the corresponding hypotheses of III.4.7, for large <math|x>:

  <\itemize-minus>
    <item>(a) At the retimed scale <math|y=<math-up|retime><around|(|x|)>>,
    with <math|z=\<beta\><rsub|F><around|(|x,L|)>> and
    <math|\<beta\>\<in\><around|[|z/2,2*z|]>>,
    <math|<around|\<lvert\>|<math-up|rent><rsub|o>|\<rvert\>>\<leqslant\>\<delta\><space|0.17em><math-up|hot><around|(|z|)><rsup|2><around|\<lvert\>|o|\<rvert\>>>
    for any fixed <math|\<delta\>\<gtr\>0>
    (<hlink|<verbatim|wages>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L90-L114>).
    Each link contributes <math|O<around|(|log y|)>>, the
    <math|200*R<around|(|y|)>>-halo of a core contains
    <math|O<around|(|<around|(|1+R<around|(|y|)>|)><rsup|4><around|\<lvert\>|o|\<rvert\>>|)>>
    links, and <math|<math-up|hot><around|(|z|)><rsup|2>> dominates this
    logarithmic cost.

    <item>(b) The far-field term is <math|x<rsup|-1/8>>-small
    (<hlink|<verbatim|bills>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L71-L89>).

    <item>(c) <math|I> and <math|<math-up|Sh>> are
    <math|e<rsup|-d*R<around|(|x|)>>>-small
    (<hlink|<verbatim|billIt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L60-L77>).

    <item>(d) The chart terms <math|<big|sum><rsub|e>log
    <wide|J|~><around|(|a<rsub|e>|)>> are <math|x<rsup|-1/8>>-small, since
    <math|<around|\<lvert\>|log <wide|J|~>|\<rvert\>>\<leqslant\>u*<around|(|4*d|)><rsup|2>>,
    <math|d\<leqslant\>h*t<rsub|L><around|(|x|)>> and
    <math|t<rsub|L><around|(|x|)><rsup|2>\<leqslant\>x<rsup|-1/4>>
    eventually. The linear term <math|\<eta\>\<cdot\>z> has the same polymer
    bound: the noise assumptions give <math|<around|\||\<eta\><rsub|i>*z<rsub|i>|\|>\<leqslant\>x<rsup|-2>>
    on the cutoff support (<hlink|<verbatim|bolsters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Sage.lean#L82-L114>).

    <item>(e) The remaining path and interaction correction term (path and
    cubic/quartic corrections) is <math|x<rsup|-1/24>>-small
    (<hlink|<verbatim|Ancestor.abound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Regale.lean#L65-L88>).
  </itemize-minus>

  <em|(proof read for (a), (b), (d); statement and outline for (c), (e))>

  <strong|Lemma 4.20 (proof of III.4.7).>

  <\enumerate>
    <item>On flag-matched sectors, <math|\<Lambda\>=<big|sum><rsub|o><around|(|<math-up|center><rsub|o>+<math-up|rent><rsub|o>|)>+<math-up|tenders>>
    (<hlink|<verbatim|issued>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L27-L35>).
    The center is <math|-\<beta\>> times the row energy of III.4.6 summed
    over row positions within <math|200*R<around|(|y|)>> of <math|o>
    (<hlink|<verbatim|center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Turret.lean#L74>).
    The remainder consists of the terms of Lemma 4.19 (b)\U(e), the row
    energy outside these halos, and the quadratic window correction.

    <item>On the nonzero cutoff support, the packet-energy hypothesis gives
    <math|<math-up|center><rsub|o>\<leqslant\>-\<beta\>*a*s<rsup|2><around|\<lvert\>|o|\<rvert\>>>
    for each core of the store, with <math|s=z<rsup|-1/2><math-up|hot><around|(|z|)>>.
    Since <math|z*s<rsup|2>=<math-up|hot><around|(|z|)><rsup|2>> and
    <math|\<beta\>\<geqslant\>z/2>, the condition
    <math|2*\<alpha\>\<leqslant\>a/2> gives
    <math|2*\<alpha\><space|0.17em><math-up|hot><around|(|z|)><rsup|2>\<leqslant\>\<beta\>*a*s<rsup|2>>.
    The bound is <hlink|<verbatim|ranked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Spreaders.lean#L53-L61>.
    Apply Lemma 4.19 (a) with <math|\<delta\>=\<alpha\>> to obtain
    <math|<math-up|center><rsub|o>+<math-up|rent><rsub|o>\<leqslant\>-\<alpha\><space|0.17em><math-up|hot><around|(|z|)><rsup|2><around|\<lvert\>|o|\<rvert\>>>.

    <item><hlink|<verbatim|paltry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Gush.lean#L52-L65>
    uses the lower bound <hlink|<verbatim|minimum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Spreaders.lean#L82-L89>
    to clamp the core term between fixed bounds, preserving its value on the
    nonzero cutoff support and its upper bound on all matching sectors.

    <item>The tenders are <math|\<ell\>>-small with
    <math|\<ell\>=4*q+y<rsup|4>*\<nu\>+2*\<nu\>+a<rprime|'>>, where
    <math|q=y<rsup|-1/8>>, <math|\<nu\>=y<rsup|-5>> (from
    <math|e<rsup|-c*R<around|(|y|)>>\<leqslant\>y<rsup|-5>>) and
    <math|a<rprime|'>=y<rsup|-1/24>>. Then
    <math|2*\<ell\>\<leqslant\>16*y<rsup|-1/24>\<leqslant\>y<rsup|-1/48>> for
    large <math|y> (the power comparison).

    <item><hlink|<verbatim|issue_invoice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Petty.lean#L72-L90>
    symmetrises over lattice motions and converts the small sum into
    <math|<around|\<lvert\>|e<rsup|<math-up|aux><rsub|X>>-1|\<rvert\>>\<leqslant\>f<rsub|X>>.
  </enumerate>

  <strong|Lemma 4.21 (precision, counting and jet certificates).> Fix
  <math|G>, a patch and a teller satisfying the branch condition, a halo
  multiplier <math|l\<geqslant\>1> and a polymer exponent
  <math|e\<geqslant\>0>.

  <\itemize-minus>
    <item><hlink|<verbatim|late_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Year.lean#L113-L197>
    gives the precision and path-counting certificates, eventually in
    <math|x>:

    <\itemize-minus>
      <item>positive constants <math|v,\<eta\>,b,d> and
      <math|C\<geqslant\>1>, chosen before the threshold in <math|x>, giving
      the gap, positivity and resolvent bounds of III.4.5 for every funded
      step with that patch and <math|c\<geqslant\>100*<around|(|1+R<around|(|x|)>|)>>,
      uniformly in matching sectors and every window system containing the
      <math|r<rsub|x>>-balls, with error factor
      <math|e<rsup|-b*R<around|(|x|)>>>;

      <item>cluster counting with factor <math|e<rsup|-d*R<around|(|x|)>>>.
    </itemize-minus>

    <item>For each pair of nonnegative integer orders <math|<around|(|n,k|)>>
    and <math|l\<geqslant\>20>, <hlink|<verbatim|stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/PHYSICAL_JOINT_ENDPOINT_LOAD_F16/DLog/Fund.lean#L120-L127>
    chooses a fund whose covariance-jet and determinant-letter bounds hold
    eventually in <math|x>. The certificate also includes stencil-span and
    exponential cost bounds. These two results supply the corresponding
    certificates, rather than all the hypotheses of III.4.7.
  </itemize-minus>

  <subsection|4.4 Gaussian moments and insertions><label|44-gaussian-moments-and-insertions>

  <strong|Lemma 4.22 (exponentials of quadratic forms).> Let
  <math|x\<sim\>N<around|(|0,I|)>> and <math|\<cal-Q\>=<big|sum><rsub|i>w<rsub|i><around|\<langle\>|q<rsub|i>,x|\<rangle\>><rsup|2>>
  with <math|w<rsub|i>\<geqslant\>0> and <math|<big|sum><rsub|j>w<rsub|j><around|\<lvert\>|<around|\<langle\>|q<rsub|i>,q<rsub|j>|\<rangle\>>|\<rvert\>>\<leqslant\>1/8>
  for each <math|i>. Then <math|\<bbb-E\>*e<rsup|\<cal-Q\>>\<leqslant\>e<rsup|2*<big|sum><rsub|i>w<rsub|i><around|\<lvert\>|q<rsub|i>|\<rvert\>><rsup|2>>>.
  <em|Sketch:> Gaussian integration by parts gives
  <math|F<rprime|'><around|(|t|)>=\<bbb-E\>*<around|[|\<cal-Q\>*e<rsup|t*\<cal-Q\>>|]>\<leqslant\>T*F+<tfrac|1|2>F<rprime|'>>,
  so <math|<around|(|e<rsup|-2*T*t>*F|)><rprime|'>\<leqslant\>0>.

  <em|Lean:> <hlink|<verbatim|authentic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Trace.lean#L228-L253>,
  <hlink|<verbatim|amount>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Primitives/CONNECTED_GAUSSIAN_CUMULANTS/Moment.lean#L67-L71>.

  <strong|Lemma 4.23 (polynomial moments).> For <math|L\<gtr\>0> and
  <math|k\<in\>\<bbb-N\>> there is <math|D<around|(|L,k|)>\<gtr\>0>,
  independent of <math|n>, such that every <math|0\<preceq\>C\<leqslant\>L*I>
  on <math|\<bbb-R\><rsup|n>> satisfies integrability and
  <math|\<bbb-E\><rsub|\<gamma\><rsub|C>>*<around|(|1+<around|\<lvert\>|z|\<rvert\>><rsup|2>|)><rsup|k>\<leqslant\>D<around|(|L,k|)>*<around|(|1+n|)><rsup|k+1>>.
  <em|Sketch:> dominate a power by an exponential with
  <math|t=1/<around|(|4*L|)>>, bound the sum of squared coordinates by
  <math|n> times its largest term, and use
  <math|\<bbb-E\>*e<rsup|t*z<rsub|x><rsup|2>>\<leqslant\>2>.

  <em|Lean:> <hlink|<verbatim|many>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Buoy.lean#L104-L152>.

  <strong|Lemma 4.24 (proof of III.4.8).>

  <\enumerate>
    <item>On <math|<around|{|v\<ne\>0|}>>,
    <math|1\<leqslant\>e<rsup|-c<around|\<lvert\>|J|\<rvert\>>*\<rho\><rsup|2>>*e<rsup|c*<big|sum><rsub|J><around|\<lvert\>|z<rsub|i>|\<rvert\>><rsup|2>>>.

    <item>The site budget gives <math|<big|sum>d<rsub|i>*<around|(|1+<around|\<lvert\>|z<rsub|a<rsub|i>>|\<rvert\>><rsup|2>+<around|\<lvert\>|z<rsub|b<rsub|i>>|\<rvert\>><rsup|2>|)>\<leqslant\><around|\<lvert\>|Y|\<rvert\>>*c+2*c*<big|sum><rsub|X><around|\<lvert\>|z|\<rvert\>><rsup|2>>.

    <item>Use <math|a*b\<leqslant\>a<rsup|2>+b<rsup|2>> to bound the product
    of the polynomial score and <math|e<rsup|3*c*<big|sum><rsub|U><around|\||z|\|><rsup|2>>>.
    The exponential square has expectation at most <math|2<rsup|dim
    \<frak-g\><around|\||U|\|>>>, since <math|6*c=1/<around|(|4*L|)>> and
    <math|<around|\||U|\|>\<leqslant\><around|\||J|\|>+2<around|\||Y|\|>>;
    Lemma 4.23 bounds the squared polynomial score.
  </enumerate>

  For the fourth-moment bound: <math|<around|\<lvert\>|e<rsup|q>-1|\<rvert\>>\<leqslant\>x*e<rsup|2*x*<around|(|1+<around|\<lvert\>|z<rsub|a>|\<rvert\>><rsup|2>+<around|\<lvert\>|z<rsub|b>|\<rvert\>><rsup|2>|)>>>,
  then apply III.4.8 with <math|k=0>. For the coupling-band estimate: the
  mean-shift equation writes <math|\<eta\>> through
  <math|W<rsup|<math-up|per>>-W<rsup|-1>=O<around|(|e<rsup|-u*R<around|(|x|)>/60>|)>>,
  and <math|C<rsup|-1>-W> is controlled by the inverse-window estimate.

  <em|Lean:> <hlink|<verbatim|same_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Arc.lean#L189-L253>,
  <hlink|<verbatim|r4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Ember.lean#L69-L111>,
  <hlink|<verbatim|oasis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/ANNULUS_RATIO_INSERTIONS/Echo.lean#L191-L223>.

  <strong|Lemma 4.25 (Gaussian likelihood ratios).>

  <\itemize-minus>
    <item>For <math|A,D\<succ\>0>, any centres <math|a,d> and any real
    <math|p>, the <math|p>-th power of <math|d*N<around|(|a,A|)>/d*N<around|(|d,D|)>>
    is <math|N<around|(|d,D|)>>-integrable iff
    <math|p*A<rsup|-1>+<around|(|1-p|)>*D<rsup|-1>\<succ\>0>
    (<hlink|<verbatim|power_iff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Moment.lean#L183-L185>).

    <item>For <math|A,D\<succ\>0>, if <math|D<rsup|-1>-A<rsup|-1>> is
    supported in <math|S\<times\>S> and <math|A<rsup|-1>*<around|(|d-a|)>> on
    <math|S>, the ratio equals the ratio of the <math|S>-marginals at
    <math|x<rsub|S>> (<hlink|<verbatim|likelihood_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Support.lean#L178-L207>).

    <item>Let <math|A,D\<succ\>0>, <math|p\<geqslant\>1>,
    <math|K,w<rsub|i>\<geqslant\>0> and <math|D\<leqslant\>K*I>. If the
    change in the quadratic exponent about the reference centre has absolute
    value at most <math|b+<big|sum><rsub|i>w<rsub|i>*z<rsub|i><rsup|2>>, and
    <math|K*p*w<rsub|i>\<leqslant\>1/4> for every <math|i>, then the
    <math|p>-th likelihood-ratio moment is at most
    <math|e<rsup|2*p*<around|(|b+2*K*<big|sum><rsub|i>w<rsub|i>|)>>>.
    Cauchy\USchwarz controls the normaliser
    (<hlink|<verbatim|weighted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Weighted.lean#L104-L138>).

    <item>Let <math|0\<prec\>C\<leqslant\>K*I> with <math|K\<gtr\>0>,
    <math|\<cal-J\>> symmetric, <math|\<varepsilon\>\<geqslant\>0>,
    <math|p\<geqslant\>1> and <math|\<theta\>\<gtr\>0>. For
    <math|<around|\<lvert\>|z\<cdot\>\<cal-J\>*z|\<rvert\>>\<leqslant\>\<varepsilon\><around|\<lvert\>|z|\<rvert\>><rsup|2>>,
    <math|<around|\<lvert\>|t<rsub|i>|\<rvert\>>\<leqslant\>\<ell\>> on
    <math|S> and <math|K*p*<around|(|\<theta\>+\<varepsilon\>/2|)>\<leqslant\>1/4>,
    the inserted covariance is positive definite and the moment bound of
    III.4.9 holds with <math|U=S>. Positivity follows from
    <math|C<rsup|-1>\<geqslant\>K<rsup|-1>*I\<gtr\>\<varepsilon\>*I>; the
    linear part contributes <math|e<rsup|p<around|\<lvert\>|S|\<rvert\>>*\<ell\><rsup|2>/<around|(|2*\<theta\>|)>>>
    by AM\UGM (<hlink|<verbatim|insert_letter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Insertion.lean#L120-L172>).

    <item>For symmetric <math|A>, integrability of
    <math|e<rsup|-<frac|1|2>*z\<cdot\>A*z-b\<cdot\>z+c>> forces
    <math|A\<succ\>0> (<hlink|<verbatim|posDef_of_integrable_quadratic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/PHYSICAL_GAUSSIAN_INSERTION/Escape.lean#L52-L94>).

    <item>Let <math|A,D\<succ\>0>, <math|<around|\<\|\|\>|A<rsup|-1>|\<\|\|\>><rsub|s>\<leqslant\>M>,
    <math|<around|\<\|\|\>|A<rsup|-1>-D<rsup|-1>|\<\|\|\>><rsub|s>\<leqslant\>\<delta\>>,
    <math|s\<geqslant\>0>, and <math|<around|\||log det A-log det
    D|\|>\<leqslant\>n*\<delta\>>. The ratio <math|T<around|(|z|)>> of the
    <math|A>-Gaussian density at <math|z+h*u> to the <math|D>-density at
    <math|z> obeys
  </itemize-minus>

  <\equation*>
    <around|\||log T<around|(|z|)>|\|>\<leqslant\><tfrac|\<delta\>|2><around|(|n+<around|\||z|\|><rsup|2>|)>+<tfrac|M|2><around*|(|h<rsup|2>\|u\|<rsup|2>+<around|\||h|\|>*<around|(|<around|\||u|\|><rsup|2>+<around|\||z|\|><rsup|2>|)>|)>.
  </equation*>

  Expand the shifted quadratic form and apply the Schur bounds
  (<hlink|<verbatim|priceShift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/GAUSSIAN_FIELD_ALIGNMENT/Relative.lean#L245-L266>).

  <em|(proof read for the weighted moment and insertion bounds; statement
  only for the other assertions)>

  <subsection|4.5 Jets><label|45-jets>

  <strong|Lemma 4.26 (analytic predictor rows).> Fix <math|G>, a patch
  <math|P>, a kernel <math|K> satisfying the branch condition and an order
  <math|k>. There are <math|C\<geqslant\>0> and <math|r,\<delta\>\<gtr\>0>
  such that the following holds. Take a step with that patch and kernel,
  matching flags, stencil span at most <math|R<around|(|x|)>/50>,
  <math|<math-up|allot><around|(|P|)>+1\<leqslant\>9*R<around|(|x|)>>,
  <math|2*<around|(|<math-up|allot><around|(|P|)>+1|)>\<less\>c>, and
  <math|<math-up|permit><around|(|P|)>*t<around|(|x|)>\<leqslant\>\<delta\>>.
  On every selected block stencil, the predicted group element and its
  relative curvature are real-analytic on the <math|r>-ball of mixed coarse
  and fine logarithmic perturbations; the curvature has <math|k>-jets bounded
  by <math|C>. Here <math|<math-up|allot>> and <math|<math-up|permit>> are
  fixed patch-dependent geometric constants. <em|Sketch:>

  <\itemize-minus>
    <item>Transplant the stencil into a fixed reference torus
    (<hlink|<verbatim|impression>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Press.lean#L123-L155>).

    <item>Use a local trimming gauge in which the links have chord
    <math|\<leqslant\>\<delta\>>.

    <item>Write the prediction as <math|u\<cdot\><math-up|paste><around|(|\<ldots\>|)>\<cdot\>v<rsup|-1>>
    with maps of norm <math|\<leqslant\>1>
    (<hlink|<verbatim|freshQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Duplicated.lean#L52-L101>).

    <item>For large <math|x>, all gauge-tag choices give the same predictor
    in a neighbourhood of each <math|<around|(|B,0|)>> with
    <math|<around|\<\|\|\>|B|\<\|\|\>>\<leqslant\>r> on the selected
    stencils; the common predictor has uniform jets.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|sounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Sounds.lean#L69-L101>,
  <hlink|<verbatim|chosen_branch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Branch.lean#L140-L219>.

  <strong|Lemma 4.27 (precision near the background).> Under the fixed patch,
  branch, funding, volume and flag hypotheses of III.4.10, constants
  <math|r,s,C<rsub|\<ast\>>,\<eta\>\<gtr\>0> precede the threshold in
  <math|x>. On <math|<around|\<lVert\>|B|\<rVert\>>\<leqslant\>r>:

  <\itemize-minus>
    <item><math|M> and <math|W> are real-analytic, with weighted jets
    <math|\<leqslant\>C<rsub|\<ast\>>>;

    <item>the gap at <math|B=0> comes from Lemma 4.9;

    <item>a Lipschitz perturbation keeps half of it.
  </itemize-minus>

  For <math|d\<geqslant\>0> with <math|<around|(|1+2*k|)>*d\<leqslant\><text|width>/2>,
  the move-matrix entries have marked <math|k>-jets with the corresponding
  off-diagonal exponential weight. <em|(proof read for the precision bound;
  statement only for the entry bound)>

  <em|Lean:> <hlink|<verbatim|precision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Neighborhood.lean#L122-L159>,
  <hlink|<verbatim|entries>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_COVARIANCE_JETS/Quote.lean#L99-L127>.

  <strong|Lemma 4.28 (transport along walks).> Fix the jet order and a bound
  on the marked jets of the link field. For each <math|\<kappa\>\<gtr\>0> and
  endpoint jet cap <math|M\<gtr\>0>, there are a positive mark radius and
  <math|N\<gtr\>0>, uniform in the lattice, walk and scaling parameter
  <math|s\<in\><around|[|0,1|]>>, such that adjoint parallel transport moves
  a marked jet bound from the end of a walk of length <math|\<ell\>> to its
  start, at base point <math|0>, with cap multiplied by
  <math|N*e<rsup|\<kappa\>*\<ell\>>> (<hlink|<verbatim|carried>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Visits.lean#L81-L120>).
  For a strip-decaying kernel of rate <math|\<gamma\>\<gtr\>0>, walks with
  length at most <math|B*<around|(|1+<around|\||z|\|><rsub|1>|)>>,
  <math|B\<gtr\>0>, finite sets of walks below every length cutoff, and the
  required endpoint bounds, choosing <math|\<kappa\>=\<gamma\>/B> gives a
  uniform marked bound on the truncated sum
  (<hlink|<verbatim|follows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SECTOR_AFFINE_JETS/Tracks.lean#L36-L89>).
  If the path family has strip bound <math|<around|(|\<sigma\>,M|)>> with
  <math|M\<geqslant\>0>, <math|d\<geqslant\>0>, <math|\<gamma\>\<gtr\>0> and
  <math|2*\<gamma\>+2*k*d\<leqslant\>\<sigma\>/2>, selecting only paths of
  length at least <math|R> gives marked <math|k>-jets bounded by a constant
  times <math|M*e<rsup|-\<sigma\>*R/4>> (<hlink|<verbatim|transport_rows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/TrueTransport.lean#L257-L299>).

  <strong|Lemma 4.29 (cut and window errors).> Assume fine path bounds with
  positive rate <math|\<sigma\>> and nonnegative amplitude, and the branch
  condition. Near the flat background <math|B=0>, the actual sector Gram
  matrix equals the reindexed path-cut affine block. If no free links are
  frozen, the tree-coordinate identification also identifies their geometric
  windowed resolvents (<hlink|<verbatim|notarized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/CutGerm.lean#L110-L129>).
  With a large step, <math|R<around|(|x|)>\<geqslant\>120> and the marked gap
  and counting bounds needed for the inverses, the following bounds hold at
  <math|B=0> for <math|u\<geqslant\>0>:

  <\itemize-minus>
    <item>cutting the affine inverse germ at range <math|R> changes its
    <math|k>-jet by <math|O<around|(|4<rsup|k>*C<rsub|0><rsup|2>*e<rsup|-\<sigma\>*R/4>|)>>,
    with <math|C<rsub|0>\<propto\><around|(|1+u|)><rsup|-1>>
    (<hlink|<verbatim|shortening>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FREE_RESOLVENT/AffineResolvent.lean#L81-L100>);

    <item>the ordered windowed resolvent differs from the uncut one by a cap
    proportional to <math|<around|(|1+u|)><rsup|-2>*<around|(|e<rsup|-<around|(|k+1|)>*\<gamma\>*r<rsub|x>>+e<rsup|-\<sigma\>*<around|\<lfloor\>|R<around|(|x|)>/10<rsup|5>|\<rfloor\>>/4>|)>>;
    symmetrisation costs at most a factor <math|2>
    (<hlink|<verbatim|total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/LOCAL_GAUSSIAN_LAWS/Taylor.lean#L73-L108>);

    <item>given the marked bounds and positive gaps for both <math|W> and
    <math|C>, and the two successive admissible inverse-decay rates,
    <math|C<rsup|-1>-W> has jets through order <math|q> bounded by a constant
    times <math|e<rsup|-<around|(|q+1|)>*d*r<rsub|x>>> in the reduced-rate
    marked norm (<hlink|<verbatim|residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/SELECTED_ORDERED_KERNELS/SectorWindows.lean#L139-L165>).
  </itemize-minus>

  <subsection|4.6 Large fields and constants><label|46-large-fields-and-constants>

  <strong|Lemma 4.30 (clean fields).>

  <\itemize-minus>
    <item>Under the funding, block-size, volume, tree-gauge and local sector
    hypotheses of III.4.11, there is <math|C\<geqslant\>1>, independent of
    the integer halo, with the following property. The field
    <math|a<rsub|e>=<math-up|plog><around|(|U<rsub|e>*\<nu\><rsub|e><rsup|-1>|)>>
    vanishes on the tree links. On the swept annulus it gives exponential
    coordinates: within <math|<around|\<lfloor\>|2*R<around|(|x|)>/5|\<rfloor\>>>
    of each swept site, <math|<around|\||a<rsub|e>|\|>> and the linking are
    at most <math|C*<space|0.17em>t<rsub|L><around|(|x|)>>. A coarse gauge
    and its pullback to the fine lattice make the corresponding coarse and
    fine chords at most <math|C*<around|(|1+R<around|(|x|)>|)><rsup|5>*t<rsub|L><around|(|x|)>>
    (<hlink|<verbatim|cleans_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Clean.lean#L110-L208>).

    <item>Given a clean-field constant <math|X\<geqslant\>1>, there are
    <math|C\<gtr\>0> and <math|M\<geqslant\>X> such that, for large <math|x>,
    the local plaquette curvatures and block rows have first-order expansions
    in <math|a>, with linear term at most <math|C*w> and remainder at most
    <math|C*w<rsup|2>>, where <math|w=M*<around|(|1+R<around|(|x|)>|)><rsup|5>*t<rsub|L><around|(|x|)>>.
    Moreover <math|<around|(|1+R<around|(|x|)>|)><rsup|n>*w\<to\>0> for every
    <math|n\<in\>\<bbb-N\>>; in terms of <math|x>,
    <math|w=x<rsup|-1/2+o<around|(|1|)>>>
    (<hlink|<verbatim|reacts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/CollarData.lean#L131-L189>).
  </itemize-minus>

  <em|(proof read for the response estimate; statement only for the
  clean-field construction)>

  <strong|Lemma 4.31 (affine squares along paths).> Assume fine path bounds
  with amplitude <math|C> and cutoff direct coefficient <math|d<rsub|0>>. Fix
  a path cutoff <math|R<rsub|0>\<in\>\<bbb-N\>>, thresholds <math|t,s>,
  <math|B\<gtr\>0> and <math|h\<geqslant\>0>. Suppose the face under
  consideration has toll at most <math|t> and satisfies the path-retention
  condition, its two coarse path rows have norm at most <math|B*h>, and its
  first-order curvature and curvature error are at most <math|B*h> and
  <math|B*h<rsup|2>>. Require the same two curvature bounds at every face
  reached by a retained path of length at most <math|R<rsub|0>>, with chord
  deviation from the reference field at most <math|h> along every such path.
  Then the affine path series converges and work minus the extracted square
  is at least <math|-4*<around|(|m*B|)><rsup|2>*<around|(|1+2*c<rsub|G>*R<rsub|0>|)>*h<rsup|3>>,
  where <math|m=<sqrt|d<rsub|0>>+C+1> (<hlink|<verbatim|fine_squares>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/AffineRows.lean#L157-L209>).
  Under the clean-field and annulus hypotheses of Lemma 4.30, each fine-face,
  noise and coarse row at a swept site has error at least
  <math|-e<around|(|x|)>>, where <math|e> is eventually nonnegative and
  <math|<around|(|1+R<around|(|x|)>|)><rsup|n>*\<beta\><rsub|F><around|(|x,L|)>*e<around|(|x|)>\<to\>0>
  for every <math|n> (<hlink|<verbatim|coat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Recovery.lean#L68-L219>).

  <strong|Lemma 4.32 (proof of III.4.11).>

  <\enumerate>
    <item>Sum the row bounds of Lemma 4.31 over <math|Q>. The counted face,
    noise and coarse rows number at most <math|X*<around|(|1+R<around|(|x|)>|)><rsup|4><around|\||O|\|>>,
    so the total error is <math|e<rprime|'><around|(|x|)><around|\||O|\|>>,
    where <math|e<rprime|'><around|(|x|)>=X*<around|(|1+R<around|(|x|)>|)><rsup|4>*e<around|(|x|)>>
    still satisfies <math|<around|(|1+R<around|(|x|)>|)><rsup|n>*\<beta\><rsub|F><around|(|x,L|)>*e<rprime|'><around|(|x|)>\<to\>0>
    for every <math|n>.

    <item>Retain the affine squares selected by <math|H> and discard the
    other squares by positivity. The additional coarse rows in the work are
    nonnegative.

    <item>The extracted squares are unique, because the chart logarithm is
    unique once <math|max <around|(|K,C|)>*t<rsub|L><around|(|x|)>> is below
    the chart radius.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|annulus_pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/LARGE_FIELD_REMAINDERS/Annulus.lean#L36-L127>.

  <strong|Lemma 4.33 (proof of III.4.12).>

  <\enumerate>
    <item>Choose the free-field bounds.

    <item>Choose the stationary width caps and path amplitudes, build a sheet
    within them, then choose drift bounds, slope caps and block-size floors.
    The stationary theorem gives a Hessian gap and full stationary path
    estimates only after the free-field, retained-family, paid-run, chart and
    pre-<math|L> compatibility hypotheses have been supplied. Its
    construction combines the one-loop analytic estimate with downward
    induction over levels.

    <item>Build the startup and free-field data for that sheet, preserving
    the required orders and bounds.

    <item>For each <math|L>-sequence the delays are enlarged and the
    chart-threshold enlargement is applied.

    <item>Assemble the stationary path families and their estimates.
  </enumerate>

  Related constant-producing statements:

  <\itemize-minus>
    <item>The scheduling theorems produce funded delays under their
    transition-rate and compatibility hypotheses;

    <item>The Gaussian comparison theorem gives, for each fixed real moment
    parameter and patch satisfying the branch condition, uniform reverse
    column-switch bounds on sufficiently large funded steps with matching
    flags and the required size condition. It also bounds the source
    <math|M<rsup|\<top\>>*s<around|(|Y|)>> by
    <math|C*<around|(|t<around|(|x|)>+d|)>> for every <math|d\<gtr\>0>;

    <item>The counting theorem gives a polymer budget
    <math|e<rsup|-c*R<around|(|x|)>>> for fixed patch, nonnegative polymer
    exponent and prescribed integer orders; <math|c\<gtr\>0> is fixed by the
    input bounds.
  </itemize-minus>

  <em|(proof read for the main constant selection and stationary theorem;
  statement only for the ancillary scheduling and comparison results)>

  <em|Lean:> <hlink|<verbatim|sailsV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Seaside.lean#L96-L154>,
  <hlink|<verbatim|geared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66>,
  <hlink|<verbatim|book>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Calendar.lean#L133-L138>,
  <hlink|<verbatim|endures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Instruments.lean#L69-L86>,
  <hlink|<verbatim|post>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Reverse.lean#L64-L88>,
  <hlink|<verbatim|takings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Folio/Takings.lean#L99-L116>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The gap is a gauge-theoretic local Poincaré estimate: the predictor
  derivative must be compared with its flat-field value after a different
  gauge choice for each active link. Its smallness radius comes from
  continuity rather than an explicit formula. Inverse estimates then spend
  decay rate, while every bound must remain uniform in the volume, store,
  forest, tags and field.

  The determinant comparison must accommodate different active dimensions,
  hence identity completion and the frozen-link normalisation. The resulting
  core costs grow polynomially in <math|log x>; the retimed large-field
  threshold supplies the stronger suppression
  <math|e<rsup|-\<alpha\><math-up|hot><around|(|z|)><rsup|2><around|\||o|\|>>>.
  The final powers <math|x<rsup|-1/8>>, <math|x<rsup|-1/24>> and
  <math|y<rsup|-1/48>> allow the separate polymer budgets to be added.
  Gaussian transport and the affine-square identity are finite-dimensional;
  their application still requires the chart support and integrability
  conditions.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean (glossary)>>|<cell|<strong|Meaning>>>|<row|<cell|<math|\<gamma\><rsub|C>>>|<cell|<hlink|<verbatim|Gaussian.cloud>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L31>>|<cell|centred
  Gaussian with covariance <math|C>>>|<row|<cell|<math|z\<cdot\>C<rsup|-1>*z>>|<cell|<hlink|<verbatim|force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L79>>|<cell|precision
  quadratic form>>|<row|<cell|<math|<around|(|2*\<pi\>*g<rsup|2>|)><rsup|n<rsub|a>/2><around|(|det
  C|)><rsup|1/2>>>|<cell|<hlink|<verbatim|chartCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L103-L104>>|<cell|Gaussian
  normalisation>>|<row|<cell|<math|g=\<beta\><rsup|-1/2>>>|<cell|<hlink|<verbatim|coupling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L35>>|<cell|coupling
  of the representation>>|<row|<cell|<math|J>, <math|J<rsub|<math-up|sc>>>,
  <math|\<rho\><rsub|J>>>|<cell|<hlink|<verbatim|ChartRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23-L26>,
  <hlink|<verbatim|LocalRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38>>|<cell|normalised
  Haar Jacobian of exp, scale, radius>>|<row|<cell|<math|\<cal-F\><rsub|A>>,
  <math|\<cal-A\><rsub|A>>>|<cell|<hlink|<verbatim|chill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Shell.lean#L38-L40>
  (<verbatim|Frozen>, <verbatim|Active>)>|<cell|free links within
  <math|10*R<around|(|x|)>> of <math|A> / the
  others>>|<row|<cell|<math|\<iota\>*V>>|<cell|<hlink|<verbatim|replica>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35-L36>>|<cell|coarse
  field copied to the fine lattice>>|<row|<cell|<math|Q<rsub|Y><around|(|a|)>>,
  <math|W>>|<cell|<hlink|<verbatim|Rows.guide>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L37>,
  <hlink|<verbatim|Rows.gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Remainder.lean#L27>>|<cell|affine
  squares; precision <math|M<rsup|\<top\>>*M>>>|<row|<cell|<math|C=W<rsub|\<cal-W\>>>,
  <math|m<around|(|Y|)>>>|<cell|<hlink|<verbatim|fog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L69-L70>,
  <hlink|<verbatim|meanLog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Chosen.lean#L72-L74>>|<cell|windowed
  covariance; windowed mean>>|<row|<cell|<math|L>,
  <math|A<rsub|\<cal-W\>>>>|<cell|<hlink|<verbatim|Schur.per>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L67-L68>,
  <hlink|<verbatim|Schur.clouded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Windows.lean#L70>>|<cell|column-wise
  window inverse; its symmetrisation>>|<row|<cell|Schur decay,
  gap>|<cell|<hlink|<verbatim|Pours>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Schur.lean#L25-L28>,
  <hlink|<verbatim|Gapped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Schur.lean#L110>>|<cell|weighted
  row and column sums; <math|a\<cdot\>A*a\<geqslant\>\<eta\><around|\<lVert\>|a|\<rVert\>><rsup|2>>>>|<row|<cell|<math|\<Psi\>>>|<cell|<hlink|<verbatim|dyed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L63-L71>>|<cell|sector
  integrand in Gaussian coordinates>>|<row|<cell|permitted,
  licence>|<cell|<hlink|<verbatim|Permitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L95-L103>,
  <hlink|<verbatim|Licenses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Change.lean#L127-L135>>|<cell|hypotheses
  and conclusions of III.4.1>>|<row|<cell|<math|\<ell\><rsub|i>>, path
  letters, <math|S>>|<cell|<hlink|<verbatim|letterBase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Series.lean#L45-L46>,
  <verbatim|page>, <verbatim|errata>, <hlink|<verbatim|excess>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/RELATIVE_LOGDET_TRACE/Walls.lean#L35>>|<cell|window
  log letter; path terms; <math|A*A<rsub|\<cal-W\>>-1>>>|<row|<cell|<math|\<kappa\><around|(|p|)>>,
  <math|\<Lambda\><around|(|p|)>>>|<cell|<hlink|<verbatim|keptEarly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L50-L54>,
  <hlink|<verbatim|spoolLift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Prism.lean#L56-L63>>|<cell|relative
  log-normalisation; full log-integrand>>|<row|<cell|<math|<math-up|spare><around|(|\<beta\>|)>>>|<cell|<hlink|<verbatim|spare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Ledger.lean#L34>>|<cell|<math|<around|(|2*\<pi\>*g<rsup|2>|)><rsup|dim
  \<frak-g\>/2>*J<rsub|<math-up|sc>>>>>|<row|<cell|<math|<math-up|rent><rsub|o>>,
  far term, <math|I>, <math|<math-up|Sh>>>|<cell|<hlink|<verbatim|rents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L32>,
  <hlink|<verbatim|nightly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Enigma.lean#L35>,
  <hlink|<verbatim|introTax>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L31>,
  <hlink|<verbatim|showTax>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Shards.lean#L32>>|<cell|pieces
  of <math|\<kappa\>>>>|<row|<cell|<math|\<varepsilon\>>-small>|<cell|<hlink|<verbatim|Petty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Petty.lean#L28-L29>>|<cell|sum
  of local terms with polymer norm <math|\<leqslant\>\<varepsilon\>>>>|<row|<cell|<math|y<rsup|-1/48>>>|<cell|<hlink|<verbatim|garlic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/AFTERNOON_INTERACTING_RANK_COMPARISON/Opacity/Stocks.lean#L21>>|<cell|final
  polymer budget>>|<row|<cell|<math|R<around|(|x|)>>, <math|t<around|(|x|)>>,
  <math|t<rsub|L><around|(|x|)>>>|<cell|<verbatim|radiusB>, <verbatim|temp>,
  <verbatim|fiery>>|<cell|cluster radius, small-field threshold, fine-level
  threshold>>|<row|<cell|<math|M>, <math|s<around|(|Y|)>>>|<cell|<verbatim|move>,
  <verbatim|source>>|<cell|linear row map and frozen-link
  source>>|<row|<cell|<math|\<cal-E\>>, <math|<math-up|center><rsub|o>>>|<cell|<verbatim|Milk.levy>,
  <verbatim|Coffer.center>>|<cell|row energy remainder; its
  <math|-\<beta\>>-weighted core sum>>|<row|<cell|sector
  support>|<cell|<verbatim|Dyed.Playing>>|<cell|nonzero product of field,
  block, tag and chart cutoffs>>|<row|<cell|matching
  flags>|<cell|<verbatim|Matched>>|<cell|<math|<math-up|flags><around|(|A|)>=<math-up|flags><rsub|t<around|(|x|)>><around|(|V|)>>>>|<row|<cell|branch
  condition>|<cell|<verbatim|Patch.Branches>>|<cell|uniqueness of selected
  minimisers and eligible axial gauge>>|<row|<cell|sector regularity, noise
  bounds>|<cell|<verbatim|Chips>, <verbatim|noises>>|<cell|assumptions in
  III.4.6\UIII.4.7>>|<row|<cell|<math|c<rsub|G>>>|<cell|<verbatim|Gauge.colorScale>>|<cell|matrix
  norm factor in the path estimate>>|<row|<cell|price, bill, tax, rent,
  teller>|<cell|numerical bounds; <verbatim|Teller>>|<cell|the step-estimator
  interface>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Proof depth.> The supporting proofs marked \Pstatement
    only\Q remain incomplete readings: the strip-resolvent and
    Fourier-inverse results in Lemma 4.14; the flat comparison in 4.15; 4.16;
    the path-counting and interaction estimates in 4.19(c),(e); 4.21; parts
    of 4.25; the entry bound in 4.27; 4.28\U4.29; the clean-field
    construction in 4.30; 4.31; and the ancillary scheduling statements in
    4.33. Their statements and the stated mechanisms have been compared with
    the cited source; these labels do not certify their dependency proofs.

    <item><strong|Run-level hypotheses.> The packet-energy and
    support-exponent assumptions of III.4.7 are substantive inputs. Their
    simultaneous supply on the selected run, and the transfer from stationary
    path families to the tube's work rows, still need a complete account. The
    precision, determinant-jet and noise bounds have local suppliers, but
    their use does not establish these other premises.

    <item><strong|Free-kernel comparison.> Lemma 4.15 compares the flat
    sector under the no-frozen-link and free-metric compatibility conditions.
    A direct statement comparing an arbitrary interacting sector covariance
    with the infinite-volume free operator was not located. The full
    expansion of the free-metric compatibility conditions and the nested
    marked inverse bounds in Lemma 4.29 remains to be written.

    <item><strong|Consumers and coverage.> The downstream reset and
    repeatable-step statements have not been checked here. The additional
    assigned packages for Wilson bulk terms, vacuum stability, proof
    interfaces, multisource terms and flat RG data are not covered by these
    steps. The closure-size figures in the opening metadata were retained
    without recounting.

    <item><strong|References.> The precise results and bibliographic
    locations in Helgason, Glimm\UJaffe, Katznelson, Balaban and Dimock
    remain to be selected and verified. The cited Lean declarations are the
    evidence for the statements above.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.3 Free lattice kernels and
  covariances (notes)|III-3.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-4.tm>|<hlink|III.5 Cluster expansion of the polymer
  gas (notes) \<rightarrow\>|III-5.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.4. Gaussian integration: change of Gaussian
    sector, determinants, window law \V detailed notes \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|12>>
    <associate|3-strategy|<tuple|3|13>>
    <associate|4-steps|<tuple|4|13>>
    <associate|41-exact-change-of-variables|<tuple|4.1|13>>
    <associate|42-gap-decay-and-windows|<tuple|4.2|15>>
    <associate|43-determinants|<tuple|4.3|18>>
    <associate|44-gaussian-moments-and-insertions|<tuple|4.4|19>>
    <associate|45-jets|<tuple|4.5|21>>
    <associate|46-large-fields-and-constants|<tuple|4.6|22>>
    <associate|5-where-the-difficulty-lies|<tuple|5|23>>
    <associate|6-notation|<tuple|6|24>>
    <associate|7-what-remains-unexplained|<tuple|7|25>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|22>>
    <associate|auto-11|<tuple|5|23>>
    <associate|auto-12|<tuple|6|24>>
    <associate|auto-13|<tuple|7|25>>
    <associate|auto-2|<tuple|2|12>>
    <associate|auto-3|<tuple|3|13>>
    <associate|auto-4|<tuple|4|13>>
    <associate|auto-5|<tuple|4.1|13>>
    <associate|auto-6|<tuple|4.2|15>>
    <associate|auto-7|<tuple|4.3|18>>
    <associate|auto-8|<tuple|4.4|19>>
    <associate|auto-9|<tuple|4.5|21>>
    <associate|iii4-gaussian-integration-change-of-gaussian-sector-determinants-window-law--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Exact change of variables
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Gap, decay and windows
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Determinants
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Gaussian moments and insertions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Jets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Large fields and constants
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
<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.2 Choosing the constants: the order
  of choice and the RG schedule|III-2.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-3.tm>|<hlink|III.4 Gaussian integration: change of
  Gaussian sector, determinants, window law \<rightarrow\>|III-4.tm>>

  <ym-title|III.3. Free lattice kernels and
  covariances><label|iii3-free-lattice-kernels-and-covariances>

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

  Computes the free lattice kernels and establishes the decay and positivity
  bounds needed for Gaussian integration.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-3.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.2|III-2.tm> <ym-middot> <hlink|Next:
  III.4 \<rightarrow\>|III-4.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> <hlink|<verbatim|YM/Next/FREE_KERNELS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS>
    (5,450 lines), <hlink|<verbatim|YM/MultiNext/SIGNED_SOURCE_CONTINUATION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION>
    (1,674), <hlink|<verbatim|YM/Further/FREE_COVARIANCE_KP/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP>
    (924), <hlink|<verbatim|YM/UVNext/PRICED_KERNELS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS>
    (533), <hlink|<verbatim|YM/Further/CORRECTED_LIFT_COEFFICIENTS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS>
    (248), <hlink|<verbatim|YM/Push/CUTOFF_PROJECTORS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS>
    (139), <hlink|<verbatim|YM/ProofPorts/GRID_RENEWED_RESERVES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES>
    (30). <strong|Size:> 8,998 lines in the source allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  For fine/coarse levels, primes denote coarse data and
  <math|V=<around|(|<sqrt|c>*<space|0.17em>1,R|)>>, where <math|c> is the
  direct clip coefficient. The diagonal identities (D) and roll identities
  (R) are

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|d<rsup|\<ast\>>H*d*W>|<cell|=Q<rsup|\<ast\>>d<rsup|\<ast\>>H<rprime|'>*d,>|<cell|Q*W>|<cell|=1-\<kappa\><rsup|-1>*d<rsup|\<ast\>>H<rprime|'>*d,>>|<row|<cell|T<rsup|\<ast\>>d>|<cell|=d*Q,>|<cell|T*D<rprime|'>*d>|<cell|=D*d*W;>>|<row|<cell|M<rsub|f><rsup|\<ast\>>M<rsub|f>+M<rsub|n><rsup|\<ast\>>M<rsub|n>+O<rsup|\<ast\>>O>|<cell|=1,>|<cell|<sqrt|\<kappa\>>*M<rsub|n><rsup|\<ast\>>>|<cell|=V<rprime|'>*d,>>|<row|<cell|M<rsub|f>*V<rprime|'>*d>|<cell|=V*d*W,>|<cell|M<rsub|n>*V<rprime|'>*d>|<cell|=\<kappa\><rsup|-1/2>*d<rsup|\<ast\>>H<rprime|'>*d,>>|<row|<cell|O*V<rprime|'>*d>|<cell|=0,>|<cell|M<rsub|f><rsup|\<ast\>>V*d>|<cell|=<sqrt|\<kappa\>>*M<rsub|n><rsup|\<ast\>>Q.>>>>
    </aligned>
  </equation*>

  The defect identity (\<Delta\>) is

  <\equation*>
    H<rprime|'>*<around|(|H<rprime|'><rsup|-1>-T<rsup|\<ast\>>*H<rsup|-1>*T-\<kappa\><rsup|-1>*d*d<rsup|\<ast\>>|)>*H<rprime|'>=d<rsub|2><rsup|\<ast\>>*P*d<rsub|2>.
  </equation*>

  Under (D),(R), for all fine/coarse potentials <math|A,B>, setting
  <math|Z=A-W*B> gives

  <\equation*>
    <around|\<langle\>|d*A,H*d*A|\<rangle\>>+\<kappa\>*<around|\||Q*A-B|\|><rsup|2>=<around|\<langle\>|d*B,H<rprime|'>*d*B|\<rangle\>>+<around|\<langle\>|d*Z,H*d*Z|\<rangle\>>+\<kappa\>*<around|\||Q*Z|\|><rsup|2>.
  </equation*>

  <strong|Proposition III.3.1 (catalogue).> For every kernel choice <math|K>,
  there exist sequences <math|\<alpha\><rsub|j>,\<eta\><rsub|j>,\<gamma\><rsub|j>\<gtr\>0>,
  <math|\<Omega\><rsub|j>\<in\>\<bbb-R\>>,
  <math|\<lambda\><rsub|j>\<geqslant\>0>, <math|b<rsub|j>\<in\>\<bbb-N\>>,
  <math|j\<in\>\<bbb-N\>>, depending only on <math|K>. For every history of
  index <math|j\<geqslant\>4> and clip coefficient
  <math|0\<less\>c\<leqslant\>\<gamma\><rsub|j>>, its explicit metric data
  <math|<around|(|D,D<rsup|-1>,H,H<rsup|-1>,R|)>> lie in
  <math|\<cal-S\><around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>|)>>, with

  <\equation*>
    H<rsup|-1>=D<rsup|-1>+\<lambda\><rsub|j>*<around|(|d<rsub|2>*D<rsup|-1>|)><rsup|\<ast\>>*<around|(|d<rsub|2>*D<rsup|-1>|)>.
  </equation*>

  On every torus, <math|D*D<rsup|-1>=H*H<rsup|-1>=1>,
  <math|c*1+R<rsup|\<ast\>>*R=H>, <math|<wide|H|^><around|(|0|)>=1>,
  <math|H*d=D*d>; <math|H,D> are symmetric with bounds
  <math|\<eta\><rsub|j>*1\<leqslant\>H,D\<leqslant\>\<Omega\><rsub|j>*1>. For
  every gauge group, <math|d<rsup|\<ast\>>*H*d> is hypercubic invariant;
  empty histories give <math|D=1>.

  For every flight <math|<around|(|j,t|)>>, <math|j,t\<geqslant\>4>,
  <math|t\<in\><around|{|j-1,j|}>>, and difference word
  <math|<around|\||u|\|>\<leqslant\>j-2>,

  <\equation*>
    \<nabla\><rsub|u>*W\<in\>\<cal-S\><around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>*L<rsup|-1-<around|\||u|\|>>|)>,<space|2em>\<nabla\><rsub|u>*T\<in\>\<cal-S\><around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>*L<rsup|-2-<around|\||u|\|>>|)>.
  </equation*>

  Its rolled kernel <math|\<cal-P\><rsub|\<lambda\><rsub|j>,\<lambda\><rsub|t>>\<in\>\<cal-S\><around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>|)>>;
  if <math|L\<geqslant\>b<rsub|j>>, its symbol is Hermitian with
  <math|\<eta\><rsub|j>*1\<leqslant\><wide|\<cal-P\>|^>\<leqslant\>\<Omega\><rsub|j>*1>
  at every real momentum. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|pledges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L67-L93>.

  <strong|Proposition III.3.2 (families).> For every gauge group <math|G> and
  kernel choice <math|K>, a catalogue as above exists such that every sheet
  <math|\<frak-S\>> with kernel <math|K> admits a second table
  <math|<around|(|\<alpha\><rprime|'><rsub|j>,\<Omega\><rprime|'><rsub|j>,\<eta\><rsub|j>|)>>.
  For every trajectory with that kernel and the sheet's stage profile
  satisfying, at every level and step respectively,

  <\equation*>
    c<rsub|i>\<leqslant\>\<gamma\><rsub|J<around|(|i|)>>,<space|2em>L<rsub|i>\<geqslant\>b<rsub|J*<around|(|i+1|)>>,
  </equation*>

  there are pre-repair and output families simultaneously for all
  <math|N\<geqslant\>0>, <math|0\<leqslant\>i\<leqslant\>N>. They share the
  explicit history metrics with amendments
  <math|\<lambda\><rsub|J<around|(|i|)>>> and flight kernels <math|W,T> of
  index <math|<around|(|J*<around|(|i+1|)>,J<around|(|i|)>|)>> for
  <math|i\<less\>N>; bare histories are empty and <math|D<rsup|N,N>=1>.
  Before repair, III.3.1's bounds and symmetry hold, as do (D) and
  (\<Delta\>) on the schedule torus pairs of each step, with
  <math|P\<in\>\<cal-S\><around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>|)>>
  Hermitian and bounded below by <math|\<eta\><rsub|j>> on
  <math|<math-up|ran><space|0.17em>\<sigma\><rsub|2>> at real momenta,
  <math|j=J*<around|(|i+1|)>>. After repair, (D),(R) hold there; metric and
  difference bounds use the second table, retaining <math|\<eta\><rsub|j>>,
  and

  <\equation*>
    M<rsub|n>,O\<in\>\<cal-S\><around|(|\<alpha\><rprime|'><rsub|j>,\<Omega\><rprime|'><rsub|j>|)>,<space|2em>M<rsub|f>\<in\>\<cal-S\><around|(|\<alpha\><rprime|'><rsub|j>,\<Omega\><rprime|'><rsub|j>*L<rsub|i><rsup|-2>|)>.
  </equation*>

  <em|Status:> theorem under the credit condition (C1), (C2) as hypothesis.
  The variant <verbatim|before_paid> (assigned to III.4) discharges it from
  the III.9 sheet and the III.2 payment record. <em|Lean:>
  <hlink|<verbatim|retained_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145>.

  <strong|Proposition III.3.3 (all tori).> Every family satisfying III.3.2's
  output conditions, for any table, satisfies (D),(R) for every <math|N>,
  <math|m\<less\>N> and positive sides <math|c,f> with <math|f=c*L<rsub|m>>,
  using the same kernels and level clips. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|complete_roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L109-L157>.

  <strong|Proposition III.3.4 (rolled positivity).> For fixed kernel choice
  <math|K> and integers <math|j,t\<geqslant\>4>, there exist
  <math|C<rsub|0>,B\<gtr\>0> depending only on these data. For every
  <math|\<lambda\>\<geqslant\>C<rsub|0>>, <math|\<mu\>\<geqslant\>0>, there
  exist <math|\<eta\>,\<sigma\>,\<Omega\>\<gtr\>0> such that every flight
  <math|<around|(|j,t|)>> has <math|\<cal-P\><rsub|\<mu\>,\<lambda\>>\<in\>\<cal-S\><around|(|\<sigma\>,\<Omega\>|)>>;
  if <math|\<mu\>*B\<leqslant\>L<rsup|2>>, its symbol is Hermitian with
  <math|\<eta\>*1\<leqslant\><wide|\<cal-P\>|^>\<leqslant\>\<Omega\>*1> at
  all real momenta. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Flight.frontier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L99-L140>.

  <strong|Proposition III.3.5 (filters).> Define
  <math|<math-up|rail><rsub|M><around|(|z|)>=M<rsup|-1>*<big|sum><rsub|s=0><rsup|M-1>e<rsup|i*s*z>>
  for positive integers <math|M>, <math|<math-up|plank><rsub|M><around|(|z|)>=M<rsup|-1>*<big|sum><rsub|<around|\||s|\|>\<leqslant\><around|(|M-1|)>/2>e<rsup|i*s*z>>
  for odd <math|M>, and <math|a<rsub|L><around|(|p|)>=<big|prod><rsub|a><math-up|plank><rsub|L><around|(|p<rsub|a>|)>>.
  For all sizes where defined and all <math|z\<in\>\<bbb-C\>>, both line
  filters satisfy <math|F<rsub|L>*<around|(|M*z|)>*F<rsub|M><around|(|z|)>=F<rsub|L*M><around|(|z|)>>
  and <math|<around|\||F<rsub|M><around|(|z|)>|\|>\<leqslant\>e<rsup|M<around|\||<math-up|Im><space|0.17em>z|\|>>>;
  plank is even, <math|2*\<pi\>>-periodic and real on <math|\<bbb-R\>>.
  Absolute <math|c<rsub|\<ast\>>,c<rsub|1>\<gtr\>0> give
  <math|<around|\||<math-up|rail><rsub|M><around|(|z|)>|\|>\<geqslant\>c<rsub|\<ast\>>>
  when <math|M<around|\||z|\|>\<leqslant\>3*\<pi\>/2>, and
  <math|<around|\||<math-up|plank><rsub|M><around|(|z|)>|\|>\<geqslant\>e<rsup|-c<rsub|1>*M/L>>
  for real <math|z>, <math|M\<leqslant\>L>,
  <math|L<around|\||z|\|>\<leqslant\>3*\<pi\>/2>. Absolute <math|B> bounds
  both filters at <math|<around|(|q<rsub|\<ell\>>|)><rsub|a>>,
  <math|q<rsub|\<ell\>>=<around|(|p+2*\<pi\>*\<ell\>|)>/L>, by
  <math|B/<around|(|1+<around|\||\<ell\><rsub|a>|\|>|)>> for odd <math|L> and
  <math|<around|\||<math-up|Re><space|0.17em>p<rsub|a>|\|>\<less\>5*\<pi\>/4>,
  <math|<around|\||<math-up|Im><space|0.17em>p<rsub|a>|\|>\<less\>\<pi\>/4>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|plank_bind>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L68-L76>,
  <hlink|<verbatim|principal_plank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L162-L196>,
  <hlink|<verbatim|alias_rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L200-L245>.

  <strong|Proposition III.3.6 (curvature covariance).> Fix
  <math|\<alpha\>,\<eta\>\<gtr\>0>, <math|\<Omega\>\<in\>\<bbb-R\>>. A real
  2-form kernel <math|f> is firm if <math|f\<in\>\<cal-S\><around|(|\<alpha\>,\<Omega\>|)>>,
  <math|<wide|f|^><around|(|0|)>=1>, and <math|\<eta\><around|\||\<omega\>|\|><rsup|2>\<leqslant\><around|\<langle\>|\<omega\>,f<rsub|n>*\<omega\>|\<rangle\>>\<leqslant\>\<Omega\><around|\||\<omega\>|\|><rsup|2>>
  on every torus; symmetry is not assumed. On
  <math|U=<around|{|p\<ne\>0:<around|\||p<rsub|a>|\|>\<less\>3*\<pi\>/2|}>\<subset\>\<bbb-R\><rsup|4>>,
  set

  <\equation*>
    \<Phi\><rsub|f>=\<sigma\><rsub|1><rsup|\<ast\>>*<wide|f|^>*\<sigma\><rsub|1>+\<sigma\><rsub|0>*\<sigma\><rsub|0><rsup|\<ast\>>,<space|2em>G<rsub|f>=\<sigma\><rsub|1>*\<Phi\><rsub|f><rsup|-1>*\<sigma\><rsub|1><rsup|\<ast\>>,<space|2em>G<rsub|\<infty\>>=s<around|\||p|\|><rsup|-2>*s<rsup|\<ast\>>,
  </equation*>

  where <math|s> wedges with <math|i*p>. There exist <math|b\<gtr\>0> and
  <math|C<rsub|n>\<geqslant\>0> for every <math|n\<in\>\<bbb-N\>>, depending
  only on <math|<around|(|\<alpha\>,\<Omega\>,\<eta\>|)>> and additionally on
  <math|n> for <math|C<rsub|n>>, such that for every firm <math|f>,
  <math|p\<in\>U> and complex 1-form <math|x>,

  <\equation*>
    <math-up|Re><around|\<langle\>|x,\<Phi\><rsub|f>*x|\<rangle\>>\<geqslant\>b<around|\||p|\|><rsup|2><around|\||x|\|><rsup|2>,<space|1em><around|\<\|\|\>|D<rsup|n>*G<rsub|f>|\<\|\|\>>\<leqslant\>C<rsub|n><around|\||p|\|><rsup|-n>,<space|1em><around|\<\|\|\>|D<rsup|n>*<around|(|G<rsub|f>-G<rsub|\<infty\>>|)>|\<\|\|\>>\<leqslant\>C<rsub|n><around|\||p|\|><rsup|1-n>.
  </equation*>

  For scalar <math|f\<in\>\<cal-S\><around|(|\<alpha\>,\<Omega\>|)>>,
  <math|<wide|f|^>\<in\>C<rsup|\<infty\>>> with
  <math|<around|\<\|\|\>|D<rsup|n>*<wide|f|^>|\<\|\|\>>\<leqslant\>A<rsub|n>*\<Omega\>>
  everywhere, <math|A<rsub|0>=1>, <math|A<rsub|n>=<around|(|n/\<alpha\>|)><rsup|n>>
  for <math|n\<geqslant\>1>. <em|Status:> theorems. <em|Lean:>
  <hlink|<verbatim|tank_full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L115-L125>,
  <hlink|<verbatim|gem_quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L110-L120>,
  <hlink|<verbatim|radial_prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Plain.lean#L101-L133>.

  <strong|Proposition III.3.7 (nonlinear calculus).> <em|Status:> theorems.

  (a) For <math|b,k\<in\>\<bbb-N\>>, <math|k\<leqslant\>b>, there exists
  <math|C=C<around|(|b,k|)>\<geqslant\>1>. If <math|L\<geqslant\>1>,
  <math|M\<geqslant\>0>, and <math|p:\<bbb-Z\><rsup|4>\<to\>E>, with <math|E>
  a real normed space, satisfies <math|<around|\<\|\|\>|\<nabla\><rsub|u>*p<around|(|x|)>|\<\|\|\>>\<leqslant\>M*L<rsup|-1-<around|\||u|\|>>*<around|(|1+L<rsup|-1><around|\||x|\|><rsub|1>|)><rsup|b>>
  for every <math|x> and <math|<around|\||u|\|>\<leqslant\>k>, then its
  degree-at-most-<math|i> Newton pieces <math|P<rsub|i><around|(|x|)>=<big|sum><rsub|<around|\||\<nu\>|\|>=i><binom|x|\<nu\>>\<nabla\><rsup|\<nu\>>*p<around|(|0|)>>
  obey <math|<around|\<\|\|\>|P<rsub|i><around|(|x|)>|\<\|\|\>>\<leqslant\>C*M*L<rsup|-1-i>*<around|(|1+<around|\||x|\|><rsub|1>|)><rsup|b>>
  for <math|i\<less\>k>; the remainder <math|p-<big|sum><rsub|i\<less\>k>P<rsub|i>>
  obeys the same bound with <math|i=k>. <em|Lean:>
  <hlink|<verbatim|capital>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/TownHall.lean#L31-L90>.

  (b) Let <math|d\<in\>\<bbb-N\>> and <math|f:E\<to\>F> be <math|C<rsup|d>>
  at <math|0> between real normed spaces, with finitely many continuous
  linear <math|p<rsub|v>:E\<to\>E>, <math|<big|sum><rsub|v>p<rsub|v>=1>,
  integer weights <math|Y<rsub|v>\<geqslant\>1>. If all derivatives through
  <math|d> of <math|f<around|(|<big|sum><rsub|v>t<rsup|Y<rsub|v>>*p<rsub|v>*z|)>>
  vanish at <math|0> for every <math|z>, then
  <math|D<rsup|m>*f<around|(|0|)><around|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>=0>
  for all <math|m\<in\>\<bbb-N\>> whenever integers
  <math|k<rsub|i>\<geqslant\>1> satisfy <math|<big|sum><rsub|i>k<rsub|i>\<leqslant\>d>
  and <math|p<rsub|v>*x<rsub|i>=0> for <math|Y<rsub|v>\<gtr\>k<rsub|i>>.
  <em|Lean:> <hlink|<verbatim|cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L120-L147>.

  (c) Let <math|b,d\<in\>\<bbb-N\>>, <math|b\<leqslant\>d>,
  <math|n\<geqslant\>2>, <math|o\<in\>\<Lambda\><rsub|n>>, and
  <math|X\<subset\>\<Lambda\><rsub|n>> finite with
  <math|10<space|0.17em><math-up|dist><rsub|\<infty\>><around|(|x,o|)>\<less\>n>
  for every <math|x\<in\>X> (torus distance). Suppose
  <math|u:<math-up|Config><around|(|G,\<Lambda\><rsub|n>|)>\<to\>\<bbb-C\>>
  is gauge invariant, depends only on links with both endpoints in <math|X>,
  and <math|u\<circ\>exp> is <math|C<rsup|b>> at <math|0>. If
  <math|u<around|(|U<rsub|J,o><around|(|t|)>|)>> has zero derivatives through
  <math|b> for every radial polynomial connection jet through weight <math|d>
  (degree <math|r-1> has weight <math|r\<geqslant\>2>), then
  <math|D<rsup|m>*<around|(|u\<circ\>exp|)><around|(|0|)><around|(|w<rsub|1>,\<ldots\>,w<rsub|m>|)>=0>
  for all <math|m\<in\>\<bbb-N\>>, integers <math|p<rsub|i>\<geqslant\>1>,
  <math|<big|sum><rsub|i>p<rsub|i>\<leqslant\>b>, whenever the link field
  <math|w<rsub|i>> is polynomial of degree <math|\<leqslant\>p<rsub|i>-1> in
  centred initial-site coordinates on those links; other links are
  unrestricted. Here <math|U<rsub|J,o><around|(|t|)>> denotes based
  holonomies with weight-<math|r> components multiplied by <math|t<rsup|r>>.
  <em|Lean:> <hlink|<verbatim|wiped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/PMOM.lean#L43-L61>.

  (d) For every <math|j\<in\>\<bbb-N\>>, every family of homogeneous
  degree-<math|<around|(|j+1|)>> polynomials
  <math|Q<rsub|a>:\<bbb-R\><rsup|4>\<to\>\<frak-g\>> (<math|a=1,\<ldots\>,4>)
  decomposes as <math|Q<rsub|a>=K<rsub|a>+\<partial\><rsub|a>*r>, where
  <math|r=<around|(|j+2|)><rsup|-1>*<big|sum><rsub|a>x<rsub|a>*Q<rsub|a>> has
  degree <math|j+2> and <math|K> has degree <math|j+1> with
  <math|<big|sum><rsub|a>x<rsub|a>*K<rsub|a>=0>. <em|Lean:>
  <hlink|<verbatim|locale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Averaging.lean#L84-L114>.

  (e) There exists <math|C<around|(|G|)>\<gtr\>0>: if
  <math|0\<leqslant\>b\<leqslant\>1>, <math|\<tau\>\<geqslant\>C<around|(|G|)>*b<rsup|2>>,
  <math|v> is a Lie-algebra link field with
  <math|<around|\||v<rsub|x>|\|>\<leqslant\>b> on links within distance
  <math|5> of <math|Y>, and plaquettes touching <math|Y> have chord distance
  <math|\<leqslant\>\<tau\>> from <math|1> under <math|exp <around|(|v|)>>,
  those bounds persist under <math|exp <around|(|s*v|)>> for all
  <math|0\<leqslant\>s\<leqslant\>1>. <em|Lean:>
  <hlink|<verbatim|strings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Safeguard.lean#L148-L177>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: lattice, gauge group and signed symmetries; III.1: block
    averages, clips and trajectories; III.2: sheets and payment.

    <item>III.6: positivity, square roots and linear algebra F06\UF09;
    III.10: repair and rigidity; III.16: Fourier kernels and weighted norms.

    <item>Fourier/Bloch decomposition, Schur complements, lattice Koszul
    exactness, Newton interpolation and radial gauge. The penalty
    <math|\<kappa\>\<gtr\>0> comes from <math|K>.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Solve the Gaussian block-spin problem by alias sums. Cancel the singular
  principal-alias poles before inversion; smoothing and geometric dilation
  along histories give uniform strip bounds. Amend inverse metrics away from
  exact forms to make the defect positive, then construct the isometry blocks
  without changing <math|W,T> or the quadratic forms on potentials.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>History filters have uniform alias decay and a principal-alias
    lower bound; geometric dilation controls products of filters.
    <hlink|<verbatim|Train.smooth_upper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L169-L184>.

    <item>Lagrange's identity gives the diagonal curvature metric from the
    auxiliary covariance; cancelling poles gives analytic invertible symbols.
    <hlink|<verbatim|Train.bend_firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L188-L194>.

    <item>Alias algebra gives (D), including zero momentum.
    <hlink|<verbatim|Flight.tangent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L63-L118>.

    <item>Koszul exactness factors the defect through <math|d<rsub|2>>;
    amendments replace its 3-form factor by
    <math|C+\<lambda\>-\<mu\>*S<rsup|\<ast\>>*S>, with
    <math|S<rsup|\<ast\>>*S=O<around|(|L<rsup|-2>|)>>.
    <hlink|<verbatim|Flight.rebased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L144-L181>.

    <item>Fix the catalogue, impose the credit bounds and apply F06\UF09 to
    construct (R); periodisation limits extend identities to all tori.
    <hlink|<verbatim|Bid.pinning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166>,
    <hlink|<verbatim|Echo.allAcross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L105-L116>.

    <item>Coercivity and the resolvent identity give the covariance
    comparison; weighted Taylor expansion and radial decomposition give the
    nonlinear vanishing results. <hlink|<verbatim|gem_quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L110-L120>,
    <hlink|<verbatim|covers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Routes.lean#L63-L127>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Bounds must hold uniformly over arbitrary history lengths and block sizes.
  Positivity is established at real momenta before thinning the analytic
  strip. Harmonic forms require defect identities on all tori. Repair
  constants depend on direct clip coefficients; cross-kernel decay is
  measured on the coarse lattice.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|\<Lambda\><rsub|n>=<around|(|\<bbb-Z\>/n*\<bbb-Z\>|)><rsup|4>>;
  <math|d<rsub|r>> acts on real <math|r>-cochains, <math|d=d<rsub|1>>,
  <math|\<sigma\><rsub|r>=<wide|d|^><rsub|r>>, and <math|\<ast\>> is adjoint.
  <math|R\<in\>\<cal-S\><around|(|\<alpha\>,\<Omega\>|)>> means, for every
  entry, <math|<big|sum><rsub|y>e<rsup|\<alpha\><around|\||y|\|><rsub|1>><around|\||R<rsub|a*b><around|(|y|)>|\|>\<leqslant\>\<Omega\>>.
  <math|<wide|R|^>,R<rsub|n>> denote Fourier symbols and periodisations;
  aliases use centred representatives. <math|J<around|(|i|)>> is the stage
  index and <math|c<rsub|i>> the direct clip coefficient. <math|D<rsup|n>>
  denotes full Fréchet derivatives with multilinear operator norm;
  <math|\<nabla\><rsub|u>> denotes fine forward differences. The cochain
  inner product counts cells. Histories comprise odd blocks
  <math|L\<geqslant\>3>, stage indices <math|J\<geqslant\>4> dropping by at
  most one; a flight <math|<around|(|j,t|)>> adds one block to an
  index-<math|j> history, giving index <math|t\<in\><around|{|j-1,j|}>>.
  <math|Q> averages potentials, <math|W> minimises the quadratic action,
  <math|T> transports curvature, and <math|M<rsub|f>,M<rsub|n>,O> are the
  isometry blocks; <math|C,S> denote the unamended 3-form defect and
  transport. <hlink|<verbatim|Towers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L70-L75>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  The iterated Feynman-gauge interpretation remains probable. Gauge and
  harmonic zero modes, Gaussian determinants and integration-variable changes
  require further treatment in III.4 and III.10. F06\UF07 and analytic
  coefficient extraction are inputs here. III.3.6 asserts no position-space
  continuum limit or contact-term statement.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-3.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.16|III-16.tm>,
  <hlink|III.1|III-1.tm>, <hlink|III.6|III-6.tm>, <hlink|II.1|II-1.tm>,
  <hlink|III.10|III-10.tm>, <hlink|IV.1|IV-1.tm>, <hlink|III.15|III-15.tm>.

  <strong|Referenced by:> <hlink|III.2|III-2.tm>, <hlink|III.13|III-13.tm>,
  <hlink|III.6|III-6.tm>, <hlink|III.11|III-11.tm>, <hlink|III.10|III-10.tm>,
  <hlink|III.14|III-14.tm>, <hlink|III.4|III-4.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|III.9|III-9.tm>, <hlink|VII.1|VII-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 8,998 attributed lines; 1,377 line-counted
  declarations; 1,593 assigned declaration names. Of the assigned names,
  1,559 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Next/FREE_KERNELS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS>
    \V 5,450 lines.

    <item>work package <hlink|<verbatim|YM/MultiNext/SIGNED_SOURCE_CONTINUATION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION>
    \V 1,674 lines.

    <item>work package <hlink|<verbatim|YM/Further/FREE_COVARIANCE_KP/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP>
    \V 924 lines.

    <item>work package <hlink|<verbatim|YM/UVNext/PRICED_KERNELS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS>
    \V 533 lines.

    <item>work package <hlink|<verbatim|YM/Further/CORRECTED_LIFT_COEFFICIENTS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS>
    \V 248 lines.

    <item>work package <hlink|<verbatim|YM/Push/CUTOFF_PROJECTORS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS>
    \V 139 lines.

    <item>work package <hlink|<verbatim|YM/ProofPorts/GRID_RENEWED_RESERVES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES>
    \V 30 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Bid.Retained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105>

    <item><hlink|<verbatim|Donate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L21-L22>

    <item><hlink|<verbatim|Bleeps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L32>

    <item><hlink|<verbatim|Reaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L34-L36>

    <item><hlink|<verbatim|Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L38-L40>

    <item><hlink|<verbatim|Replaces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L53-L58>

    <item><hlink|<verbatim|Craft.Rack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73>

    <item><hlink|<verbatim|F06>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L84-L85>

    <item><hlink|<verbatim|F07>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L90-L91>

    <item><hlink|<verbatim|F08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L93-L96>

    <item><hlink|<verbatim|F09>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L99-L101>

    <item><hlink|<verbatim|Bid.Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>

    <item><hlink|<verbatim|Row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22>

    <item><hlink|<verbatim|Row.strip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L26>

    <item><hlink|<verbatim|Cross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L26>

    <item><hlink|<verbatim|installed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L35>

    <item><hlink|<verbatim|Screen.reproduces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Original.lean#L134-L146>

    <item><hlink|<verbatim|garnet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L15>

    <item><hlink|<verbatim|pearl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L17>

    <item><hlink|<verbatim|blade_id>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L41-L57>

    <item><hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L62>

    <item><hlink|<verbatim|ion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L68-L79>

    <item><hlink|<verbatim|Firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Floor.lean#L17-L21>

    <item><hlink|<verbatim|real_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Floor.lean#L94-L100>

    <item><hlink|<verbatim|Gem.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Gem.lean>

    <item><hlink|<verbatim|Value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Gem.lean#L17>

    <item><hlink|<verbatim|Weight.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Weight.lean>

    <item><hlink|<verbatim|Weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Weight.lean#L39-L41>

    <item><hlink|<verbatim|Laurent.Width>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L104>

    <item><hlink|<verbatim|attenuation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Mediator.lean#L70-L98>

    <item><hlink|<verbatim|Maps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Mom.lean#L43-L52>

    <item><hlink|<verbatim|converse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L84-L115>

    <item><hlink|<verbatim|pledge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L30>

    <item><hlink|<verbatim|amend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L31>

    <item><hlink|<verbatim|bail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L32>

    <item><hlink|<verbatim|treble>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L33>

    <item><hlink|<verbatim|pledge_warm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L41-L59>

    <item><hlink|<verbatim|insurance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L78-L79>

    <item><hlink|<verbatim|forced_amend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L80-L94>

    <item><hlink|<verbatim|obligations>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L95-L127>

    <item><hlink|<verbatim|entry_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bank.lean#L49-L67>

    <item><hlink|<verbatim|Train.recover_rho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L150-L153>

    <item><hlink|<verbatim|Train.bulb_firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L160-L163>

    <item><hlink|<verbatim|Train.bulb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L39>

    <item><hlink|<verbatim|Train.bend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L43-L44>

    <item><hlink|<verbatim|Train.rho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L46>

    <item><hlink|<verbatim|Train.lift_bend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L88-L100>

    <item><hlink|<verbatim|Flight.wire_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Cable.lean#L97-L103>

    <item><hlink|<verbatim|before_paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124>

    <item><hlink|<verbatim|Willing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L28>

    <item><hlink|<verbatim|credit_from_sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L95-L102>

    <item><hlink|<verbatim|zone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L21>

    <item><hlink|<verbatim|domainRadius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L24>

    <item><hlink|<verbatim|meter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L82>

    <item><hlink|<verbatim|pink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L54>

    <item><hlink|<verbatim|blue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L55>

    <item><hlink|<verbatim|Flight.sale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L90>

    <item><hlink|<verbatim|heart_banked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Dispatch.lean#L40-L47>

    <item><hlink|<verbatim|Flight.ahead_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Docked.lean#L53-L71>

    <item><hlink|<verbatim|Flight.render>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L23-L25>

    <item><hlink|<verbatim|Flight.rollFunds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L27-L29>

    <item><hlink|<verbatim|Flight.netted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L34-L41>

    <item><hlink|<verbatim|Flight.absorb_before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L58-L95>

    <item><hlink|<verbatim|Train.levelNoise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L131>

    <item><hlink|<verbatim|Train.levelD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L133-L134>

    <item><hlink|<verbatim|D_feedback>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L154-L156>

    <item><hlink|<verbatim|Train.pole_split>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L192-L201>

    <item><hlink|<verbatim|massFilter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L23>

    <item><hlink|<verbatim|feed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L62>

    <item><hlink|<verbatim|full_cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L22-L35>

    <item><hlink|<verbatim|low_ceiling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L37-L51>

    <item><hlink|<verbatim|Defined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L54-L58>

    <item><hlink|<verbatim|bid_bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L69-L120>

    <item><hlink|<verbatim|top_metric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L140-L155>

    <item><hlink|<verbatim|vault>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L20>

    <item><hlink|<verbatim|pulse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L22>

    <item><hlink|<verbatim|Double.duplex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lifts.lean#L121-L143>

    <item><hlink|<verbatim|duplex_stock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lifts.lean#L145-L154>

    <item><hlink|<verbatim|rail_height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L114-L122>

    <item><hlink|<verbatim|plank_height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L127-L133>

    <item><hlink|<verbatim|rail_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L140-L152>

    <item><hlink|<verbatim|plank_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L154-L155>

    <item><hlink|<verbatim|rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L34>

    <item><hlink|<verbatim|plank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L38>

    <item><hlink|<verbatim|rail_bind>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L51-L62>

    <item><hlink|<verbatim|Moderate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Moderate.lean#L105-L106>

    <item><hlink|<verbatim|pilot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Pilot.lean#L46-L47>

    <item><hlink|<verbatim|Mag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L20>

    <item><hlink|<verbatim|BottomQuote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L22-L24>

    <item><hlink|<verbatim|HopQuote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L25-L28>

    <item><hlink|<verbatim|Catalog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L29-L33>

    <item><hlink|<verbatim|buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L46-L65>

    <item><hlink|<verbatim|Flight.duo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L24-L29>

    <item><hlink|<verbatim|Flight.scaled_tri>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L33-L49>

    <item><hlink|<verbatim|retained_presents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L121-L126>

    <item><hlink|<verbatim|diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L44-L56>

    <item><hlink|<verbatim|check_bleep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L57-L58>

    <item><hlink|<verbatim|stageHop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L64-L65>

    <item><hlink|<verbatim|location>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L73>

    <item><hlink|<verbatim|destination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L74>

    <item><hlink|<verbatim|Present>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L82-L85>

    <item><hlink|<verbatim|Credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L87-L88>

    <item><hlink|<verbatim|shelves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L90-L120>

    <item><hlink|<verbatim|script_main>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Scripts.lean#L122-L139>

    <item><hlink|<verbatim|script_cross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Scripts.lean#L141-L156>

    <item><hlink|<verbatim|script_dual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Scripts.lean#L179-L211>

    <item><hlink|<verbatim|Flight.intake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L136-L149>

    <item><hlink|<verbatim|Flight.dep_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L158-L187>

    <item><hlink|<verbatim|Flight.banked_dollars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L215-L227>

    <item><hlink|<verbatim|Flight.gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L33-L35>

    <item><hlink|<verbatim|Flight.fund>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L43>

    <item><hlink|<verbatim|rotor_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L103-L120>

    <item><hlink|<verbatim|Flight.land>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L35>

    <item><hlink|<verbatim|hinge_transport>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L60-L63>

    <item><hlink|<verbatim|sworn_metric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signed.lean#L65-L70>

    <item><hlink|<verbatim|secure_both>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Strands.lean#L30-L38>

    <item><hlink|<verbatim|Secured.propels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Strands.lean#L85-L107>

    <item><hlink|<verbatim|area>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L18>

    <item><hlink|<verbatim|Train.smooth_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L186-L194>

    <item><hlink|<verbatim|Train>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L22-L24>

    <item><hlink|<verbatim|Train.smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L36>

    <item><hlink|<verbatim|Train.bind>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L43-L48>

    <item><hlink|<verbatim|wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Wire.lean#L63>

    <item><hlink|<verbatim|ZeroAlias.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/ZeroAlias.lean>

    <item><hlink|<verbatim|mean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L65-L66>

    <item><hlink|<verbatim|Towers.Deep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L111-L114>

    <item><hlink|<verbatim|Horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121>

    <item><hlink|<verbatim|MapPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128>

    <item><hlink|<verbatim|Horizon.Suffices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>

    <item><hlink|<verbatim|Bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40>

    <item><hlink|<verbatim|Bed.full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L49-L51>

    <item><hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>

    <item><hlink|<verbatim|Towers.Diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86>

    <item><hlink|<verbatim|Towers.Roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L88-L96>

    <item><hlink|<verbatim|K>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69>

    <item><hlink|<verbatim|Inputs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79>

    <item><hlink|<verbatim|action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L93-L103>

    <item><hlink|<verbatim|panes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Purl.lean#L20-L53>

    <item><hlink|<verbatim|housing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L90-L101>

    <item><hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>

    <item><hlink|<verbatim|Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>

    <item><hlink|<verbatim|Rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50-L53>

    <item><hlink|<verbatim|Speeds.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES/Speeds.lean>

    <item><hlink|<verbatim|canon_first>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES/Speeds.lean#L37-L49>

    <item><hlink|<verbatim|spectral_bank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS/Bank.lean#L161-L169>

    <item><hlink|<verbatim|drop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS/Frame.lean#L104-L105>

    <item><hlink|<verbatim|retain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS/Frame.lean#L108-L109>

    <item><hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>

    <item><hlink|<verbatim|KernelChoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45>

    <item><hlink|<verbatim|Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146>

    <item><hlink|<verbatim|testLinks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L74-L75>

    <item><hlink|<verbatim|Echo.schedule_sides>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L118-L119>

    <item><hlink|<verbatim|Echo.Sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L38>

    <item><hlink|<verbatim|Echo.all>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L77-L81>

    <item><hlink|<verbatim|universal_diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L46-L60>

    <item><hlink|<verbatim|orthogonal_iff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L87-L98>

    <item><hlink|<verbatim|F06>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06.lean#L64-L128>

    <item><hlink|<verbatim|F07>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L180-L201>

    <item><hlink|<verbatim|F08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08.lean#L53-L146>

    <item><hlink|<verbatim|F09>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F09.lean#L41-L150>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-3-1>

  <\itemize-minus>
    <item><strong|K-III.3.1> <hlink|<verbatim|Flight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L22-L29>
    <em|(numbered result)> \V A structure packaging one orientation of a hop
    with two stage indices.
  </itemize-minus>

  <label|k-iii-3-2>

  <\itemize-minus>
    <item><strong|K-III.3.2> <hlink|<verbatim|capital>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/TownHall.lean#L31-L90>
    <em|(numbered result)> \V Under a drift hypothesis, the first k binomial
    pieces and the tail are bounded with powers of inverse L, polynomial in
    size.
  </itemize-minus>

  <label|k-iii-3-3>

  <\itemize-minus>
    <item><strong|K-III.3.3> <hlink|<verbatim|cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L120-L147>
    <em|(numbered result)> \V For a weighted-graded function, mixed
    derivatives at the origin vanish when total order is within the degree
    and each input has lower weight than its grade requires.
  </itemize-minus>

  <label|k-iii-3-4>

  <\itemize-minus>
    <item><strong|K-III.3.4> <hlink|<verbatim|principal_plank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L162-L196>
    <em|(numbered result)> \V A lower bound on the norm of a plank factor at
    real argument, of exponential form in the ratio M/L.
  </itemize-minus>

  <label|k-iii-3-5>

  <\itemize-minus>
    <item><strong|K-III.3.5> <hlink|<verbatim|strings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Safeguard.lean#L148-L177>
    <em|(numbered result)> \V If a radial endpoint configuration with small
    increments is healthy at threshold \<tau\>, then all rescaled
    configurations along the ray are healthy.
  </itemize-minus>

  <label|k-iii-3-6>

  <\itemize-minus>
    <item><strong|K-III.3.6> <hlink|<verbatim|locale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Averaging.lean#L84-L114>
    <em|(numbered result)> \V A positive-degree homogeneous family splits
    into a Taylor radial jet plus a gradient of a homogeneous function.
  </itemize-minus>

  <label|k-iii-3-7>

  <\itemize-minus>
    <item><strong|K-III.3.7> <hlink|<verbatim|pilot_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Docked.lean#L103-L110>
    <em|(numbered result)> \V A per-alias decay bound for the pilot kernels
    on the cube.
  </itemize-minus>

  <label|k-iii-3-8>

  <\itemize-minus>
    <item><strong|K-III.3.8> <hlink|<verbatim|frontier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L99-L140>
    <em|(numbered result)> \V There exist constants such that for large scale
    ratio the strip estimate holds and, when mass is small relative to L
    squared, the funds condition holds with uniform constants.
  </itemize-minus>

  <label|k-iii-3-9>

  <\itemize-minus>
    <item><strong|K-III.3.9> <hlink|<verbatim|wiped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/PMOM.lean#L43-L61>
    <em|(key result)> \V For a local gauge-invariant function vanishing on
    test jets to order b, mixed derivatives at the identity of total order up
    to b with screened direction constraints vanish.
  </itemize-minus>

  <label|k-iii-3-10>

  <\itemize-minus>
    <item><strong|K-III.3.10> <hlink|<verbatim|retained_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145>
    <em|(main result)> \V For any kernel choice there exist uniform catalog
    constants such that for every sheet and compatible levels, a horizon with
    the rack, retention, sufficiency and sworn properties exists, with prices
    fixed before the length.
  </itemize-minus>

  <label|k-iii-3-11>

  <\itemize-minus>
    <item><strong|K-III.3.11> <hlink|<verbatim|complete_roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L109-L157>
    <em|(key result)> \V If a horizon suffices for the map prices, then the
    all-period output holds at every scale step from c to f along the block
    structure.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.2 Choosing the constants: the order
  of choice and the RG schedule|III-2.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-3.tm>|<hlink|III.4 Gaussian integration: change of
  Gaussian sector, determinants, window law \<rightarrow\>|III-4.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.3. Free lattice kernels and covariances \U
    Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|12>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|5>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|iii3-free-lattice-kernels-and-covariances|<tuple|?|1>>
    <associate|k-iii-3-1|<tuple|10|12>>
    <associate|k-iii-3-10|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-3-11|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-3-2|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-3-3|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-3-4|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-3-5|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-3-6|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-3-7|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-3-8|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-3-9|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|key-statements|<tuple|10|12>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|6|5>>
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
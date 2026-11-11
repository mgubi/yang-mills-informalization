<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> II.2 Marker algebra, polymer
  combinatorics and Gaussian estimates|II-2.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-1.tm>|<hlink|III.2 Choosing the constants: the order of
  choice and the RG schedule \<rightarrow\>|III-2.tm>>

  <ym-title|III.1. The block-spin step and the symmetric gauge
  fixing><label|iii1-the-block-spin-step-and-the-symmetric-gauge-fixing>

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

  Defines one block-spin step and the gauge fixing that preserves the lattice
  symmetries.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-1.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: II.2|II-2.tm> <ym-middot> <hlink|Next: III.2
  \<rightarrow\>|III-2.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
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
    <verbatim|YM/Push/CORRECTED_COLUMNS/>,
    <verbatim|YM/Planned/CALIBRATED_MIXED_HISTORY/>,
    <verbatim|YM/UVNext/ANNULUS_COMPARISON/>,
    <verbatim|YM/FullVolume/Train/>, <verbatim|YM/SectorTools/ACTUAL_SCALAR_LEDGER/>.
    <strong|Size:> 4,219 lines (693 declarations) in the source allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Throughout, <math|N\<geqslant\>1>, <math|G\<subset\>U<around|(|N|)>> is
  closed, <math|c\<geqslant\>1>, <math|f=c*L>, <math|L\<geqslant\>3> is odd,
  <math|J\<geqslant\>4>, <math|R=<around|(|J+3|)>*L>, and
  <math|K=<around|(|\<kappa\>,\<delta\>,\<varepsilon\>,a|)>\<gtr\>0>. Branch
  conditions mean uniqueness of the centre-normalized minimizing frame when
  every route holonomy in every centre axial gauge has chord
  <math|\<less\>\<delta\>> (B1), uniqueness of the minimizing predictor when
  its minimum price is <math|\<less\>\<varepsilon\>> (B2), and nonempty
  eligible axial tags for every configuration (B3).

  <strong|Proposition III.1.1 (Markov kernel).> Under (B1)\U(B3), for every
  real <math|\<beta\>>, <math|\<rho\><rsub|\<beta\>>> is nonnegative, Borel,
  bounded and satisfies <math|<big|int>\<rho\><rsub|\<beta\>><around|(|U,V|)>*d*\<mu\><rsub|c><around|(|V|)>=1>
  for every <math|U>. For every Banach-valued
  <math|F\<in\>L<rsup|1><around|(|\<mu\><rsub|f>|)>>,
  <math|\<cal-P\><rsub|\<beta\>>*F<around|(|V|)>=<big|int>\<rho\><rsub|\<beta\>><around|(|U,V|)>*F<around|(|U|)>*d*\<mu\><rsub|f><around|(|U|)>>
  exists for every <math|V>, is integrable, depends linearly on <math|F>, and
  preserves its integral. Positivity and integrability in <math|V> need no
  branch conditions. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|isKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L203-L208>.

  <strong|Proposition III.1.2 (covariance).> Under (B1)\U(B3), for every
  <math|\<beta\>,U,V>, fine gauge <math|k>, signed axis permutation <math|s>
  and coarse site <math|b>,

  <\equation*>
    \<rho\><rsub|\<beta\>><around|(|k\<cdot\>U,<around|(|k\<circ\><math-up|embed>|)>\<cdot\>V|)>=\<rho\><rsub|\<beta\>><around|(|U,V|)>=\<rho\><rsub|\<beta\>><around|(|s<rsub|L*b>*U,s<rsub|b>*V|)>,<space|2em><math-up|embed><around|(|x|)>=L*x.
  </equation*>

  A calendar satisfying branch conditions on every patch has block control
  and Markov kernels at every step. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|covary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L56-L67>;
  <hlink|<verbatim|channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L50-L54>.

  <strong|Proposition III.1.3 (uniform branch constants).> Let <math|d> be as
  in III.1.5 and <math|r<rsub|G>\<gtr\>0> a unique-nearest-point tubular
  radius of <math|G>. For every <math|\<kappa\>\<gtr\>0>,
  <math|0\<less\>\<delta\>\<leqslant\>d/<sqrt|N>>,
  <math|0\<less\>\<varepsilon\>\<leqslant\>r<rsub|G><rsup|2>/<around|(|2*N|)>>
  and <math|a\<geqslant\>16>, (B1)\U(B3) hold for every patch. Every
  configuration and axis ordering admit an eligible root. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|Axial.viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>;
  <hlink|<verbatim|RG.frame_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L18-L56>;
  <hlink|<verbatim|RG.predictor_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L58-L63>.

  <strong|Proposition III.1.4 (axial gauge).> For every list <math|l> of
  distinct axes, <math|r\<in\>\<bbb-N\>>, <math|o\<in\>B<rsub|r>> and
  configuration <math|U> on <math|\<bbb-Z\><rsup|4>>, put
  <math|S=<around|{|y\<in\>B<rsub|r>:y<rsub|j>=o<rsub|j><around|(|j\<nin\>l|)>|}>>.
  Some <math|x\<in\>S> gives an axial gauge
  <math|g<rsub|y>=T<rsub|U><around|(|x\<to\>y;l|)>> with
  <math|E<rsub|S>*<around|(|g\<cdot\>U|)>\<leqslant\>4<around|\||l|\|>*<around|(|2*r+1|)>*F<rsub|S><around|(|U|)>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Axial.existence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L80-L105>.

  <strong|Proposition III.1.5 (synchronization uniqueness).> There exists
  <math|d<around|(|G|)>\<in\><around|(|0,1/4|]>> such that, for all finite
  nonempty <math|n,\<Lambda\>>, data <math|W:n\<times\>n\<times\>\<Lambda\>\<to\>G>
  with <math|W<rsub|x*x*k>=1>, <math|W<rsub|y*x*\<sigma\><around|(|k|)>>=W<rsub|x*y*k><rsup|-1>>
  for a permutation <math|\<sigma\>>, and
  <math|<around|\<\|\|\>|W<rsub|x*y*k>-1|\<\|\|\>>\<leqslant\>d> have this
  property: any two global minimizers over <math|G<rsup|n>> of
  <math|<math-up|avg><rsub|x,y,k><math-up|pr><around|(|h<rsub|x>*W<rsub|x*y*k>*h<rsub|y><rsup|-1>|)>>
  differ by one global left multiple. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Branch.align>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L232-L272>.

  <strong|Proposition III.1.6 (frame comparison).> There exists
  <math|A<around|(|G|)>\<gtr\>0> such that, for every patch, <math|K>,
  configuration <math|W>, positive-frame-mass tag, realized frame <math|h>,
  and gauge <math|H:\<bbb-Z\><rsup|4>\<to\>G>, some <math|q\<in\>G> satisfies

  <\equation*>
    <big|sum><rsub|y\<in\>B<rsub|R>><math-up|ch><around|(|q<rsup|-1>*h<rsub|y>*H<rsub|y><rsup|-1>|)>\<leqslant\>A*<around|(|2*R+1|)>*<around|[|E<rsub|B<rsub|R>>*<around|(|H\<cdot\>W|)>+a*<around|(|2*R+1|)>*F<rsub|B<rsub|R>><around|(|W|)>|]>.
  </equation*>

  No branch conditions are needed. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Pressure.synchronized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L135-L162>.

  <strong|Proposition III.1.7 (common gauge).> Fix <math|G,K> and
  <math|j\<geqslant\>4>; set <math|\<ell\>=2*j+15>, <math|D=16*\<ell\>>,
  <math|C=A*\<ell\>*<around|(|D+a*\<ell\>|)>> and
  <math|R<rprime|'>=<around|(|j+7|)>*L>. For every step with <math|J=j>, fine
  <math|U>, coarse <math|x>, and tag usable at <math|x>, there exist
  <math|H:\<bbb-Z\><rsup|4>\<to\>G> and <math|p<rsub|y>\<in\>G> for
  <math|y\<in\>B<rsub|2>> such that, for every such <math|y>,

  <\equation*>
    E<rsub|B<rsub|R<rprime|'>>>*<around|(|H\<cdot\>U<rsup|<around|(|x|)>>|)>\<leqslant\>D*L<space|0.17em><math-up|port><around|(|x,U|)>,<space|2em><big|sum><rsub|i\<in\>B<rsub|R>><math-up|ch><around|(|p<rsub|y><rsup|-1>*h<rsub|i><rsup|<around|(|x+y|)>>*H<rsub|i+L*y><rsup|-1>|)>\<leqslant\>C*L<rsup|2><math-up|port><around|(|x,U|)>.
  </equation*>

  Every positive-tag-mass tag is usable everywhere. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|Pressure.planting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L72-L122>.

  <strong|Proposition III.1.8 (coarse curvature).> With III.1.7's constants
  and <math|C<rsub|8>=8*max <around|(|1,\<varepsilon\><rsup|-1>|)>*<around|(|2*C+D|)>>,
  for every step with <math|J=j>, configurations <math|U,V>, coarse site
  <math|x>, tag <math|t> usable at <math|x>, and plane <math|p>,

  <\equation*>
    <math-up|ch><around|(|Q<around|(|U,t|)><rsub|<around|(|x,p|)>>|)>\<leqslant\>C<rsub|8>*L<rsup|-2><math-up|port><around|(|x,U|)>,<space|2em><math-up|ch><around|(|V<rsub|<around|(|x,p|)>>|)>\<leqslant\><math-up|fuel><around|(|Q,V|)><rsub|<around|(|x,p|)>>+C<rsub|8>*L<rsup|-2><math-up|port><around|(|x,U|)>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Pressure.qdc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252>.

  <strong|Proposition III.1.9 (densities and histories).> Representations
  evaluate to an exponential of vacuum minus action and masked regular
  activities, times the gas. Flags mark sites touched by plaquettes of chord
  above threshold. Reading links and flags in <math|X> requires only links in
  <math|X> and corners of plaquettes meeting <math|X>. The gas equals
  <math|1> without flags. Every lawful representation (path bounds and valid
  activities) has bounded Borel evaluation. Selected histories start at the
  bare Wilson density and obey exact pushes; every selected history satisfies
  <math|<big|int><math-up|eval><rsub|N,p,m>d*\<mu\>=Z<rsub|N,p><around|(|\<beta\><rsub|N,p,N>|)>>
  for all <math|m\<leqslant\>N>. <em|Status:> definitions, with four
  consequences proved; quantitative construction belongs to III.3\UIII.10.
  <em|Lean:> <hlink|<verbatim|UsesFinal.allReads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L108-L110>;
  <hlink|<verbatim|gas_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L135-L147>;
  <hlink|<verbatim|Rep.envelope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L195-L198>;
  <hlink|<verbatim|History.partition_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L242-L249>.

  <strong|Proposition III.1.10 (tube identity).> For every tube, path cutoff,
  real thresholds and <math|U,Q,V>, the six works satisfy

  <\equation*>
    W<rsub|F>+W<rsub|I>+W<rsub|C>+W<rsub|N>+W<rsub|L>+W<rsub|D>=C<rsub|f>+P-C<rsub|c>,
  </equation*>

  where <math|C<rsub|f>,C<rsub|c>> are truncated crown sums and
  <math|P=<big|sum><rsub|b>\<kappa\><space|0.17em><math-up|ch><around|(|V<rsub|b>*Q<rsub|b><rsup|-1>|)><rsup|2>/2>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Tube.locates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163>.

  <strong|Proposition III.1.11 (energy per seed).> Estimator data require:
  for every sufficiently large <math|L> and then sufficiently large <math|W>,
  some <math|\<kappa\><rsub|0>\<gtr\>0> gives
  <math|\<kappa\><rsub|0>*t<rsup|2><around|\||A|\|>\<leqslant\><math-up|Work><around|(|A|)>>
  at all sufficiently large reference couplings, uniformly over compatible
  tubes, forests and plots with trivial trunks and
  <math|c\<geqslant\>100*<around|(|1+\<varrho\>|)>>. For a directed history
  satisfying ringing, each <math|J<rsub|0>\<leqslant\>i\<leqslant\>j\<leqslant\>i+1>
  admits <math|\<mu\>\<gtr\>0> such that <math|\<mu\>*t<rsub|m+1><rsup|2><around|\||A|\|>\<leqslant\><math-up|Work><around|(|A|)>>
  for all <math|N,m\<less\>N,p> with <math|<around|(|J<rsub|m+1>,J<rsub|m>|)>=<around|(|j,i|)>>
  and every plot at <math|<around|(|<wide|\<beta\>|^><rsub|m>,F<around|(|j,i|)>|)>>
  with trivial trunks. <em|Status:> requirement, proved in III.10; transfer
  theorem here. <em|Lean:> <hlink|<verbatim|Stores.Plot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58>;
  <hlink|<verbatim|Teller.Grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L129-L131>;
  <hlink|<verbatim|Testing.notation_ticket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181>.

  <strong|Proposition III.1.12 (kinetic specification).> Fix levels, a
  quadratic horizon, Haar-chart density and positive stage constants. Kinetic
  data assign shifts <math|\<alpha\>>, path data and free-link maps
  <math|\<psi\>>. Stages and factors agree with the fixed choices; rows
  attach to the horizon and satisfy stage bounds. At level <math|N>, the
  unmasked, unclipped action is analytic, matches Wilson derivatives through
  order four, and has zero loop coefficients. For every <math|m\<less\>N>,
  volume, forest and tag, let <math|\<cal-I\><rsub|t>> be the fine unmasked,
  unclipped unit-coupling action without loops plus predictor penalty, on
  fields with trunks <math|1> and free links <math|exp
  <around|(|b<rsub|e>|)>*<around|(|\<iota\>*exp u|)><rsub|e>>, where
  <math|\<iota\>> copies coarse links across block boundaries. Requirements,
  for every free field <math|v>, are

  <\equation*>
    D<rsub|b><rsup|2>*\<cal-I\><rsub|t><around|(|0,0|)><around|[|v,v|]>\<geqslant\>\<eta\>*<big|sum><rsub|e<math-up|free>><around|\||v<rsub|e>|\|><rsup|2>,<space|2em>D<rsub|b>*\<cal-I\><rsub|t><around|(|u,\<psi\><around|(|u|)>|)>=0
  </equation*>

  near zero: <math|\<psi\><around|(|0|)>=0>, both maps are analytic,
  <math|D*\<psi\><around|(|0|)>> is the prescribed background adjusted to
  tree gauge minus the linearized block copy, and the analytic coarse action
  matches <math|\<cal-I\><rsub|t><around|(|u,\<psi\><around|(|u|)>|)>>
  through order four. Writing <math|H<rsub|t><around|(|u|)>=D<rsub|b><rsup|2>*\<cal-I\><rsub|t><around|(|u,\<psi\><around|(|u|)>|)>>
  in physical coordinates,

  <\equation*>
    T<rsub|t>=\<cal-L\><rsub|f><rsup|\<circ\>><around|(|U<rsub|F><around|(|u,\<psi\><around|(|u|)>|)>|)>+<tfrac|1|2>log
    det H<rsub|t>-log <big|prod><rsub|e<math-up|free>>J<around|(|\<psi\><around|(|u|)><rsub|e>|)>,<space|2em>D=\<alpha\>*\<cal-Q\><rsub|c><rsup|\<circ\>><around|(|exp
    u|)>+\<cal-L\><rsub|c><rsup|\<circ\>><around|(|exp u|)>.
  </equation*>

  <math|\<cal-L\><rsup|\<circ\>>,\<cal-Q\><rsup|\<circ\>>> denote loop and
  quadratic actions; <math|J> is the Haar-chart density. Both
  <math|T<rsub|t>,D> are analytic, <math|det H<rsub|t>\<gtr\>0> near zero,
  and

  <\equation*>
    <around|\||D<rsup|2>*T<rsub|t><around|(|0|)><around|[|a,b|]>-D<rsup|2>*D<around|(|0|)><around|[|a,b|]>|\|>\<leqslant\><around|\||\<Lambda\><rsub|c>|\|>*\<Theta\>*\<Lambda\>*e<rsup|-\<gamma\>*c>
  </equation*>

  for real plane waves with direction-colour amplitudes bounded by <math|1>;
  <math|\<Lambda\>> is the fine loop bound. Also
  <math|<around|\||\<alpha\>+\<kappa\><rsub|<math-up|slope>>*log
  L<rsub|m>|\|>+1\<leqslant\><math-up|drift><rsub|m+1>>. Directed histories
  require paid levels, a sufficient horizon, matching recipe and local
  Haar-chart formula. Moves require exact push, continuation, retention,
  lawful coarse data, forced-activity bound <math|exp
  <around|[|-g<rsub|j><math-up|monitor><rsub|m+1><rsup|2>|]>>, and
  <math|<around|\||\<beta\><rsub|m>-\<beta\><rsub|m+1>-\<alpha\>|\|>\<leqslant\>1>.
  <em|Status:> definitions; conditional constructors for simple nonabelian
  <math|\<frak-g\>> belong to III.2. <em|Lean:>
  <hlink|<verbatim|Kin.Planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115>;
  <hlink|<verbatim|Directed.Move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55>.

  <strong|Proposition III.1.13 (tree gauge).> For odd <math|L>, block forests
  exist. Inverse tree transport gives a gauge equal to <math|1> at roots,
  depending only on trunks, and trivializing them. Every real-Banach-valued
  integrable <math|F> invariant under gauges trivial at roots satisfies
  <math|<big|int>F*d*\<mu\><rsub|f>=<big|int>F<around|(|<math-up|drape><space|0.17em>s|)>*d*\<mu\><rsub|<math-up|free>><around|(|s|)>>.
  For a kernel satisfying III.1.2(a) and gauge-invariant integrable <math|F>,
  the same reduction applies to <math|\<cal-P\><rsub|\<beta\>>*F<around|(|V|)>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Forest.pack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L81-L111>;
  <hlink|<verbatim|Forest.pushing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L114-L120>.

  <strong|Proposition III.1.14 (linearization).> Under (B1)\U(B3), for every
  tag <math|t> and coarse link <math|b>, <math|v\<mapsto\>Q<rsub|b><around|(|<around|(|exp
  v<rsub|e>|)><rsub|e>,t|)>> on fine <math|\<frak-g\>>-valued <math|1>-forms
  equals <math|1> at <math|v=0> and is real analytic nearby, using minimizing
  branches. Its tag-independent derivative is
  <math|\<cal-Q\>*v=\<cal-M\>*v+d<rsub|0>*\<cal-F\>*v>, and
  <math|\<cal-Q\>*d<rsub|0>*\<varphi\>=d<rsub|0>*<around|(|\<varphi\>\<circ\><math-up|embed>|)>>
  for every fine <math|0>-form. Frames have derivative
  <math|h<rsub|y><rsup|<around|(|x|)>*\<prime\>>=\<tau\><rsub|x><around|(|y|)>-\<tau\><rsub|x><around|(|0|)>>.
  The kernel is analytic near <math|<around|(|1,1|)>> for fixed
  <math|\<beta\>>; neighbourhoods may depend on the step. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|Push.derivative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L38-L68>;
  <hlink|<verbatim|Push.prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L147-L160>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: lattice geometry, Haar invariance, Wilson energy and
    nearest-point projection.

    <item>III.16: offset lengths; III.2: schedules and directed histories;
    III.10: energy estimates.

    <item>Tubular neighbourhood theorem, analytic implicit function theorem,
    Fubini, Jensen, continuity of unique compact minimizers.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Minimize the average route price to fix centre-normalized frames, transport
  across blocks, and average the connectors. The predictor <math|Q> is the
  nearest group point to their weighted matrix mean on its minimizing branch.
  The kernel averages <math|<big|prod><rsub|b>Z<rsub|\<beta\>><rsup|-1>*e<rsup|-\<beta\>*\<kappa\><math-up|pr><around|(|V<rsub|b>*Q<rsub|b><rsup|-1>|)>>>
  over tags, with <math|Z<rsub|\<beta\>>=<big|int><rsub|G>e<rsup|-\<beta\>*\<kappa\><math-up|pr><around|(|g|)>>*d*g>.
  Unique minimizers handle small fields; symmetric sampling of
  curvature-controlled axial frames and connectors handles the remaining
  configurations. A common macro-box gauge compares neighbouring frames.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Uniform cutoffs.> Normalize minimizers by nearest centroid
    points; tangential cancellation makes feedback contract. Slab induction
    gives eligible axial roots. <hlink|<verbatim|align>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L232-L272>;
    <hlink|<verbatim|existence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L80-L105>.

    <item><strong|Kernel.> Tag probabilities and Haar noise each have mass
    one; uniqueness and tag permutations give covariance.
    <hlink|<verbatim|density_total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L197-L201>;
    <hlink|<verbatim|channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L50-L54>.

    <item><strong|Curvature.> Synchronization costs <math|L<rsup|2>>, while
    <math|w\<leqslant\>L<rsup|-4>>; four padded links give the plaquette
    bound. <hlink|<verbatim|indicated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L129-L179>;
    <hlink|<verbatim|qdc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252>.

    <item><strong|Local analysis.> The implicit function theorem gives
    derivatives; Haar invariance removes trunks. Adjointness cancels cross
    terms and squares in the tube identity.
    <hlink|<verbatim|scheme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L129-L187>;
    <hlink|<verbatim|pack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L81-L111>;
    <hlink|<verbatim|Tube.locates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Uniqueness must remain uniform in patch size. Both branches must preserve
  area scaling. Global regularity is Borel; analyticity is local.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|B<rsub|r>=<around|{|-r,\<ldots\>,r|}><rsup|4>>;
  <math|<math-up|ch><around|(|u|)>=<around|\<\|\|\>|u-1|\<\|\|\>>/<sqrt|N>>,
  <math|<math-up|pr><around|(|u|)>=1-<text|Re tr><around|(|u|)>/N>;
  <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>>> is Frobenius,
  <math|<around|\||v|\|>=<around|\<\|\|\>|v|\<\|\|\>>/<sqrt|N>>.
  <math|\<mu\>> denotes product probability Haar measure;
  <math|E<rsub|X>,F<rsub|X>> sum link and plaquette chords.
  <math|U<rsup|<around|(|x|)>>> is the root-centred periodic lift;
  <math|<math-up|port>=F<rsub|B<rsub|R<rprime|'>>><around|(|U<rsup|<around|(|x|)>>|)>>.
  Usable means positive frame masses on <math|x+B<rsub|2>>; fuel sums four
  link discrepancies with multiplicity. <math|w> is the <math|J>-fold
  block-uniform convolution. <math|\<tau\>> averages negative route
  integrals, <math|\<cal-M\>> averages straight length-<math|L> integrals,
  <math|\<cal-F\>*v<around|(|x|)>=\<tau\><rsub|x><around|(|0|)>-<big|sum><rsub|y>w<rsub|y>*\<tau\><rsub|x><around|(|y|)>>,
  and <math|d<rsub|0>> is forward difference. Here
  <math|\<tau\><rsub|x><around|(|y|)>=-<math-up|avg><rsub|z\<in\>B<rsub|R>,o\<in\>S<rsub|4>><big|int><rsub|L*x+y\<to\>L*x+z;o>v>.

  <math|<math-up|monitor><rsub|m>=e<rsup|<around|(|log log
  <wide|\<beta\>|^><rsub|m>|)><rsup|2>>>;
  <math|t<rsub|m>=<math-up|temp><around|(|<wide|\<beta\>|^><rsub|m>|)>>,
  <math|<math-up|temp><around|(|z|)>=z<rsup|-1/2>*e<rsup|<around|(|log log
  z|)><rsup|2>>>; <math|t=<math-up|temp><around|(|<wide|\<beta\>|^>+\<kappa\><rsub|<math-up|slope>>*log
  L|)>>, <math|\<varrho\>=<around|\<lceil\>|<around|(|log
  <wide|\<beta\>|^>|)><rsup|2>|\<rceil\>>>,
  <math|\<kappa\><rsub|<math-up|slope>>=11*C<rsub|A>/<around|(|24*\<pi\><rsup|2>|)>>.

  A store <math|A> comprises fine plaquettes, coarse links and coarse sites;
  <math|<around|\||A|\|>> sums their cardinalities.
  <math|<math-up|Work><around|(|A|)>> sums local works whose fine
  bases\<#2019\> parents or coarse bases lie within distance
  <math|2*\<varrho\>> of its locations, with cutoff
  <math|<around|\<lfloor\>|\<varrho\>/10<rsup|5>|\<rfloor\>>>.
  <math|F<around|(|j,i|)>\<gtr\>0> is the assigned wire parameter.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Energy lower bounds and kinetic construction belong to later units. The
  uses of <math|B<rsub|2>> rather than <math|B<rsub|1>>, and
  <math|J\<geqslant\>4> rather than <math|J\<geqslant\>1>, remain unspecified
  here.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-1.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.2|III-2.tm>,
  <hlink|III.16|III-16.tm>.

  <strong|Referenced by:> <hlink|III.10|III-10.tm>, <hlink|III.4|III-4.tm>,
  <hlink|III.11|III-11.tm>, <hlink|III.13|III-13.tm>,
  <hlink|III.12|III-12.tm>, <hlink|III.2|III-2.tm>, <hlink|III.7|III-7.tm>,
  <hlink|III.6|III-6.tm>, <hlink|III.9|III-9.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|III.5|III-5.tm>, <hlink|III.14|III-14.tm>, <hlink|III.15|III-15.tm>,
  <hlink|II.1|II-1.tm>, <hlink|VII.6|VII-6.tm>, <hlink|VIII.1|VIII-1.tm>,
  <hlink|III.3|III-3.tm>, <hlink|VII.4|VII-4.tm>, <hlink|III.8|III-8.tm>,
  <hlink|VII.1|VII-1.tm>, <hlink|V.2|V-2.tm>, <hlink|IV.1|IV-1.tm>,
  <hlink|II.2|II-2.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 4,219 attributed lines; 693 line-counted
  declarations; 1,218 assigned declaration names. Of the assigned names,
  1,152 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Pressure/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure>,
    with <hlink|<verbatim|YM/PREC/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC>,
    <hlink|<verbatim|YM/PCalc/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc>
    \V 1,551 lines.

    <item>work package <hlink|<verbatim|YM/RG/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG>
    \V 1,142 lines.

    <item>work package <hlink|<verbatim|YM/Branch/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch>
    \V 968 lines.

    <item>work package <hlink|<verbatim|YM/Exterior/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior>
    \V 283 lines.

    <item>work package <hlink|<verbatim|YM/Tree/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree>
    \V 178 lines.

    <item>work package <hlink|<verbatim|YM/Push/CORRECTED_COLUMNS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CORRECTED_COLUMNS>
    \V 36 lines.

    <item>work package <hlink|<verbatim|YM/Planned/CALIBRATED_MIXED_HISTORY/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/CALIBRATED_MIXED_HISTORY>
    \V 20 lines.

    <item>work package <hlink|<verbatim|YM/UVNext/ANNULUS_COMPARISON/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/ANNULUS_COMPARISON>
    \V 18 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Train/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train>
    \V 13 lines.

    <item>work package <hlink|<verbatim|YM/SectorTools/ACTUAL_SCALAR_LEDGER/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorTools/ACTUAL_SCALAR_LEDGER>
    \V 8 lines.

    <item>work package <hlink|<verbatim|YM/RG17/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17>
    \V 2 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|EBare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148>

    <item><hlink|<verbatim|Bid.pricing_order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202>

    <item><hlink|<verbatim|price_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Center.lean#L63-L70>

    <item><hlink|<verbatim|min_iff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Center.lean#L72-L93>

    <item><hlink|<verbatim|weighted_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Center.lean#L95-L108>

    <item><hlink|<verbatim|Axial.channels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Channel.lean#L117-L127>

    <item><hlink|<verbatim|prediction_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L13-L20>

    <item><hlink|<verbatim|mass_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L22-L34>

    <item><hlink|<verbatim|noise_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L36-L48>

    <item><hlink|<verbatim|Calendar.blocks_go>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72>

    <item><hlink|<verbatim|edge_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L107-L113>

    <item><hlink|<verbatim|Axial.eligible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L119-L134>

    <item><hlink|<verbatim|vertical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L22-L41>

    <item><hlink|<verbatim|total_slab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L43-L78>

    <item><hlink|<verbatim|StepData.positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L127-L134>

    <item><hlink|<verbatim|StepData.negative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L136-L148>

    <item><hlink|<verbatim|updateGauged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L150-L157>

    <item><hlink|<verbatim|predicts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L23-L35>

    <item><hlink|<verbatim|bond_pull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L37-L42>

    <item><hlink|<verbatim|bond_inv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L44-L52>

    <item><hlink|<verbatim|bond_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L54-L62>

    <item><hlink|<verbatim|withinChoice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Predict.lean#L88>

    <item><hlink|<verbatim|window_le>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L120-L152>

    <item><hlink|<verbatim|Axial.edges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L24>

    <item><hlink|<verbatim|Axial.faces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L32>

    <item><hlink|<verbatim|faces_pins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L49-L58>

    <item><hlink|<verbatim|squares>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L60-L70>

    <item><hlink|<verbatim|variation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L72-L85>

    <item><hlink|<verbatim|slide_le>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Slide.lean#L87-L118>

    <item><hlink|<verbatim|self_consistent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L100-L123>

    <item><hlink|<verbatim|compare_energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L127-L156>

    <item><hlink|<verbatim|cluster>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L158-L170>

    <item><hlink|<verbatim|closeness>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L172-L188>

    <item><hlink|<verbatim|changes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L190-L201>

    <item><hlink|<verbatim|weak_changes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L203-L226>

    <item><hlink|<verbatim|Pairs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L27-L31>

    <item><hlink|<verbatim|min_cov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L64-L98>

    <item><hlink|<verbatim|min_gauged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L106-L109>

    <item><hlink|<verbatim|frame_gauged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L111-L133>

    <item><hlink|<verbatim|weight_invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L135-L141>

    <item><hlink|<verbatim|axial_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L30-L32>

    <item><hlink|<verbatim|min_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L34-L38>

    <item><hlink|<verbatim|good_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L73-L75>

    <item><hlink|<verbatim|Exterior.curvature_linear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior/Complex.lean#L99-L116>

    <item><hlink|<verbatim|Extra.Iteration.planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Planned.lean#L37-L55>

    <item><hlink|<verbatim|Roost.companyK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Linger.lean#L23-L51>

    <item><hlink|<verbatim|casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>

    <item><hlink|<verbatim|Gauge.inner_frob_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L56-L62>

    <item><hlink|<verbatim|Gauge.price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L112>

    <item><hlink|<verbatim|Gauge.chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L115>

    <item><hlink|<verbatim|nearest_tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L141-L153>

    <item><hlink|<verbatim|focus_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L155-L170>

    <item><hlink|<verbatim|nearest_approximate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L172-L181>

    <item><hlink|<verbatim|nearest_normal_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L43-L63>

    <item><hlink|<verbatim|Gauge.focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Nearest.lean#L91>

    <item><hlink|<verbatim|Integrated.pressure_grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L222-L225>

    <item><hlink|<verbatim|FundedCompanySelection.company>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106>

    <item><hlink|<verbatim|Laurent.size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L34>

    <item><hlink|<verbatim|Fluctuations.bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120>

    <item><hlink|<verbatim|Next.Fluctuations.grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24>

    <item><hlink|<verbatim|pressure_pricing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L32-L37>

    <item><hlink|<verbatim|PriceGap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101>

    <item><hlink|<verbatim|ClassicalMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109>

    <item><hlink|<verbatim|Critical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91>

    <item><hlink|<verbatim|Guessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98>

    <item><hlink|<verbatim|hessian>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L42-L44>

    <item><hlink|<verbatim|thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49>

    <item><hlink|<verbatim|FiniteBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71>

    <item><hlink|<verbatim|Kin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77>

    <item><hlink|<verbatim|Push.settled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L113-L116>

    <item><hlink|<verbatim|Push.prediction_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L118-L124>

    <item><hlink|<verbatim|lips>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Derivative.lean#L95-L111>

    <item><hlink|<verbatim|tau>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L57-L59>

    <item><hlink|<verbatim|fixRoot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L63>

    <item><hlink|<verbatim|mean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L65-L66>

    <item><hlink|<verbatim|Precision.probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L68>

    <item><hlink|<verbatim|Precision.root_gradient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L92-L96>

    <item><hlink|<verbatim|Push.authored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Implicit.lean#L27-L50>

    <item><hlink|<verbatim|stars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L116-L127>

    <item><hlink|<verbatim|focused>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L44-L47>

    <item><hlink|<verbatim|hats_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Pred.lean#L79-L87>

    <item><hlink|<verbatim|Horizon.Suffices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>

    <item><hlink|<verbatim|extracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L26-L27>

    <item><hlink|<verbatim|wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L187>

    <item><hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L189-L190>

    <item><hlink|<verbatim|comp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L192-L207>

    <item><hlink|<verbatim|macroR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L37>

    <item><hlink|<verbatim|port>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L60>

    <item><hlink|<verbatim|usable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L62-L63>

    <item><hlink|<verbatim|wraps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L65-L69>

    <item><hlink|<verbatim|Road.strips>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L34-L49>

    <item><hlink|<verbatim|Road.revenue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L55-L69>

    <item><hlink|<verbatim|risks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L75-L88>

    <item><hlink|<verbatim|fallback>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L95-L132>

    <item><hlink|<verbatim|price_query>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L102-L129>

    <item><hlink|<verbatim|spread>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L16-L43>

    <item><hlink|<verbatim|light>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L48-L79>

    <item><hlink|<verbatim|traverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Macro.lean#L81-L100>

    <item><hlink|<verbatim|route_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Route.lean#L107-L130>

    <item><hlink|<verbatim|marginal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Route.lean#L50-L54>

    <item><hlink|<verbatim|slidings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Route.lean#L56-L60>

    <item><hlink|<verbatim|Tube.vision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L104>

    <item><hlink|<verbatim|workF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L122-L124>

    <item><hlink|<verbatim|workD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L138-L140>

    <item><hlink|<verbatim|toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L55>

    <item><hlink|<verbatim|arity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L86-L89>

    <item><hlink|<verbatim|Teller.live>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L114-L118>

    <item><hlink|<verbatim|Teller.cash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L124-L125>

    <item><hlink|<verbatim|Testing.Stamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L155-L158>

    <item><hlink|<verbatim|Testing.Ringing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L161-L163>

    <item><hlink|<verbatim|radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>

    <item><hlink|<verbatim|betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>

    <item><hlink|<verbatim|temp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25>

    <item><hlink|<verbatim|fiery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26>

    <item><hlink|<verbatim|Stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37>

    <item><hlink|<verbatim|Stores.assessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85>

    <item><hlink|<verbatim|price_square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Single.lean#L37-L64>

    <item><hlink|<verbatim|income_bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Single.lean#L66-L75>

    <item><hlink|<verbatim|Pressure.cluster>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Single.lean#L77-L130>

    <item><hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>

    <item><hlink|<verbatim|Valid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111>

    <item><hlink|<verbatim|admissible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L114-L116>

    <item><hlink|<verbatim|gas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L129>

    <item><hlink|<verbatim|Activities>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L62-L66>

    <item><hlink|<verbatim|RegularFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L70-L75>

    <item><hlink|<verbatim|ForcedFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L77-L84>

    <item><hlink|<verbatim|StepData.chosen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L123-L136>

    <item><hlink|<verbatim|noise_mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L146-L155>

    <item><hlink|<verbatim|IsKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L158-L163>

    <item><hlink|<verbatim|density_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L184-L190>

    <item><hlink|<verbatim|connector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L42>

    <item><hlink|<verbatim|prediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L44-L45>

    <item><hlink|<verbatim|likelihood>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L49-L51>

    <item><hlink|<verbatim|density>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72>

    <item><hlink|<verbatim|push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79>

    <item><hlink|<verbatim|Calendar.BlockControl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128>

    <item><hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>

    <item><hlink|<verbatim|Levels.budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L141-L156>

    <item><hlink|<verbatim|Levels.transition_mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L158-L159>

    <item><hlink|<verbatim|Rep.eval>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L179>

    <item><hlink|<verbatim|Calendar.hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>

    <item><hlink|<verbatim|Calendar.threshold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L83>

    <item><hlink|<verbatim|flags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L34-L36>

    <item><hlink|<verbatim|frameMass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L127-L136>

    <item><hlink|<verbatim|predictorMass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L138-L144>

    <item><hlink|<verbatim|minArg_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L20-L36>

    <item><hlink|<verbatim|selected_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L50-L53>

    <item><hlink|<verbatim|best_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L55-L61>

    <item><hlink|<verbatim|min_open>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L63-L67>

    <item><hlink|<verbatim|usesMin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L109-L110>

    <item><hlink|<verbatim|score>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L114-L115>

    <item><hlink|<verbatim|eligible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L143-L146>

    <item><hlink|<verbatim|frameMass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L148-L151>

    <item><hlink|<verbatim|frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L153-L155>

    <item><hlink|<verbatim|bondCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L159>

    <item><hlink|<verbatim|predict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L173-L175>

    <item><hlink|<verbatim|predictorMass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L177-L179>

    <item><hlink|<verbatim|radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51>

    <item><hlink|<verbatim|weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L87-L88>

    <item><hlink|<verbatim|PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154>

    <item><hlink|<verbatim|baseTerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L221-L224>

    <item><hlink|<verbatim|principal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L236-L238>

    <item><hlink|<verbatim|inChannels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L241-L242>

    <item><hlink|<verbatim|push_slice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L17-L24>

    <item><hlink|<verbatim|push_integrable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L33-L35>

    <item><hlink|<verbatim|push_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L37-L43>

    <item><hlink|<verbatim|push_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L45-L50>

    <item><hlink|<verbatim|push_smul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L52-L55>

    <item><hlink|<verbatim|foldAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L21>

    <item><hlink|<verbatim|Forest.compress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L32-L37>

    <item><hlink|<verbatim|Forest.names>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L39-L45>

    <item><hlink|<verbatim|Tree.Forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29>

    <item><hlink|<verbatim|Tree.select>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L33-L72>

    <item><hlink|<verbatim|trunks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L77>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-1-1>

  <\itemize-minus>
    <item><strong|K-III.1.1> <hlink|<verbatim|BudgetPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136>
    <em|(numbered result)> \V A record of budget parameters used for masks
    and payloads.
  </itemize-minus>

  <label|k-iii-1-2>

  <\itemize-minus>
    <item><strong|K-III.1.2> <hlink|<verbatim|KernelChoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45>
    <em|(numbered result)> \V A fixed collection of kernel choices made once,
    with no measurability assumed.
  </itemize-minus>

  <label|k-iii-1-3>

  <\itemize-minus>
    <item><strong|K-III.1.3> <hlink|<verbatim|Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146>
    <em|(numbered result)> \V A record of clipping parameters per stage.
  </itemize-minus>

  <label|k-iii-1-4>

  <\itemize-minus>
    <item><strong|K-III.1.4> <hlink|<verbatim|Stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61>
    <em|(numbered result)> \V A record of stage-indexed parameter choices
    including a source cone cap.
  </itemize-minus>

  <label|k-iii-1-5>

  <\itemize-minus>
    <item><strong|K-III.1.5> <hlink|<verbatim|Patch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L29-L34>
    <em|(numbered result)> \V A structure recording a kernel frame and finite
    tags on a patch.
  </itemize-minus>

  <label|k-iii-1-6>

  <\itemize-minus>
    <item><strong|K-III.1.6> <hlink|<verbatim|StepData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25>
    <em|(numbered result)> \V Data describing one coarse-graining
    renormalization step from a fine lattice to a coarse lattice.
  </itemize-minus>

  <label|k-iii-1-7>

  <\itemize-minus>
    <item><strong|K-III.1.7> <hlink|<verbatim|Calendar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L64-L73>
    <em|(numbered result)> \V A record of fixed numerical scales and hatted
    coupling forming a schedule.
  </itemize-minus>

  <label|k-iii-1-8>

  <\itemize-minus>
    <item><strong|K-III.1.8> <hlink|<verbatim|Moves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L87-L96>
    <em|(numbered result)> \V A record describing transports of whole labels
    in the signed convention.
  </itemize-minus>

  <label|k-iii-1-9>

  <\itemize-minus>
    <item><strong|K-III.1.9> <hlink|<verbatim|Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>
    <em|(numbered result)> \V A bundle of hypotheses that kernel and frame
    choices must satisfy on a patch.
  </itemize-minus>

  <label|k-iii-1-10>

  <\itemize-minus>
    <item><strong|K-III.1.10> <hlink|<verbatim|existence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L80-L105>
    <em|(key result)> \V For any configuration there is a point in a slab
    whose axial-gauge transport leaves at most 4<ym-middot>(number of
    axes)<ym-middot>(layers)<ym-middot>(faces) nonidentity edges.
  </itemize-minus>

  <label|k-iii-1-11>

  <\itemize-minus>
    <item><strong|K-III.1.11> <hlink|<verbatim|Directions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L115>
    <em|(numbered result)> \V Defines the space of link-increment directions
    (colors per oriented edge) on a finite lattice of side n.
  </itemize-minus>

  <label|k-iii-1-12>

  <\itemize-minus>
    <item><strong|K-III.1.12> <hlink|<verbatim|Rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171>
    <em|(numbered result)> \V A denotational representation of histories with
    support data.
  </itemize-minus>

  <label|k-iii-1-13>

  <\itemize-minus>
    <item><strong|K-III.1.13> <hlink|<verbatim|Regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L154-L161>
    <em|(numbered result)> \V A predicate that a function on configurations
    is cylindrical, Borel and gauge-invariant with a consistent germ.
  </itemize-minus>

  <label|k-iii-1-14>

  <\itemize-minus>
    <item><strong|K-III.1.14> <hlink|<verbatim|Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118>
    <em|(numbered result)> \V A predicate saying a realized trajectory
    satisfies the numerical constraints required at each stage of the
    schedule.
  </itemize-minus>

  <label|k-iii-1-15>

  <\itemize-minus>
    <item><strong|K-III.1.15> <hlink|<verbatim|Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185>
    <em|(numbered result)> \V A predicate collecting weight and summability
    bounds on path data in terms of clip, sigma, C, Lambda.
  </itemize-minus>

  <label|k-iii-1-16>

  <\itemize-minus>
    <item><strong|K-III.1.16> <hlink|<verbatim|align>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Synchronize.lean#L232-L272>
    <em|(key result)> \V There is a gauge-dependent cutoff d such that, if
    transition data are within d of the identity, any two solutions of the
    patch-gluing system differ by a single global left multiple.
  </itemize-minus>

  <label|k-iii-1-17>

  <\itemize-minus>
    <item><strong|K-III.1.17> <hlink|<verbatim|frame_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Uniform.lean#L18-L56>
    <em|(key result)> \V For small enough frame cutoff there is a unique
    minimizing group element for any patch and configuration using the
    minimizer.
  </itemize-minus>

  <label|k-iii-1-18>

  <\itemize-minus>
    <item><strong|K-III.1.18> <hlink|<verbatim|viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>
    <em|(key result)> \V For any gauge and positive penalty there is a kernel
    choice with that penalty such that every patch satisfies the branch
    conditions with thresholds independent of P, L, J.
  </itemize-minus>

  <label|k-iii-1-19>

  <\itemize-minus>
    <item><strong|K-III.1.19> <hlink|<verbatim|frames_channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Transport.lean#L77-L94>
    \V Frame mass and frame of a pulled-back configuration equal those of the
    original with reoriented tag and offset composition.
  </itemize-minus>

  <label|k-iii-1-20>

  <\itemize-minus>
    <item><strong|K-III.1.20> <hlink|<verbatim|History>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206>
    <em|(numbered result)> \V The structure of all represented
    renormalization histories under one blocking schedule.
  </itemize-minus>

  <label|k-iii-1-21>

  <\itemize-minus>
    <item><strong|K-III.1.21> <hlink|<verbatim|Selected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240>
    <em|(numbered result)> \V A bundle of endpoint history cuts for the
    renormalization-group scheme.
  </itemize-minus>

  <label|k-iii-1-22>

  <\itemize-minus>
    <item><strong|K-III.1.22> <hlink|<verbatim|Teller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96>
    <em|(numbered result)> \V A record of prices and inputs supplied in a
    single call, with prices fixed before L.
  </itemize-minus>

  <label|k-iii-1-23>

  <\itemize-minus>
    <item><strong|K-III.1.23> <hlink|<verbatim|Tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L94-L99>
    <em|(numbered result)> \V A record of tube parameters attached to a step
    datum.
  </itemize-minus>

  <label|k-iii-1-24>

  <\itemize-minus>
    <item><strong|K-III.1.24> <hlink|<verbatim|PostCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L81-L89>
    <em|(numbered result)> \V A record bundling the post-L cost quantities
    produced for a given supply.
  </itemize-minus>

  <label|k-iii-1-25>

  <\itemize-minus>
    <item><strong|K-III.1.25> <hlink|<verbatim|Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109>
    <em|(numbered result)> \V A predicate collecting estimate fields for a
    tube around a single oriented sector step.
  </itemize-minus>

  <label|k-iii-1-26>

  <\itemize-minus>
    <item><strong|K-III.1.26> <hlink|<verbatim|LocalRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38>
    <em|(numbered result)> \V A predicate collecting local ratio bounds for
    the chart-based ratio of block integrals.
  </itemize-minus>

  <label|k-iii-1-27>

  <\itemize-minus>
    <item><strong|K-III.1.27> <hlink|<verbatim|synchronized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Gauge.lean#L135-L162>
    <em|(key result)> \V On any patch there is a single group element such
    that the frame is uniformly close to any given gauge H, with error
    bounded by edge and face energies.
  </itemize-minus>

  <label|k-iii-1-28>

  <\itemize-minus>
    <item><strong|K-III.1.28> <hlink|<verbatim|planting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L72-L122>
    <em|(key result)> \V For any usable configuration there are gauge choices
    on a cover with edge and chord sums bounded by constants times the port
    cost, uniformly in the sizes.
  </itemize-minus>

  <label|k-iii-1-29>

  <\itemize-minus>
    <item><strong|K-III.1.29> <hlink|<verbatim|Directed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36>
    <em|(numbered result)> \V An adapter structure passing dependent
    estimates through to the actual transfer stack, with common constants.
  </itemize-minus>

  <label|k-iii-1-30>

  <\itemize-minus>
    <item><strong|K-III.1.30> <hlink|<verbatim|qdc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252>
    <em|(key result)> \V For usable block-spin predictions, there is a
    uniform constant bounding predicted and actual plaquette chord deviations
    by fuel plus a port-energy term scaled by 1/L^2.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> II.2 Marker algebra, polymer
  combinatorics and Gaussian estimates|II-2.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-1.tm>|<hlink|III.2 Choosing the constants: the order of
  choice and the RG schedule \<rightarrow\>|III-2.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.1. The block-spin step and the symmetric gauge
    fixing \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|5>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|13>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|6>>
    <associate|auto-9|<tuple|9|6>>
    <associate|code-dependencies|<tuple|8|6>>
    <associate|iii1-the-block-spin-step-and-the-symmetric-gauge-fixing|<tuple|?|1>>
    <associate|k-iii-1-1|<tuple|10|13>>
    <associate|k-iii-1-10|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-1-11|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-1-12|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-1-13|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-1-14|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-1-15|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-1-16|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-1-17|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-1-18|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-1-19|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-1-2|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-1-20|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-21|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-22|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-23|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-24|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-25|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-26|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-27|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-28|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-29|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-3|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-1-30|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-1-4|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-1-5|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-1-6|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-1-7|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-1-8|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-1-9|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|key-statements|<tuple|10|13>>
    <associate|lean-source|<tuple|9|6>>
    <associate|unit-difficulty|<tuple|4|5>>
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
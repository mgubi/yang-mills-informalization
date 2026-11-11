<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.8 Connected activities and backward
  dependence cones|III-8.tm>|<hlink|Part III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-9.tm>|<hlink|III.10 One full nonlinear renormalization
  step: bounds on irrelevant terms \<rightarrow\>|III-10.tm>>

  <ym-title|III.9. The marginal flow: the running coupling and its
  reset><label|iii9-the-marginal-flow-the-running-coupling-and-its-reset>

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

  Tracks the running coupling and resets the effective density after each
  renormalization step.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-9.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.8|III-8.tm> <ym-middot> <hlink|Next:
  III.10 \<rightarrow\>|III-10.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> unit III.9: <hlink|coupling
    reset|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET>,
    <hlink|verified reset|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP>,
    <hlink|Wilson start-up|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP>.
    <strong|Size:> 7,215 lines.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Let <math|G\<subset\>U<around|(|n|)>> be closed, with Lie algebra
  <math|\<frak-g\>>.

  <strong|Proposition III.9.1 (slope).> For simple nonabelian
  <math|\<frak-g\>> with orthonormal basis <math|<around|(|b<rsub|i>|)>> in
  <math|<around|\<langle\>|X,Y|\<rangle\>>=-<math-up|Retr><around|(|X*Y|)>/n>,
  define <math|C<rsub|G>=-<around|(|dim \<frak-g\>|)><rsup|-1>*<big|sum><rsub|i><math-up|tr><rsub|\<frak-g\>><around|(|<around|(|<math-up|ad>b<rsub|i>|)><rsup|2>|)>>
  and <math|\<kappa\>=11*C<rsub|G>/<around|(|24*\<pi\><rsup|2>|)>>. Then
  <math|\<kappa\>\<gtr\>0>. <em|Status:> definition and positivity theorem.
  <em|Lean:> <hlink|slopeConstant_pos|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>.

  <strong|Proposition III.9.2 (reference scales).> Fix
  <math|\<kappa\>\<gtr\>0>, <math|<wide|\<beta\>|\<bar\>>\<gtr\>1>, an
  infinite sequence of odd <math|L<rsub|m>\<geqslant\>3>. Set

  <\equation*>
    s<rsub|m>=<big|sum><rsub|i\<less\>m>log L<rsub|i>=log
    <around|(|1/a<rsub|m>|)>,<space|1em><wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+\<kappa\>*s<rsub|m>,<space|1em>M<rsub|m>=e<rsup|<around|(|log
    log <wide|\<beta\>|^><rsub|m>|)><rsup|2>>,
  </equation*>

  <\equation*>
    t<rsub|m>=<wide|\<beta\>|^><rsub|m><rsup|-1/2>*M<rsub|m>,<space|1em>\<varepsilon\><rsub|m>=<wide|\<beta\>|^><rsub|m><rsup|-11/10>,<space|1em><wide|\<varepsilon\>|~><rsub|m>=e<rsup|-M<rsub|m><rsup|1/5>>,<space|1em>B<rsub|m>=<around|\<lceil\>|<around|(|log
    <wide|\<beta\>|^><rsub|m>|)><rsup|2>|\<rceil\>>,<space|1em>\<frak-B\><rsub|m>=<around|[|<wide|\<beta\>|^><rsub|m>/2,2*<wide|\<beta\>|^><rsub|m>|]>.
  </equation*>

  Then <math|<wide|\<beta\>|^><rsub|m+1>=<wide|\<beta\>|^><rsub|m>+\<kappa\>*log
  L<rsub|m>>, <math|<wide|\<beta\>|^>> is nondecreasing and diverges.
  Additional scale hypotheses are: <math|t<rsub|m>\<leqslant\>1>; sides at
  least <math|100*<around|(|B<rsub|m>+1|)>> and
  <math|100*<around|(|R<rsub|m>+1|)>> at levels <math|m,m+1>, for every
  volume; <math|J<rsub|m>\<geqslant\>4> nondecreasing, divergent, increasing
  by at most one; nondecreasing derivative orders, spatial powers, support
  exponents and stage factors <math|\<ell\><rsub|j>>, with
  <math|L<rsub|m>=\<ell\><rsub|J<rsub|m+1>>>; antitone
  <math|0\<less\>\<theta\><rsub|J<rsub|m>>\<leqslant\>1/J<rsub|m>>; <math|log
  L<rsub|m>/s<rsub|m>\<to\>0>; <math|\<omega\><rsub|J<rsub|m+1>>/log
  L<rsub|m>\<leqslant\>J<rsub|m+1><rsup|-2>> and <math|log
  <around|(|1+<text|paths>+<text|width><rsup|-1>+<text|columns>+<text|relaxation>+<text|support
  exponent>|)><rsub|J<rsub|m+1>>/log L<rsub|m>\<leqslant\>J<rsub|m+1><rsup|-2>>.
  <em|Status:> definitions and elementary theorems; scale hypotheses supplied
  by III.2. <em|Lean:> <hlink|Calendar.Fits|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118>.

  <strong|Proposition III.9.3 (selected histories).> A selected history
  assigns representations <math|\<rho\><rsub|N,p,m>> for all <math|N,p> and
  <math|m\<leqslant\>N>, with volume-independent paths <math|P<rsub|N,m>>,
  level norms and clip, stage path bounds and loop cap
  <math|2*M<rsub|m><rsup|\<theta\><rsub|J<rsub|m>>>>, and
  <math|\<beta\><rsub|N,p,m>\<in\>\<frak-B\><rsub|m>>. Regular activities are
  local, gauge invariant, vanish at the flat field, with zero affine Hessian
  on nonwrapping supports and bound <math|\<varepsilon\><rsub|m>>; forced
  activities obey II.2 with bound <math|<wide|\<varepsilon\>|~><rsub|m>>; the
  family respects translations and signed permutations. At the top,
  <math|v<rsub|N>=0>, <math|\<rho\><rsub|N>=e<rsup|-\<beta\><rsub|N>*S<rsub|W>>>;
  at the bottom, <math|\<beta\><rsub|0>=<wide|\<beta\>|\<bar\>>>. For every
  <math|m\<less\>N>,

  <\equation*>
    \<rho\><rsub|m>=T<rsup|<around|(|m|)>><rsub|\<beta\><rsub|m+1>>*\<rho\><rsub|m+1>,<space|2em><around|\||\<beta\><rsub|m+1>-\<beta\><rsub|m>-\<kappa\>*log
    L<rsub|m>|\|>\<leqslant\>\<omega\><rsub|J<rsub|m+1>>.
  </equation*>

  For every <math|\<epsilon\>\<gtr\>0>, eventually
  <math|<around|\||\<beta\><rsub|N,p,m>-<wide|\<beta\>|^><rsub|m>|\|>\<leqslant\>\<epsilon\>*s<rsub|m>>
  uniformly in <math|N\<geqslant\>m,p>. Consequently
  <math|\<beta\><rsub|N,p,m>/s<rsub|m>\<to\>\<kappa\>> uniformly, including
  <math|m=N>, and <math|<big|int>\<rho\><rsub|N,p,m>*<space|0.17em>d<math-up|Haar>=Z<rsub|W><around|(|\<Lambda\><rsub|N,p>;\<beta\><rsub|N,p,N>|)>>
  for every <math|m\<leqslant\>N>. <em|Status:> specification; realized in
  III.13 using III.9.5 and III.10. <em|Lean:>
  <hlink|History.Selected|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240>.

  <strong|Proposition III.9.4 (reset along a curve).> Fix scales meeting
  entry thresholds and kernel conditions, compatible horizon, Haar chart,
  positive post-block constants, planned kinetic data and recipe. For
  <math|N,p,m\<less\>N>, let <math|\<rho\><rprime|'><rsub|x>>,
  <math|x\<in\>I=<around|[|l,u|]>>, be continuous admissible fine
  representations, with <math|l\<leqslant\>u>; write
  <math|\<beta\><rprime|'><rsub|x>=\<beta\><around|(|\<rho\><rprime|'><rsub|x>|)>>.
  Fix stage-pair reset constants <math|c\<gtr\>0>,
  <math|0\<less\>r\<leqslant\>1>, prescribed fine-stage <math|g\<gtr\>0>, and
  coarse-stage sensor <math|\<eta\>\<gtr\>0>. Assume:

  <\itemize-minus>
    <item><math|2*<around|(|c+1|)>*\<varepsilon\><rsub|m>\<leqslant\>\<eta\>*t<rsub|m><rsup|2>*r>;
    a small-field probe satisfies <math|\<cal-K\><around|(|V|)>\<geqslant\><around|\||\<Lambda\><rsub|m>|\|>*\<eta\>*t<rsub|m><rsup|2>>.

    <item>Trial activities <math|F<around|(|x,d|)>>,
    <math|<around|\||d|\|>\<leqslant\>r>, have fixed addresses, valid
    allowances, coefficient continuity, and common summable norm majorants
    along subsequences of every convergent parameter sequence. For
    <math|H<rsub|x>=T<rsup|<around|(|m|)>><rsub|\<beta\><rprime|'><rsub|x>>*\<rho\><rprime|'><rsub|x>>,
    <math|H<rsub|x><around|(|1|)>,H<rsub|x><around|(|V|)>\<gtr\>0> and
  </itemize-minus>

  <\equation*>
    <around|\||<around|(|\<beta\><rprime|'><rsub|x>+\<alpha\>|)>*\<cal-K\><around|(|V|)>+\<cal-L\><around|(|V|)>-log
    <around|(|H<rsub|x><around|(|1|)>/H<rsub|x><around|(|V|)>|)>|\|>\<leqslant\><around|\||\<Lambda\><rsub|m>|\|>*c*\<varepsilon\><rsub|m>,
  </equation*>

  <\equation*>
    <around|\||\<cal-E\><rsub|F<around|(|x,b|)>><around|(|V|)>-\<cal-E\><rsub|F<around|(|x,a|)>><around|(|V|)>|\|>\<leqslant\><around|\||\<Lambda\><rsub|m>|\|>*c*\<varepsilon\><rsub|m>*<around|\||b-a|\|>.
  </equation*>

  <\itemize-minus>
    <item>The trial shape <math|e<rsup|-<around|(|\<beta\><rprime|'><rsub|x>+\<alpha\>+d|)>*\<cal-K\>-\<cal-L\>-\<cal-E\><rsub|F<around|(|x,d|)>>>*\<cal-G\><rsub|F<around|(|x,d|)>>>
    differs from <math|H<rsub|x><around|(|U|)>/H<rsub|x><around|(|1|)>> by at
    most <math|C<rsub|x,U><around|\||f<around|(|x,d|)>|\|>>, with finite
    <math|C<rsub|x,U>\<geqslant\>0> independent of <math|d>; forced
    activities have bound <math|e<rsup|-g*M<rsub|m+1><rsup|2>>>; every exact
    trial passes the recipe.
  </itemize-minus>

  There is continuous <math|d:I\<to\><around|[|-r,r|]>> giving continuous
  admissible <math|\<rho\><rsub|x>=H<rsub|x>>, coupling
  <math|\<beta\><rprime|'><rsub|x>+\<alpha\>+d<around|(|x|)>> and
  <math|v<rsub|x>=<around|\||\<Lambda\><rsub|m>|\|><rsup|-1>*log
  H<rsub|x><around|(|1|)>>, retaining the stronger forced bound. Without the
  last bullet, the unique residual root still matches <math|1,V>.
  <em|Status:> theorem. <em|Lean:> <hlink|advance|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189>.

  <strong|Proposition III.9.5 (explicit reset; program).> Under III.9.4's
  datum, curve and constants, assume simplicity,
  <math|\<beta\><rprime|'><rsub|x>\<in\>\<frak-B\><rsub|m+1>>, and the early
  presentation

  <\equation*>
    H<rsub|x>=e<rsup|\<tau\><rsub|x>\|\<Lambda\><rsub|m>\|-\<beta\><rprime|'><rsub|x>*\<cal-K\>-\<cal-L\>-<big|sum><rsub|i>\<chi\><rsub|X<rsub|i>>*E<rsub|x,i>>*\<cal-G\><rsub|x>*e<rsup|-\<alpha\>*\<cal-S\>>.
  </equation*>

  Assume local gauge-invariant smooth regular functions with nonnegative
  sup-jet bounds <math|h<rsub|x,i>> satisfying, at every anchor,
  <math|<big|sum><rsub|i:o<rsub|i>=o>e<rsup|<around|(|a+3|)><math-up|cover><rsub|B<rsub|m>><around|(|X<rsub|i>|)>>*h<rsub|x,i>\<leqslant\>H<rsub|x><rsup|E>>,
  forced-family conditions and site-pinned bound <math|w<rsub|x>> at exponent
  <math|a+1>, translation and point-group symmetry, fixed addresses and
  III.9.4's continuity/tails. Require priced reset, compatible clip, width
  and cubic conditions, <math|H<rsub|x><rsup|E>\<leqslant\>c*\<varepsilon\><rsub|m>/4>,
  regular/forced reorganization estimates fitting numerical bounds
  <math|e<rsub|x>,k<rsub|x>> that imply both allowances and
  <math|e<rsup|-g*M<rsub|m+1><rsup|2>>>, and recipe acceptance and
  continuation. Then

  <\equation*>
    d<around|(|x|)>=\<delta\><rsub|x>,<space|1em>t<rsub|m><rsup|2><around|\||\<delta\><rsub|x>|\|>\<leqslant\>H<rsub|x><rsup|E>,<space|1em>v<rsub|x>=\<tau\><rsub|x>-<around|\||\<Lambda\><rsub|m>|\|><rsup|-1>*<big|sum><rsub|i>E<rsub|x,i><around|(|1|)>.
  </equation*>

  All III.9.4 conclusions hold. A Gaussian-sector formulation additionally
  requires integration licenses and equality of that integral with the push.
  If these inputs hold at every level along every continuous admissible curve
  with couplings in <math|\<frak-B\><rsub|m+1>>, and start-up curves pass
  initial and retention tests, they give, for every <math|N,p>, an admissible
  continuous Wilson curve on <math|\<frak-B\><rsub|N>> with coupling
  parameter <math|\<beta\>> and <math|v=0>, and reset outputs along every
  continuous admissible input curve with couplings in
  <math|\<frak-B\><rsub|m+1>> on every closed interval, for all
  <math|m\<less\>N>. Output couplings need not remain in the coarse band
  before shooting. <em|Status:> conditional theorems; physical inputs
  supplied by III.10. <em|Lean:> <hlink|Return.reset|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L64-L90>,
  <hlink|program|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L67-L70>.

  <strong|Proposition III.9.6 (Wilson start-up).> For compatible clip/norm
  pairs (<math|0\<less\>t\<leqslant\>1>, <math|c<rsub|<math-up|dir>>\<leqslant\>1>,
  <math|B\<geqslant\>2>, <math|t*e<rsup|<around|(|B-2|)>/c<rsub|<math-up|rel>>>\<geqslant\>2>),
  Wilson top paths, point-group-averaged regular activities
  <math|\<beta\>*<around|(|1-c<rsub|<math-up|dir>>|)>*R<rsub|p>> on
  small-field plaquettes and forced activities
  <math|e<rsup|-\<beta\><space|0.17em><math-up|charge><around|(|D,U|)>>> on
  padded large-field components give <math|\<rho\><rsup|<math-up|start>><rsub|\<beta\>><around|(|U|)>=e<rsup|-\<beta\>*S<rsub|W><around|(|U|)>>>
  for every real <math|\<beta\>> and configuration <math|U>, with <math|v=0>.
  For every <math|G,k,q>, some <math|C\<gtr\>0>,
  <math|0\<less\>\<delta\>\<leqslant\>1> give residual sup-jet bound
  <math|C*t<rsup|5>> for every norm choice of order <math|k> and power
  <math|q>, every torus, plaquette and site of that plaquette when
  <math|t\<leqslant\>\<delta\>>. At each fixed stage with
  <math|c<rsub|<math-up|dir>>\<leqslant\>1>, some
  <math|\<beta\><rsup|\<ast\>>> ensures compatibility, small threshold and
  both norm allowances for every realized choice of levels and every <math|N>
  at that stage with <math|<wide|\<beta\>|^><rsub|N>\<geqslant\>\<beta\><rsup|\<ast\>>>.
  The band curve is continuous; admissibility additionally requires Wilson
  top paths, their stage bounds and recipe tests. Given old planned data and
  a revised horizon with Wilson top quadratic datum, unchanged lower data and
  initial guesses, bounded Wilson top paths can replace the old top while
  preserving <math|\<alpha\>> and planned conditions. <em|Status:> theorem.
  <em|Lean:> <hlink|Start.evaluates|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103>.

  <strong|Proposition III.9.7 (thresholds).> For a fixed pre-block profile
  and simple <math|G>, sensors <math|\<eta\><rsub|j>\<gtr\>0> precede block
  sizes. Fix block factors, <math|0\<less\>\<theta\><rsub|j>\<leqslant\>1>,
  reset constants, decay forecasts and post-block costs. Assume, for each
  <math|i\<leqslant\>j\<leqslant\>i+1>, <math|8*f<rsub|j*i>\<leqslant\>q<rsub|i>*\<ell\><rsub|j><rsup|min>>
  and <math|u<rsub|j*i><around|(|x|)>\<to\>0>, where <math|f<rsub|j*i>> is
  the inherited coefficient, <math|\<ell\><rsub|j><rsup|min>> the preassigned
  block-size floor, and <math|q<rsub|i>=1/<around|[|64*<around|(|1+A<rsub|i>|)>|]>>
  for the regular reorganization coefficient <math|A<rsub|i>\<geqslant\>0>.
  Every threshold record <math|V> admits <math|U\<geqslant\>V> such that
  every <math|W\<geqslant\>U> ensures pricing, cubic, width, reorganization
  and inherited inequalities beyond thresholds; clip compatibility requires
  <math|c<rsub|<math-up|dir>>\<leqslant\>1>. Realized levels must share these
  data and satisfy <math|W<rsup|<math-up|entry>><rsub|J<rsub|m+1>>\<leqslant\><wide|\<beta\>|^><rsub|m>>.
  Physical bounds also require <math|4*q<rsub|i>\<leqslant\>c<rsub|j*i>> and
  <math|4*g<rsub|j>\<leqslant\><math-up|rate><rsub|j*i>>. Start-up thresholds
  are likewise monotone when every used clip has
  <math|c<rsub|<math-up|dir>>\<leqslant\>1>. <em|Status:> conditional
  numerical theorem. <em|Lean:> <hlink|Time.beforeWait|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89>.

  <strong|Proposition III.9.8 (marker sums).> Fix
  <math|M,\<mu\>\<in\>\<bbb-N\>>, <math|a\<in\>\<bbb-R\>>,
  <math|c\<geqslant\>0>. On a four-torus let arbitrarily indexed polymers
  <math|X<rsub|i>> have <math|f<rsub|i>\<geqslant\>0> and subsets of finitely
  many marker names, at most <math|\<mu\>> markers per site. Every
  positive-weight polymer contains one of its markers' sites. If every
  marker-rooted sum <math|<big|sum><rsub|i:v\<in\><math-up|markers><around|(|i|)>>e<rsup|<around|(|a+1|)><math-up|cover><rsub|M><around|(|X<rsub|i>|)>>*f<rsub|i>\<leqslant\>c>,
  then every site-pinned sum <math|<big|sum><rsub|i:x\<in\>X<rsub|i>>e<rsup|a<math-up|cover><rsub|M><around|(|X<rsub|i>|)>>*f<rsub|i>\<leqslant\>\<mu\>*e*<around|(|2*<around|(|16*M+9|)>|)><rsup|4>*c>,
  uniformly in volume. All nonnegative sums must be summable. <em|Status:>
  theorem. <em|Lean:> <hlink|root_hit|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>II.2: polymer norms, masks and gas estimates; III.1: normalized
    block kernels and representation interfaces.

    <item>III.2: constant order, scales and shooting; III.7:
    <math|<around|\||\<alpha\>+\<kappa\>*log L|\|>+1\<leqslant\>\<omega\>>.

    <item>III.4, III.10: Gaussian-sector identity, early presentation, local
    bounds, continuity and recipe acceptance; III.13: compatible kinetic data
    and selected history.

    <item>Intermediate value theorem, Taylor's formula, Schur's lemma,
    lattice reflections and permutations, Fourier analysis.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Extract the isotropic quadratic coefficient of the early regular activities
  into <math|\<beta\>>. Subtract flat values and quadratic projections,
  compensate path terms, and absorb failed-mask discrepancies into the forced
  gas. A scalar equation identifies this exact reorganization with the
  continuous reset; shooting chooses the bare coupling with endpoint
  <math|<wide|\<beta\>|\<bar\>>>.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  Under the corresponding hypotheses in Ÿ1:

  <\enumerate>
    <item>Taylor expansion through order four gives the Wilson residual;
    connected large-field components give the exact gas.
    <hlink|Start.gas_raw|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L81-L94>.

    <item>A small-field stripe gives <math|\<cal-K\><around|(|V|)>\<geqslant\><around|\||\<Lambda\>|\|>*\<eta\>*t<rsup|2>>.
    Pricing and the activity-motion bound make
    <math|f<around|(|x,d|)>=<around|(|\<beta\><rprime|'><rsub|x>+\<alpha\>+d|)>*\<cal-K\><around|(|V|)>+\<cal-L\><around|(|V|)>+\<cal-E\><rsub|F<around|(|x,d|)>><around|(|V|)>-log
    <around|(|H<rsub|x><around|(|1|)>/H<rsub|x><around|(|V|)>|)>> increasing
    with slope at least <math|\<cal-K\><around|(|V|)>/2>, yielding a unique
    continuous root. <hlink|paidResponse|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L121-L137>.

    <item>Simplicity and lattice symmetry make the projected Hessian
    isotropic; exact masked splitting preserves every density value and gives
    <math|d=\<delta\>>. <hlink|Local.exponent|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L70-L82>.

    <item>Fixed-stage asymptotics make the reset inequalities eventual;
    prefix maxima combine their thresholds monotonically.
    <hlink|collect_upper|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L111-L118>.

    <item>Shooting restricts intervals to keep couplings in their bands and
    reach <math|\<beta\><rsub|0>=<wide|\<beta\>|\<bar\>>>; summing drift
    errors gives uniform running. <hlink|Shoot.trajectory|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Two-point matching requires full masked reorganization to imply exact
  transfer. Activity-norm continuity must survive hard configuration masks.
  The running estimate gives an <math|o<around|(|s<rsub|m>|)>> remainder,
  without a bounded remainder or two-loop expansion.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|N,p,m>: cutoff, volume, level; <math|<around|\||\<Lambda\><rsub|m>|\|>>:
  site count; <math|\<alpha\>=\<alpha\><rsub|N,m>>: one-loop shift; <math|a>:
  support exponent; <math|<math-up|cover><rsub|M>>: polymer cover size;
  <math|J<rsub|m>>: stage; <math|\<omega\><rsub|j>>: drift allowance;
  <math|R<rsub|m>>: patch radius. <math|\<cal-K\>,\<cal-L\>,\<cal-E\>,\<cal-G\>>:
  kinetic, loop, regular and forced-gas terms; <math|\<cal-S\>>: masked
  quadratic receipt; <math|\<delta\>>: isotropic Hessian coefficient;
  <math|\<chi\><rsub|X>>: small-field indicator. Admissible means prescribed
  paths/norms/clip, lawfulness and recipe acceptance. Curve continuity means
  continuous coupling and vacuum constant, fixed supports, inventories and
  eligibility tests, and continuity in weighted regular sup-jet/forced
  uniform norms; regular jets are measured on small-field supports at the
  prescribed order and power.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Expand reorganization constants and connected-polymer estimates. Nonlinear
  inputs belong to III.4/III.10; analytic existence and uniqueness within the
  specified continuation class belong to III.13.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-9.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.1|III-1.tm>,
  <hlink|III.2|III-2.tm>, <hlink|III.15|III-15.tm>, <hlink|III.16|III-16.tm>,
  <hlink|II.2|II-2.tm>, <hlink|III.6|III-6.tm>, <hlink|II.1|II-1.tm>,
  <hlink|III.10|III-10.tm>, <hlink|III.3|III-3.tm>, <hlink|III.5|III-5.tm>,
  <hlink|III.4|III-4.tm>, <hlink|VI.1|VI-1.tm>.

  <strong|Referenced by:> <hlink|III.13|III-13.tm>, <hlink|III.10|III-10.tm>,
  <hlink|III.12|III-12.tm>, <hlink|III.2|III-2.tm>, <hlink|III.11|III-11.tm>,
  <hlink|VII.2|VII-2.tm>, <hlink|III.4|III-4.tm>, <hlink|VIII.1|VIII-1.tm>,
  <hlink|III.15|III-15.tm>, <hlink|III.14|III-14.tm>, <hlink|VII.4|VII-4.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 7,215 attributed lines; 1,261 line-counted
  declarations; 1,678 assigned declaration names. Of the assigned names,
  1,582 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/AnalyticBridge/VERIFIED_RESET_STEP/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP>
    \V 2,659 lines.

    <item>work package <hlink|<verbatim|YM/Extra/WILSON_STARTUP/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP>
    \V 2,422 lines.

    <item>work package <hlink|<verbatim|YM/Push/BETA_TRANSPORT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT>
    \V 652 lines.

    <item>work package <hlink|<verbatim|YM/UVNext/COUPLING_RESET/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET>
    \V 592 lines.

    <item>work package <hlink|<verbatim|YM/Extra/MULTISOURCE_BOUNDS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS>
    \V 344 lines.

    <item>work package <hlink|<verbatim|YM/Further/STRONG_STARTUP_CREDIT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT>
    \V 213 lines.

    <item>work package <hlink|<verbatim|YM/Push/PRICE_COMPILER/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER>
    \V 139 lines.

    <item>work package <hlink|<verbatim|YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH>
    \V 65 lines.

    <item>work package <hlink|<verbatim|YM/Planned/RECIPE_STARTUP_PORT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT>
    \V 60 lines.

    <item>work package <hlink|<verbatim|YM/R2I/Wind/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Wind>
    \V 34 lines.

    <item>work package <hlink|<verbatim|YM/Further/THRESHOLD_SOURCE_RESTART/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/THRESHOLD_SOURCE_RESTART>
    \V 24 lines.

    <item>work package <hlink|<verbatim|YM/PhysicalNext/SERVICE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/SERVICE>
    \V 11 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Return.physical_shape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L30-L36>

    <item><hlink|<verbatim|Return.earns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L37-L42>

    <item><hlink|<verbatim|Return.remainders>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L44-L61>

    <item><hlink|<verbatim|Collection.Compared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Comparison.lean#L72-L74>

    <item><hlink|<verbatim|Use.Machine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L41-L49>

    <item><hlink|<verbatim|Machine.packet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L71-L74>

    <item><hlink|<verbatim|Use.Offering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L77-L81>

    <item><hlink|<verbatim|Use.Origins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L83-L84>

    <item><hlink|<verbatim|Use.supplier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L85-L88>

    <item><hlink|<verbatim|Collection.earlyValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L26-L27>

    <item><hlink|<verbatim|Collection.Local.actual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L92-L95>

    <item><hlink|<verbatim|Time.rawGate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L30-L56>

    <item><hlink|<verbatim|Return.earnings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L56-L61>

    <item><hlink|<verbatim|Return.atlas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L70-L71>

    <item><hlink|<verbatim|Return.grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L74-L94>

    <item><hlink|<verbatim|Local.renew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128>

    <item><hlink|<verbatim|Collection.Fees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L49-L51>

    <item><hlink|<verbatim|Averaging.identity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L100-L102>

    <item><hlink|<verbatim|Averaging.delta_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L103-L112>

    <item><hlink|<verbatim|Averaging.delta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L75>

    <item><hlink|<verbatim|Averaging.isotropic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L77-L98>

    <item><hlink|<verbatim|Time.late>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L48-L59>

    <item><hlink|<verbatim|Time.now>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L84-L119>

    <item><hlink|<verbatim|Return.Prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L28-L35>

    <item><hlink|<verbatim|Return.result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L56-L57>

    <item><hlink|<verbatim|Return.settled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L77-L84>

    <item><hlink|<verbatim|label_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Projection.lean#L34-L40>

    <item><hlink|<verbatim|projection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Projection.lean#L89-L90>

    <item><hlink|<verbatim|Residual.splits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Residual.lean#L114-L120>

    <item><hlink|<verbatim|Local.first_split>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Rewrites.lean#L54-L59>

    <item><hlink|<verbatim|Collection.path_split>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Rewrites.lean#L77-L93>

    <item><hlink|<verbatim|Time.credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Tables.lean#L36>

    <item><hlink|<verbatim|Collection.Local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Trays.lean#L35-L40>

    <item><hlink|<verbatim|Bid.Cake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L27-L28>

    <item><hlink|<verbatim|torus_kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L136-L156>

    <item><hlink|<verbatim|Mark.Ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Author.lean#L34-L36>

    <item><hlink|<verbatim|Start.Allows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Cake.lean#L43-L48>

    <item><hlink|<verbatim|channel_split>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Channels.lean#L72-L87>

    <item><hlink|<verbatim|Timing.enough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Clock.lean#L113-L139>

    <item><hlink|<verbatim|fourth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L154>

    <item><hlink|<verbatim|convert_taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L156-L164>

    <item><hlink|<verbatim|surplus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L166>

    <item><hlink|<verbatim|surplus_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L168-L179>

    <item><hlink|<verbatim|Design.principal_top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L156-L162>

    <item><hlink|<verbatim|Design.top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L34-L38>

    <item><hlink|<verbatim|Change.Overlay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L22-L25>

    <item><hlink|<verbatim|residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L58>

    <item><hlink|<verbatim|residual_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L62-L68>

    <item><hlink|<verbatim|healthy_chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L70-L74>

    <item><hlink|<verbatim|Timing.choose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L27-L38>

    <item><hlink|<verbatim|Timing.hat_mono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L40-L42>

    <item><hlink|<verbatim|Timing.receive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L44-L51>

    <item><hlink|<verbatim|Start.Loan.kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Funds.lean#L130-L143>

    <item><hlink|<verbatim|Start.issues>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L70-L75>

    <item><hlink|<verbatim|Start.ink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Ink.lean#L104-L122>

    <item><hlink|<verbatim|Design.Suitable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Match.lean#L52-L54>

    <item><hlink|<verbatim|Mixture.Extras>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/MixRoom.lean#L75-L78>

    <item><hlink|<verbatim|WilsonStartup.Decent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Ownership.lean#L20-L23>

    <item><hlink|<verbatim|Polar.writes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Polar.lean#L142-L163>

    <item><hlink|<verbatim|Quad.small_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Residual.lean#L161-L183>

    <item><hlink|<verbatim|Polar.invert_tori>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L48-L84>

    <item><hlink|<verbatim|StrongStartup.before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L47-L64>

    <item><hlink|<verbatim|StrongStartup.Escrow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Reserve.lean#L69-L76>

    <item><hlink|<verbatim|StrongStartup.BondFuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Sleeves.lean#L51-L52>

    <item><hlink|<verbatim|YM.Gauge.casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>

    <item><hlink|<verbatim|YM.Gauge.slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>

    <item><hlink|<verbatim|YM.Gauge.trace_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L71-L75>

    <item><hlink|<verbatim|Schedule.scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115>

    <item><hlink|<verbatim|Schedule.divergent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120>

    <item><hlink|<verbatim|Schedule.scale_succ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L124-L127>

    <item><hlink|<verbatim|Schedule.a>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99>

    <item><hlink|<verbatim|Deployment.hat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Levels.lean#L43-L45>

    <item><hlink|<verbatim|Stationary.pouring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52>

    <item><hlink|<verbatim|HorizCalc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23>

    <item><hlink|<verbatim|poleVec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125>

    <item><hlink|<verbatim|haloRate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L127-L141>

    <item><hlink|<verbatim|poleSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338>

    <item><hlink|<verbatim|absoluteGeode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408>

    <item><hlink|<verbatim|YM/PCalc/Band.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean>

    <item><hlink|<verbatim|Directed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36>

    <item><hlink|<verbatim|Directed.Move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55>

    <item><hlink|<verbatim|Directed.links>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L57-L63>

    <item><hlink|<verbatim|Directed.Program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72>

    <item><hlink|<verbatim|FiniteBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71>

    <item><hlink|<verbatim|Kin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77>

    <item><hlink|<verbatim|Kin.Planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115>

    <item><hlink|<verbatim|Graces.winnow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50>

    <item><hlink|<verbatim|Rain.glazing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Glazing.lean#L97-L104>

    <item><hlink|<verbatim|Roost.Factor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50>

    <item><hlink|Roost.Factor.offering|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L56>

    <item><hlink|Roost.Factor.worksNow|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L59>

    <item><hlink|<verbatim|Supply.Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>

    <item><hlink|<verbatim|Supply.Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>

    <item><hlink|<verbatim|Supply.Large>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48>

    <item><hlink|<verbatim|BetaTransport.kinetic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L22-L25>

    <item><hlink|<verbatim|FixedRepData.continuous_eval>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L93-L97>

    <item><hlink|<verbatim|eventually_transitions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L126-L131>

    <item><hlink|<verbatim|StepStages>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L27>

    <item><hlink|<verbatim|KBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L102-L104>

    <item><hlink|<verbatim|Activities.Valid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111>

    <item><hlink|<verbatim|EBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L98-L100>

    <item><hlink|<verbatim|StepData.push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79>

    <item><hlink|<verbatim|YM/RG/History.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean>

    <item><hlink|<verbatim|BlockControl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128>

    <item><hlink|<verbatim|Rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171>

    <item><hlink|<verbatim|Conv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L213-L218>

    <item><hlink|<verbatim|Transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227>

    <item><hlink|<verbatim|Running>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230>

    <item><hlink|<verbatim|History.partition_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L242-L249>

    <item><hlink|<verbatim|Stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61>

    <item><hlink|<verbatim|Calendar.hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>

    <item><hlink|<verbatim|monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81>

    <item><hlink|<verbatim|coverSize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L82>

    <item><hlink|<verbatim|threshold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L83>

    <item><hlink|<verbatim|allowance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L84>

    <item><hlink|<verbatim|forcedAllowance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L85>

    <item><hlink|<verbatim|Calendar.op>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L88-L91>

    <item><hlink|<verbatim|PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154>

    <item><hlink|<verbatim|PathData.Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185>

    <item><hlink|<verbatim|StepData.push_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L37-L43>

    <item><hlink|<verbatim|Shoot.band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63>

    <item><hlink|<verbatim|Recipe.races>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82>

    <item><hlink|<verbatim|Shoot.steps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L112-L154>

    <item><hlink|<verbatim|Shoot.successful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159>

    <item><hlink|<verbatim|Shoot.narrow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L18-L49>

    <item><hlink|<verbatim|floorBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57>

    <item><hlink|<verbatim|ceilBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58>

    <item><hlink|<verbatim|Shoot.limits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L60-L68>

    <item><hlink|<verbatim|Shoot.Drifting.pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79>

    <item><hlink|<verbatim|Shoot.gates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L81-L90>

    <item><hlink|<verbatim|Spec.Calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61>

    <item><hlink|<verbatim|Mast.calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Glue.lean#L35-L36>

    <item><hlink|<verbatim|Orchard.traject>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Orchard/First.lean#L55-L88>

    <item><hlink|<verbatim|Reward.step_contracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/AtLimit.lean#L46-L66>

    <item><hlink|<verbatim|Reward.fieldArray>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L15-L46>

    <item><hlink|<verbatim|Reward.ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L49-L62>

    <item><hlink|<verbatim|Spire.Fitted.unions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Alpine.lean#L64-L70>

    <item><hlink|<verbatim|Spire.Fitted.acts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Orbs.lean#L41-L42>

    <item><hlink|<verbatim|Spire.Uses.hits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L68>

    <item><hlink|<verbatim|Spire.Uses.exists_bolt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L78-L85>

    <item><hlink|<verbatim|Upland.Arc.finiteCut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L55-L58>

    <item><hlink|<verbatim|Upland.Arc.exists_trial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L71-L75>

    <item><hlink|<verbatim|Income.balance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L139-L152>

    <item><hlink|<verbatim|correct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L157-L173>

    <item><hlink|<verbatim|Usable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L55-L58>

    <item><hlink|<verbatim|Income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L78-L85>

    <item><hlink|<verbatim|Remainder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L97-L103>

    <item><hlink|<verbatim|Catalog.stable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Catalog.lean#L39-L45>

    <item><hlink|<verbatim|delay_cubic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L100-L106>

    <item><hlink|<verbatim|pays_surplus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L124-L143>

    <item><hlink|<verbatim|higher_estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L52-L69>

    <item><hlink|<verbatim|within_alpha>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L89-L94>

    <item><hlink|<verbatim|CubicGate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L96-L98>

    <item><hlink|<verbatim|ResetPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L38-L43>

    <item><hlink|<verbatim|sensors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L46-L49>

    <item><hlink|<verbatim|can_delay_reset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L56-L62>

    <item><hlink|<verbatim|PricedReset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L66-L69>

    <item><hlink|<verbatim|buys_reset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L71-L89>

    <item><hlink|<verbatim|reachable_chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L40-L54>

    <item><hlink|<verbatim|Sensor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L92-L94>

    <item><hlink|<verbatim|Prereset.value_income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Regular.lean#L73-L87>

    <item><hlink|<verbatim|Prereset.income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Regular.lean#L91-L96>

    <item><hlink|<verbatim|Template.realizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L119-L125>

    <item><hlink|<verbatim|Template.response>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L131-L140>

    <item><hlink|<verbatim|Template.residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L64-L65>

    <item><hlink|<verbatim|Template.passes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L99-L105>

    <item><hlink|<verbatim|Response>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L27-L31>

    <item><hlink|<verbatim|Response.continuous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L54-L58>

    <item><hlink|<verbatim|solve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L60-L70>

    <item><hlink|<verbatim|Response.balance_solve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L80-L83>

    <item><hlink|<verbatim|Supplier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L41-L47>

    <item><hlink|<verbatim|Supplier.ports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L54-L65>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-9-1>

  <\itemize-minus>
    <item><strong|K-III.9.1> <hlink|<verbatim|root_hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199>
    <em|(key result)> \V If each positive source has an anchored name in its
    support and rooted costs are bounded, the multi-marker connected-cover
    budget holds with an explicit site-factor constant.
  </itemize-minus>

  <label|k-iii-9-2>

  <\itemize-minus>
    <item><strong|K-III.9.2> <hlink|<verbatim|DelayLe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38>
    <em|(numbered result)> \V A componentwise order relation on delay data.
  </itemize-minus>

  <label|k-iii-9-3>

  <\itemize-minus>
    <item><strong|K-III.9.3> <hlink|<verbatim|sensor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L96-L142>
    <em|(key result)> \V For a nontrivial gauge group and a clipped action
    there is a uniform \<eta\> making two tests separate with the true
    clipped action.
  </itemize-minus>

  <label|k-iii-9-4>

  <\itemize-minus>
    <item><strong|K-III.9.4> <hlink|<verbatim|cash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126>
    <em|(numbered result)> \V For a forecast and nonnegative shifts, a family
    of numerical inequalities holds eventually as x tends to infinity.
  </itemize-minus>

  <label|k-iii-9-5>

  <\itemize-minus>
    <item><strong|K-III.9.5> <hlink|<verbatim|open_shop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L62-L65>
    <em|(numbered result)> \V A delay assignment can be boosted so that all
    further boosts are opened for the given costs and scouts.
  </itemize-minus>

  <label|k-iii-9-6>

  <\itemize-minus>
    <item><strong|K-III.9.6> <hlink|<verbatim|pricing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Schedule.lean#L98-L111>
    <em|(key result)> \V For a simple gauge, there is a floor beyond which
    delay records can be raised to satisfy ringing with large values and make
    every paid level prepared for the given scope.
  </itemize-minus>

  <label|k-iii-9-7>

  <\itemize-minus>
    <item><strong|K-III.9.7> <hlink|<verbatim|continuous_push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L122-L131>
    <em|(key result)> \V For a continuous curve of representations, the push
    is jointly continuous in the parameter and the fine configuration.
  </itemize-minus>

  <label|k-iii-9-8>

  <\itemize-minus>
    <item><strong|K-III.9.8> <hlink|<verbatim|advance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189>
    <em|(key result)> \V Under additional remainder hypotheses, a priced
    reset step can be advanced to the next stage with continuous
    representatives.
  </itemize-minus>

  <label|k-iii-9-9>

  <\itemize-minus>
    <item><strong|K-III.9.9> <hlink|<verbatim|deliver>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L86-L91>
    <em|(key result)> \V For rows with exponential-decay strip bounds, the
    inverse of r plus the transpose-product exists as a row with uniform
    strip bounds, with constants depending only on r, eta, A.
  </itemize-minus>

  <label|k-iii-9-10>

  <\itemize-minus>
    <item><strong|K-III.9.10> <hlink|<verbatim|evaluates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103>
    <em|(key result)> \V At startup, the cake built from the payload and
    dictionary evaluates exactly to the bare Wilson weight at coupling
    \<beta\>.
  </itemize-minus>

  <label|k-iii-9-11>

  <\itemize-minus>
    <item><strong|K-III.9.11> <hlink|<verbatim|residual_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L76-L101>
    <em|(key result)> \V The one-face Wilson matching residual is bounded by
    C times threshold to the fifth power in the budgeted sup norms, for small
    threshold.
  </itemize-minus>

  <label|k-iii-9-12>

  <\itemize-minus>
    <item><strong|K-III.9.12> <hlink|<verbatim|card>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L52-L71>
    <em|(numbered result)> \V If the allowance conditions hold and the level
    is at top, the stamped recipe satisfies the required menu of estimates
    with the actual pot and kettle.
  </itemize-minus>

  <label|k-iii-9-13>

  <\itemize-minus>
    <item><strong|K-III.9.13> <hlink|<verbatim|prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L87-L107>
    <em|(key result)> \V After enlarging the floor sequence, startup price
    conditions hold monotonically and any supplied delays can be raised to
    ones ensuring the prepared hypotheses for the scope.
  </itemize-minus>

  <label|k-iii-9-14>

  <\itemize-minus>
    <item><strong|K-III.9.14> <hlink|<verbatim|developer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L105-L138>
    <em|(key result)> \V One can modify a schedule sheet to satisfy
    stationary purchase, order, and suitability conditions while preserving
    the kernel and floor.
  </itemize-minus>

  <label|k-iii-9-15>

  <\itemize-minus>
    <item><strong|K-III.9.15> <hlink|<verbatim|beforeWait>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89>
    <em|(key result)> \V There exist thresholds beyond which the raw prices,
    openings, inherited conditions and cubic gates all hold, so that reset
    prices are paid.
  </itemize-minus>

  <label|k-iii-9-16>

  <\itemize-minus>
    <item><strong|K-III.9.16> <hlink|<verbatim|engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L62-L82>
    <em|(key result)> \V A planned kin can be modified in its boundary
    condition, giving a new planned kin with revised path and unchanged
    stationary data away from the end.
  </itemize-minus>

  <label|k-iii-9-17>

  <\itemize-minus>
    <item><strong|K-III.9.17> <hlink|<verbatim|top_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/TopStep.lean#L160-L180>
    <em|(key result)> \V Replacing top input paths in a Wilson-loop step
    preserves the critical, guessed, price-gap, classical-match and
    finite-bound properties.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.8 Connected activities and backward
  dependence cones|III-8.tm>|<hlink|Part III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-9.tm>|<hlink|III.10 One full nonlinear renormalization
  step: bounds on irrelevant terms \<rightarrow\>|III-10.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.9. The marginal flow: the running coupling and
    its reset \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|1>>
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
    <associate|iii9-the-marginal-flow-the-running-coupling-and-its-reset|<tuple|?|1>>
    <associate|k-iii-9-1|<tuple|10|12>>
    <associate|k-iii-9-10|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-9-11|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-9-12|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-9-13|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-9-14|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-9-15|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-9-16|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-9-17|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-9-2|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-9-3|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-9-4|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-9-5|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-9-6|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-9-7|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-9-8|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-9-9|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|key-statements|<tuple|10|12>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|5|5>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
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
<TeXmacs|2.1.5>

<style|<tuple|article|number-long-article|british|ym-outline|ym-manuscript>>

<\body>
  <\hide-preamble>
    <assign|R|<macro|\<bbb-R\>>>

    <assign|Z|<macro|\<bbb-Z\>>>

    <assign|C|<macro|\<bbb-C\>>>

    <assign|N|<macro|\<bbb-N\>>>

    <assign|g|<macro|\<frak-g\>>>

    <assign|tr|<macro|<math-up|tr>>>

    <assign|dimG|<macro|d<rsub|<g>>>>

    <assign|casimir|<macro|C<rsub|<g>>>>

    <assign|slope|<macro|\<kappa\><rsub|G>>>

    <assign|blockpenalty|<macro|<math-ss|b>>>

    <assign|minksquare|<macro|<math-ss|m>>>

    <assign|forwardcone|<macro|<wide|V|\<bar\>><rsub|+>>>

    <assign|wilsonterm|<macro|<math-up|pr>>>

    <assign|chord|<macro|<math-up|ch>>>

    <assign|Conf|<macro|1|<math-up|Conf><rsub|<arg|1>>>>

    <assign|Gen|<macro|1|<math-up|Gen><rsub|<arg|1>>>>

    <assign|NoHit|<macro|1|2|<math-up|NoHit><rsub|<arg|1>,<arg|2>>>>

    <assign|sepinf|<macro|<math-up|sep><rsub|\<infty\>>>>

    <assign|hypercubic|<macro|H<rsub|4>>>

    <assign|latmoment|<macro|M<rsup|<math-up|lat>>>>

    <assign|latsmear|<macro|C<rsup|<math-up|lat>>>>

    <assign|localsection|<macro|1|P<rsub|<arg|1>><rsup|<math-up|loc>>>>

    <assign|refbeta|<macro|<wide|\<beta\>|^>>>

    <assign|cutoffsize|<macro|M<rsup|<math-up|cut>>>>

    <assign|blockkernel|<macro|1|k<rsup|<around|(|<arg|1>|)>>>>

    <assign|blockmap|<macro|1|\<cal-B\><rsup|<around|(|<arg|1>|)>>>>

    <assign|flags|<macro|<math-up|Flag>>>

    <assign|cover|<macro|<math-up|cov>>>

    <assign|density|<macro|<math-up|dens>>>

    <assign|pathaction|<macro|P<rsup|<math-up|path>>>>

    <assign|reflevel|<macro|1|m<rsub|<math-up|ref>><around|(|<arg|1>|)>>>

    <assign|factorscale|<macro|<math-ss|D><rsup|<math-up|fac>>>>

    <assign|unitfield|<macro|1|\<b-1\><rsub|<arg|1>>>>

    <assign|nullspace|<macro|1|\<cal-N\><rsub|<arg|1>>>>

    <assign|maxwellspace|<macro|1|M<rsub|<arg|1>><rsup|<math-up|Max>>>>

    <assign|maxwellcorr|<macro|S<rsup|<math-up|Max>>>>

    <assign|maxwellstress|<macro|T<rsup|<math-up|Max>>>>

    <assign|curvaturesquare|<macro|\<cal-O\><rsub|F<rsup|2>>>>

    <assign|scaleframe|<macro|1|2|<math-ss|U><rsub|<arg|1>,<arg|2>><rsup|<math-up|sc>>>>

    <assign|phases|<macro|<math-ss|X>>>

    <assign|channels|<macro|1|<math-up|Ch><rsub|<arg|1>>>>

    <assign|tracetwopoint|<macro|G<rsub|\<Theta\>>>>

    <assign|traceamplitude|<macro|A<rsub|G>>>

    <assign|tracespectrum|<macro|\<mu\><rsub|\<Theta\>>>>

    <assign|fourierplus|<macro|1|<wide|<arg|1>|^><rsub|+>>>

    <assign|wavetransform|<macro|\<cal-W\><rsub|<math-up|rel>>>>
  </hide-preamble>

  <ym-nav|<hlink|Home|../index.tm><ym-nav-sep><hlink|The
  theorem|../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../summary.tm><ym-nav-sep><hlink|Architecture|../outline/index.tm><ym-nav-sep><hlink|Units|../outline/units.tm><ym-nav-sep><hlink|Manuscript|index.tm><ym-nav-sep><hlink|Glossary|../glossary.tm><ym-nav-sep><hlink|FAQ|../faq.tm><ym-nav-sep><hlink|Work
  items|../outline/work-items.tm><ym-nav-sep><hlink|Data|../data/index.tm><ym-nav-sep><hlink|Method|../method.tm><ym-nav-sep><hlink|Provenance|../provenance.tm><ym-nav-sep><hlink|Changes|../CHANGELOG.tm>>

  <doc-data|<doc-date|<with|font-shape|italic|Under construction. Version of
  November 11, 2026: this manuscript is incomplete. Sections are added
  and<next-line>revised as they are written and checked against the formal
  proof; see the status table at<next-line><slink|https://github.com/scottnarmstrong/yang-mills-informalization/tree/main/manuscript>.>>|<doc-title|The
  construction of four-dimensional quantum Yang--Mills theory>>

  <surround||<new-page>|<\table-of-contents|toc>
    <vspace*|2fn><with|font-series|bold|math-font-series|bold|font-size|1.19|I<space|2spc>The
    theorem and the architecture of its proof>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|1fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Introduction>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Wilson
    theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Renormalization>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <with|par-left|1tab|3.1<space|2spc>Scales and the block map
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|3.2<space|2spc>The density and its norms
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|3.3<space|2spc>The inductive step
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|3.4<space|2spc>Multiscale trajectories
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|3.5<space|2spc>Local fields
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>The
    continuum limit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Stress
    and rotations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Phases
    and reconstruction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Trace
    and products> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Main
    theorems> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc>Constants
    and order of choice> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>

    <vspace*|2fn><with|font-series|bold|math-font-series|bold|font-size|1.19|II<space|2spc>Proofs>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17><vspace|1fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|A<space|2spc>Local
    polynomial fields> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|B<space|2spc>Gauges
    and block integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|C<space|2spc>Path
    actions and the coupling reset> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|D<space|2spc>Activities
    and the inductive step> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|E<space|2spc>Trajectories,
    marked fields and ultraviolet convergence>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-22><vspace|0.5fn>

    <with|par-left|1tab|E.1<space|2spc>Trajectories and tuning
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-23>>

    <with|par-left|1tab|E.2<space|2spc>Marked fields and volume-uniform
    estimates <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-24>>

    <with|par-left|1tab|E.3<space|2spc>Full ultraviolet convergence
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|F<space|2spc>Infinite
    volume and field calculus> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|G<space|2spc>Free
    fields, Ward identities and rotations>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-27><vspace|0.5fn>

    <with|par-left|1tab|G.1<space|2spc>Free fields
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28>>

    <with|par-left|1tab|G.2<space|2spc>Free comparison and the conserved line
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-29>>

    <with|par-left|1tab|G.3<space|2spc>Ward identities and rotations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-30>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|H<space|2spc>Slabs,
    phases and reconstruction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-31><vspace|0.5fn>

    <with|par-left|1tab|H.1<space|2spc>Slabs and phases
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>>

    <with|par-left|1tab|H.2<space|2spc>Reconstruction
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-33>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|I<space|2spc>The
    trace law and non-free comparisons> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34><vspace|0.5fn>

    <with|par-left|1tab|I.1<space|2spc>Trace and spectrum
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>>

    <with|par-left|1tab|I.2<space|2spc>Precise non-free comparisons
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|J<space|2spc>Products
    and contact subtractions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-37><vspace|0.5fn>

    <with|par-left|1tab|J.1<space|2spc>Products and nested clusters
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-38>>

    <with|par-left|1tab|J.2<space|2spc>Contact subtractions
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-39>>
  </table-of-contents>>

  <part|The theorem and the architecture of its proof>

  <section|Introduction><label|sec:introduction>

  <section|Wilson theory><label|sec:wilson>

  The starting measure assigns a group element to each lattice link and
  weights the curvature around each plaquette. We first fix the matrix
  normalization: it determines both the Wilson energy and the coefficient of
  the logarithmic coupling flow.

  Throughout, <math|<N>=<around|{|0,1,\<ldots\>|}>>, coordinate indices run
  from <math|1> to <math|4>, and <math|e<rsub|a>> is the <math|a>th
  coordinate vector. Time is the fourth coordinate. For the later
  relativistic statements write

  <\equation*>
    <minksquare><around|(|x|)>=<around|(|x<rsup|4>|)><rsup|2>-<around|\||<wide|x|\<vect\>>|\|><rsup|2>,<space|2em><forwardcone>=<around|{|\<b-up-p\>:<around|\||<wide|\<b-up-p\>|\<vect\>>|\|>\<leqslant\>\<b-up-p\><rsup|4>|}><space|0.17em>.
  </equation*>

  Inner products are antilinear in the first variable, and spacetime
  integrals use Lebesgue measure. Arity zero is included; empty sums are zero
  and empty products are one. The group <math|<hypercubic>> consists of the
  signed permutation matrices; <math|<math-ss|s><rsub|a><rsup|<math-up|refl>>>
  denotes reflection in coordinate<nbsp><math|a>.

  <\definition>
    <dueto|Gauge normalization><label|def:D01> Fix
    <math|n<rsub|G>\<geqslant\>1> and a closed subgroup
    <math|G\<subset\>U<around|(|n<rsub|G>|)>> with simple nonabelian real Lie
    algebra

    <\equation*>
      <g>=<around|{|X\<in\>M<rsub|n<rsub|G>><around|(|<C>|)>:exp
      <around|(|t*X|)>\<in\>G<text| for every
      >t\<in\><R>|}>,<space|2em><around|\<langle\>|X,Y|\<rangle\>><rsub|<g>>=-n<rsub|G><rsup|-1><math-up|Re><space|0.17em><tr><around|(|X*Y|)><space|0.17em>.
    </equation*>

    For an orthonormal basis <math|<around|(|e<rsub|\<alpha\>><rsup|<g>>|)>>,
    put

    <\align*>
      <tformat|<table|<row|<cell|<dimG>>|<cell|=dim<rsub|<R>><g>,>|<cell|<casimir>>|<cell|=-<dimG><rsup|-1><big|sum><rsub|\<alpha\>><math-up|tr><rsub|<g>><around*|(|<math-up|ad><around|(|e<rsub|\<alpha\>><rsup|<g>>|)><rsup|2>|)>,>>|<row|<cell|b<rsub|0>>|<cell|=<frac|11<casimir>|48*\<pi\><rsup|2>>,>|<cell|<slope>>|<cell|=2*b<rsub|0><space|0.17em>.>>>>
    </align*>

    This fixes the normalization of the running coupling.
  </definition>

  Here <math|<math-up|ad><around|(|X|)>*Y=<around|[|X,Y|]>> and
  <math|<math-up|tr><rsub|<g>>> is the real operator trace
  on<nbsp><math|<g>>. Simplicity means <math|<around|[|<g>,<g>|]>\<ne\>0> and
  no proper nonzero real ideal. Connectedness of<nbsp><math|G> is not
  assumed. The adjoint maps are skew-adjoint for this metric; nonabelianity
  therefore gives <math|<casimir>\<gtr\>0> and <math|<slope>\<gtr\>0>. For
  <math|u\<in\>G>, set

  <\equation>
    <label|eq:I12-price-chord><wilsonterm><around|(|u|)>=1-n<rsub|G><rsup|-1><math-up|Re><space|0.17em><tr><space|0.17em>u,<space|2em><chord><around|(|u|)>=n<rsub|G><rsup|-1/2>*<around|\<\|\|\>|u-1|\<\|\|\>><rsub|<math-up|F>>,<space|2em><chord><around|(|u|)><rsup|2>=2<wilsonterm><around|(|u|)><space|0.17em>.
  </equation>

  The first quantity is the plaquette energy; the second measures its
  distance from the identity. Both are invariant under conjugation and
  inversion.

  <\definition>
    <dueto|Wilson measure><label|def:D02> For an integer
    <math|s\<geqslant\>1> and <math|\<beta\>\<in\><R>>, put
    <math|\<Lambda\><rsub|s>=<around|(|<Z>/s<Z>|)><rsup|4>>. A configuration
    assigns <math|U<around|(|y,a|)>\<in\>G> to every positive link, with
    inverse on the reversed link. Define

    <\align*>
      <tformat|<table|<row|<cell|U<rsub|y;a*b>>|<cell|=U<around|(|y,a|)>*U<around|(|y+e<rsub|a>,b|)>*U<around|(|y+e<rsub|b>,a|)><rsup|-1>*U<around|(|y,b|)><rsup|-1>,>>|<row|<cell|E<rsub|s><rsup|<math-up|W>><around|(|U|)>>|<cell|=<big|sum><rsub|y\<in\>\<Lambda\><rsub|s>><big|sum><rsub|a\<less\>b><wilsonterm><around|(|U<rsub|y;a*b>|)>,>>|<row|<cell|d*\<mu\><rsub|s,\<beta\>><around|(|U|)>>|<cell|=Z<rsub|s,\<beta\>><rsup|-1>*e<rsup|-\<beta\>*E<rsub|s><rsup|<math-up|W>><around|(|U|)>>*<big|prod><rsub|y,a>d*h<around|(|U<around|(|y,a|)>|)><space|0.17em>.>>>>
    </align*>

    Here <math|d*h> is probability Haar measure and <math|Z<rsub|s,\<beta\>>>
    normalizes the measure. This is the lattice theory to be scaled.
  </definition>

  The normalization is the positive finite integral

  <\equation*>
    Z<rsub|s,\<beta\>>=<big|int>e<rsup|-\<beta\>*E<rsub|s><rsup|<math-up|W>><around|(|U|)>>*<big|prod><rsub|y,a>d*h<around|(|U<around|(|y,a|)>|)><space|0.17em>.
  </equation*>

  Indeed, the integrand is continuous and strictly positive on the compact
  configuration space. A site gauge transformation
  <math|\<gamma\><rsub|<math-up|g>>:\<Lambda\><rsub|s>\<to\>G> acts by

  <\equation*>
    U<rsup|\<gamma\><rsub|<math-up|g>>><around|(|y,a|)>=\<gamma\><rsub|<math-up|g>><around|(|y|)>*U<around|(|y,a|)>*\<gamma\><rsub|<math-up|g>>*<around|(|y+e<rsub|a>|)><rsup|-1><space|0.17em>.
  </equation*>

  It changes each plaquette by conjugation at its base point, so the energy
  is gauge invariant. Invariance of probability Haar measure under left and
  right multiplication then gives gauge invariance of the Wilson measure.
  Lattice isometries transport links and invert reversed ones. The measure is
  invariant under these transformations as well; the finite-lattice
  identities are proved in Section<nbsp><reference|sec:partII-A>.

  A general Wilson family, indexed by <math|N,p\<in\><N>>, consists of
  strictly increasing positive integer sequences
  <math|<around|(|L<rsub|p>|)>> and <math|<around|(|D<rsub|N>|)>>, real
  couplings <math|\<beta\><rsub|N,p>>, a label set <math|\<cal-T\>>, and
  complex insertions <math|I<rsub|N,p><around|(|v,y;U|)>>. The index <math|N>
  controls the spacing, and <math|p> controls the physical volume. Set

  <\equation>
    <label|eq:I12-physical-placement>a<rsub|N>=D<rsub|N><rsup|-1>,<space|2em>\<mu\><rsub|N,p>=\<mu\><rsub|L<rsub|p>*D<rsub|N>,\<beta\><rsub|N,p>>,<space|2em><wide|y|^>=a<rsub|N><around*|(|r<rsub|L<rsub|p>*D<rsub|N>><around|(|y<rsup|a>|)>|)><rsub|a=1><rsup|4><space|0.17em>,
  </equation>

  where <math|r<rsub|s><around|(|j|)>> is the integer representative of
  <math|j\<in\><Z>/s<Z>> in <math|<around|(|-s/2,s/2|]>>. Thus the physical
  torus has side<nbsp><math|L<rsub|p>>.

  <\definition>
    <dueto|Lattice moments><label|def:D03> For a label list
    <math|v\<in\>\<cal-T\><rsup|n>>, sites
    <math|y\<in\>\<Lambda\><rsub|L<rsub|p>*D<rsub|N>><rsup|n>>, and a test
    <math|f:<around|(|<R><rsup|4>|)><rsup|n>\<to\><C>>, define

    <\align*>
      <tformat|<table|<row|<cell|<latmoment><rsub|N,p><around|(|v;y|)>>|<cell|=<big|int><big|prod><rsub|i=1><rsup|n>I<rsub|N,p><around|(|v<rsub|i>,y<rsub|i>;U|)>*<space|0.17em>d*\<mu\><rsub|N,p><around|(|U|)>,>>|<row|<cell|<latsmear><rsub|N,p><around|(|v;f|)>>|<cell|=a<rsub|N><rsup|4*n>*<big|sum><rsub|y\<in\>\<Lambda\><rsub|L<rsub|p>*D<rsub|N>><rsup|n>>f<around|(|<wide|y|^>|)><latmoment><rsub|N,p><around|(|v;y|)><space|0.17em>.>>>>
    </align*>

    These are the point correlations and their physical Riemann sums.
  </definition>

  The construction below chooses the spacings, couplings and local insertions
  together. Its bare inverse coupling has logarithmic
  slope<nbsp><math|<slope>>:

  <\equation>
    <label|eq:I12-bare-slope><frac|\<beta\><rsub|N,p>|log
    <around|(|1/a<rsub|N>|)>>\<longrightarrow\><slope><space|2em><around|(|N\<to\>\<infty\>|)>,<space|1em><text|uniformly
    in >p<space|0.17em>.
  </equation>

  This running law is proved in Section<nbsp><reference|sec:renormalization>.
  At each fixed physical volume the ultraviolet limit will use the full
  sequence <math|N\<to\>\<infty\>>; only the subsequent infinite-volume limit
  requires a subsequence.

  <section|Renormalization><label|sec:renormalization>

  Blocking integrates one scale against a probability kernel. A curvature
  action, a vacuum scalar and two activity families describe the new density.
  The inductive step controls these coordinates and the coupling; the
  multiscale theorem chooses the bare coupling to reach one prescribed
  endpoint.

  Fix <math|<blockpenalty>\<gtr\>0>. Throughout we use the common choices of
  Sections<nbsp><reference|sec:partII-A>\U<reference|sec:partII-E>, made once
  for this group realization and penalty in the order of
  Section<nbsp><reference|sec:constants>. Their existence is proved with
  Theorems<nbsp><reference|prop:RG> and<nbsp><reference|prop:MT>. Constants
  may depend on these choices; further dependence is stated where it occurs.

  <subsection|Scales and the block map>

  Levels decrease under blocking. With odd ratios
  <math|\<ell\><rsub|m>\<geqslant\>3>, set

  <\equation>
    <label|eq:I12-levels>D<rsub|0>=1,<space|2em>D<rsub|m+1>=\<ell\><rsub|m>*D<rsub|m>,<space|2em>a<rsub|m>=D<rsub|m><rsup|-1>,<space|2em>s<rsub|m>=log
    D<rsub|m><space|0.17em>.
  </equation>

  The level-<math|m> torus has side <math|L<rsub|p>*D<rsub|m>> in lattice
  units and side <math|L<rsub|p>> in physical units. Starting at
  cutoff<nbsp><math|N>, blocking successively reaches levels
  <math|N-1,\<ldots\>,0>.

  The stage <math|J<rsub|m>> records the available derivative order and
  bounds. The stages satisfy <math|4\<leqslant\>J<rsub|m>\<leqslant\>J<rsub|m+1>\<leqslant\>J<rsub|m>+1>
  and <math|J<rsub|m>\<to\>\<infty\>>. Choose the reference endpoint
  <math|<wide|\<beta\>|\<bar\>>> sufficiently large, as in row<nbsp>7 of
  Section<nbsp><reference|sec:constants>; in particular
  <math|<wide|\<beta\>|\<bar\>>\<gtr\>1>. Define

  <\align>
    <tformat|<table|<row|<cell|<refbeta><rsub|m>>|<cell|=<wide|\<beta\>|\<bar\>>+<slope>s<rsub|m>,>|<cell|<cutoffsize><rsub|m>>|<cell|=exp
    <around*|(|<around|(|log log <refbeta><rsub|m>|)><rsup|2>|)>,>|<cell|t<rsub|m>>|<cell|=<refbeta><rsub|m><rsup|-1/2><cutoffsize><rsub|m>,<eq-number><label|eq:I12-scales>>>|<row|<cell|B<rsub|m>>|<cell|=<around|\<lceil\>|<around|(|log
    <refbeta><rsub|m>|)><rsup|2>|\<rceil\>>,>|<cell|\<epsilon\><rsub|m><rsup|<math-up|reg>>>|<cell|=<refbeta><rsub|m><rsup|-11/10>,>|<cell|\<epsilon\><rsub|m><rsup|<math-up|for>>>|<cell|=e<rsup|-<around|(|<cutoffsize><rsub|m>|)><rsup|1/5>><space|0.17em>.<eq-number>>>>>
  </align>

  The reference coupling <math|<refbeta><rsub|m>> tracks the leading running
  slope. The factor <math|<cutoffsize><rsub|m>> enlarges the Gaussian field
  scale; <math|t<rsub|m>> is the threshold separating small and large
  plaquette fields. The radius <math|B<rsub|m>> sets the scale of the support
  weights. The quantities <math|\<epsilon\><rsub|m><rsup|<math-up|reg>>> and
  <math|\<epsilon\><rsub|m><rsup|<math-up|for>>> bound the regular and forced
  activity sums, respectively. These thresholds depend on the reference
  coupling, so they remain fixed as the actual coupling varies.

  The allowed coupling interval is

  <\equation*>
    \<frak-B\><rsub|m>=<around|[|<refbeta><rsub|m>/2,2<refbeta><rsub|m>|]><space|0.17em>.
  </equation*>

  At stage<nbsp><math|j>, write <math|\<frak-q\><rsub|j>> for the derivative
  order, <math|\<varpi\><rsub|j>> for the spatial power,
  <math|\<sigma\><rsub|j>> for the support exponent and
  <math|\<omega\><rsub|j><rsup|<math-up|RG>>\<geqslant\>0> for the coupling
  drift bound. Their choices and growth conditions are in
  Section<nbsp><reference|sec:constants>.

  At a step <math|m+1\<to\>m>, the fine links <math|U> and coarse links
  <math|V> lie on <math|\<Lambda\><rsub|L<rsub|p>*D<rsub|m+1>>> and
  <math|\<Lambda\><rsub|L<rsub|p>*D<rsub|m>>>. Put <math|j=J<rsub|m+1>> and
  <math|\<ell\>=\<ell\><rsub|m>>. Write <math|\<bbb-B\><rsub|R>=<around|{|-R,\<ldots\>,R|}><rsup|4>>.
  In a patch of radius <math|<around|(|j+3|)>*\<ell\>> about the fine site
  <math|\<ell\>*y>, let <math|h<rsub|y,z>> be the chosen frame at
  offset<nbsp><math|z>. For a coarse edge <math|e=<around|(|y,a|)>> the
  framed straight connector is

  <\equation>
    <label|eq:I12-framed-connector>Y<rsub|e,z>=h<rsub|y,z><around*|(|<big|prod><rsub|r=0><rsup|\<ell\>-1>U<around|(|\<ell\>*y+z+r*e<rsub|a>,a|)>|)>*h<rsub|y+e<rsub|a>,z><rsup|-1><space|0.17em>.
  </equation>

  This compares the fine transport between the two coarse endpoints in their
  chosen frames. The averaging weights and the predictor on its minimizing
  branch are

  <\equation>
    <label|eq:I12-predictor>w<rsub|z><rsup|<math-up|av>>=<around*|(|<math-up|Unif><around|(|\<bbb-B\><rsub|<around|(|\<ell\>-1|)>/2>|)>|)><rsup|\<ast\>j><around|(|z|)>,<space|2em>Q<rsub|e><rsup|<math-up|pred>>=<math-up|argmin><rsub|u\<in\>G><big|sum><rsub|z>w<rsub|z><rsup|<math-up|av>><wilsonterm><around|(|Y<rsub|e,z>*u<rsup|-1>|)><space|0.17em>.
  </equation>

  Here <math|<math-up|Unif>> is uniform probability mass and <math|\<ast\>j>
  denotes <math|j>-fold convolution. This branch is used when the displayed
  minimum is below the fixed predictor cutoff; otherwise a tag selects
  <math|Y<rsub|e,z>> with mass <math|w<rsub|z><rsup|<math-up|av>>>. Symmetric
  minimizing frames and the alternative axial frames are specified in
  Section<nbsp><reference|sec:partII-B>, Definitions<nbsp><reference|def:D20a>\U<reference|def:D21>.
  The finite tag list <math|\<alpha\><rsub|<math-up|tag>>> specifies all
  frame and predictor choices. Their product mass satisfies

  <\equation>
    <label|eq:I12-tag-mass>\<lambda\><rsup|<math-up|tag>><around|(|U,\<alpha\><rsub|<math-up|tag>>|)>\<geqslant\>0,<space|2em><big|sum><rsub|\<alpha\><rsub|<math-up|tag>>>\<lambda\><rsup|<math-up|tag>><around|(|U,\<alpha\><rsub|<math-up|tag>>|)>=1<space|0.17em>.
  </equation>

  <\definition>
    <dueto|Exact block map><label|def:D04> For fine links <math|U> and coarse
    links <math|V>, define

    <\align*>
      <tformat|<table|<row|<cell|<blockkernel|m><rsub|\<beta\>><around|(|U,V|)>>|<cell|=<big|sum><rsub|\<alpha\><rsub|<math-up|tag>>>\<lambda\><rsup|<math-up|tag>><around|(|U,\<alpha\><rsub|<math-up|tag>>|)>*<big|prod><rsub|e<math-up|coarse>><frac|e<rsup|-<blockpenalty>\<beta\><wilsonterm><around|(|V<rsub|e>*Q<rsub|e><rsup|<math-up|pred>><around|(|U,\<alpha\><rsub|<math-up|tag>>|)><rsup|-1>|)>>|<big|int><rsub|G>e<rsup|-<blockpenalty>\<beta\><wilsonterm><around|(|u|)>>*<space|0.17em>d*h<around|(|u|)>>,>>|<row|<cell|<around|(|<blockmap|m><rsub|\<beta\>>f|)><around|(|V|)>>|<cell|=<big|int><blockkernel|m><rsub|\<beta\>><around|(|U,V|)>*f<around|(|U|)>*<space|0.17em>d*U<space|0.17em>.>>>>
    </align*>

    Both product measures are probability Haar measures, and
    <math|<big|int><blockkernel|m><rsub|\<beta\>><around|(|U,V|)>*<space|0.17em>d*V=1>.
    The map integrates one scale without changing the partition integral.
  </definition>

  For fixed <math|U> and tags, right invariance of Haar measure makes every
  coarse-link factor integrate to one. Summing the tag masses proves the
  normalization. Consequently, for integrable<nbsp><math|f>,

  <\equation>
    <label|eq:I12-partition-preservation><big|int><around|(|<blockmap|m><rsub|\<beta\>>f|)><around|(|V|)>*<space|0.17em>d*V=<big|int>f<around|(|U|)>*<space|0.17em>d*U<space|0.17em>.
  </equation>

  The branch choices, measurability and symmetry properties of this kernel
  are proved in Section<nbsp><reference|sec:partII-B>.

  <subsection|The density and its norms>

  At level<nbsp><math|m>, write <math|\<Lambda\>=\<Lambda\><rsub|L<rsub|p>*D<rsub|m>>>.
  Let <math|<flags><rsub|m><around|(|U|)>> be the sites incident to a
  plaquette whose chord exceeds<nbsp><math|t<rsub|m>>. A support is healthy
  if it avoids this set. A regular activity
  <math|E<rsub|i><rsup|<math-up|reg>>> has a site support <math|X<rsub|i>>
  and an anchor <math|o<rsub|i>\<in\>X<rsub|i>>. A forced activity
  <math|K<rsub|i><rsup|<math-up|for>>> has a support <math|Y<rsub|i>> and a
  nonempty inventory <math|I<rsub|i>\<subset\>Y<rsub|i>> of flagged sites.
  Its eligibility event is

  <\equation>
    <label|eq:I12-forced-eligibility>\<cal-E\><rsub|i><rsup|<math-up|elig>>=<around|{|U:Y<rsub|i>\<cap\><flags><rsub|m><around|(|U|)>=I<rsub|i>|}>\<cap\>\<cal-E\><rsub|i><rsup|<math-up|extra>>,<space|2em>K<rsub|i><rsup|<math-up|for>><around|(|U|)>=0*<space|1em><around|(|U\<nin\>\<cal-E\><rsub|i><rsup|<math-up|elig>>|)><space|0.17em>.
  </equation>

  The first test specifies exactly which sites of <math|Y<rsub|i>> are
  flagged. The extra event <math|\<cal-E\><rsub|i><rsup|<math-up|extra>>> is
  a fixed Borel gauge-invariant test supplied with that activity; it reads
  only links with both endpoints in <math|Y<rsub|i>> and the flags in
  <math|Y<rsub|i>>. It restricts which local configurations can contribute
  that forced term. The activity families are countable.

  The path action separates the kinetic coefficient from the quadratic
  corrections generated by integration. For the fixed level data, write
  <math|c<rsub|<math-up|dir>>\<gtr\>16*c<rsub|<math-up|lin>>\<gtr\>0> for the
  clipping constants and <math|R<rsub|J<rsub|m>><rsup|<math-up|rel>>\<gtr\>0>
  for the relaxation length. Distances use the unit-lattice sup metric. Set

  <\align>
    <tformat|<table|<row|<cell|<math-up|clip><rsub|t><around|(|r|)>>|<cell|=<choice|<tformat|<table|<row|<cell|c<rsub|<math-up|dir>>*r<rsup|2>/2,>|<cell|r\<leqslant\>t,>>|<row|<cell|c<rsub|<math-up|lin>>*t*r,>|<cell|r\<gtr\>t,>>>>><label|eq:I12-clipping>>>|<row|<cell|\<chi\><rsup|<math-up|hlth>><rsub|m,x><around|(|U|)>>|<cell|=\<b-1\>*<space|-0.17em><around*|{|<chord><around|(|U<rsub|y;a*b>|)>\<leqslant\>t<rsub|m>*e<rsup|<math-up|dist><around|(|x,y|)>/R<rsub|J<rsub|m>><rsup|<math-up|rel>>><text|
    for every >y,a\<less\>b|}><space|0.17em>.<eq-number>>>>>
  </align>

  The clip keeps a positive linear penalty beyond the small-field threshold,
  while <math|\<chi\><rsup|<math-up|hlth>><rsub|m,x>> switches off a
  quadratic row when a plaquette violates the threshold prescribed by its
  distance from <math|x>. For each plaquette orientation
  <math|\<frak-p\>=<around|(|a,b|)>>, let
  <math|\<cal-F\><rsub|\<frak-p\>*i><around|(|U,x|)>> be a curvature
  <math|<math-up|proj><rsub|<g>><around|(|U<rsub|\<square\>>-U<rsub|\<square\>><rsup|-1>|)>/2>,
  transported along a specified finite path to<nbsp><math|x>, and put

  <\equation*>
    \<cal-L\><rsub|\<frak-p\>><rsup|<math-up|path>><around|(|U,x|)>=<big|sum><rsub|i>r<rsub|\<frak-p\>*i>*\<cal-F\><rsub|\<frak-p\>*i><around|(|U,x|)><space|0.17em>.
  </equation*>

  The projection is orthogonal for the trace metric of
  Definition<nbsp><reference|def:D01>. Let
  <math|\<frak-a\><rsub|i><rsup|<around|(|q|)>><around|(|U,x|)>>,
  <math|q=2,3,4>, denote the fixed real invariant <math|q>-linear expressions
  in transported curvatures, multiplied by the health indicator of their
  combined site supports. Then

  <\align>
    <tformat|<table|<row|<cell|<around|(|<pathaction>|)><rsup|<math-up|raw>><rsub|N,m><around|(|\<beta\>,U|)>>|<cell|=\<beta\>*<big|sum><rsub|x,\<frak-p\>><around*|[|<math-up|clip><rsub|t<rsub|m>><around|(|<chord><around|(|U<rsub|x;\<frak-p\>>|)>|)>+<tfrac|1|2>\<chi\><rsup|<math-up|hlth>><rsub|m,x><around|(|U|)><around|\||\<cal-L\><rsub|\<frak-p\>><rsup|<math-up|path>><around|(|U,x|)>|\|><rsup|2>|]><label|eq:I12-path-action>>>|<row|<cell|>|<cell|<space|1em>+\<beta\>*<big|sum><rsub|x,i><around|(|\<frak-a\><rsub|i><rsup|<around|(|3|)>>+\<frak-a\><rsub|i><rsup|<around|(|4|)>>|)>*<around|(|U,x|)>+<big|sum><rsub|x,i>\<frak-a\><rsub|i><rsup|<around|(|2|)>><around|(|U,x|)>,<eq-number>>>|<row|<cell|<pathaction><rsub|N,m><around|(|\<beta\>,U|)>>|<cell|=<around|\||<hypercubic>|\|><rsup|-1>*<big|sum><rsub|h\<in\><hypercubic>><around|(|<pathaction>|)><rsup|<math-up|raw>><rsub|N,m><around|(|\<beta\>,h<rsup|\<ast\>>*U|)><space|0.17em>.>>>>
  </align>

  Here <math|x\<in\>\<Lambda\>> and <math|i\<in\><N>>;
  <math|h<rsup|\<ast\>>*U> is the link transport by the lattice
  isometry<nbsp><math|h>. The path coefficients and multilinear expressions
  are independent of<nbsp><math|p>. Their absolutely convergent series and
  the clipping restrictions are given in Section<nbsp><reference|sec:partII-C>,
  Definitions<nbsp><reference|def:D22>\U<reference|def:D23> and
  <reference|lem:C1>. In particular the action is affine
  in<nbsp><math|\<beta\>>; its last quadratic sum is independent
  of<nbsp><math|\<beta\>>.

  For these fixed path actions and thresholds, a <em|representation> at
  level<nbsp><math|m> is the datum

  <\equation>
    <label|eq:I12-representation>\<rho\>=<around*|(|\<beta\>,v<rsub|<math-up|vac>>,<around|(|X<rsub|i>,o<rsub|i>,E<rsub|i><rsup|<math-up|reg>>|)><rsub|i>,<around|(|Y<rsub|i>,I<rsub|i>,\<cal-E\><rsub|i><rsup|<math-up|extra>>,K<rsub|i><rsup|<math-up|for>>|)><rsub|i>|)><space|0.17em>.
  </equation>

  The scalar <math|v<rsub|<math-up|vac>>> is its vacuum term, and
  <math|\<beta\><around|(|\<rho\>|)>=\<beta\>> its running kinetic
  coefficient. These coordinates describe the integrated density below.

  <\definition>
    <dueto|Effective density><label|def:D06> For regular activities
    <math|<around|(|X<rsub|i>,o<rsub|i>,E<rsub|i><rsup|<math-up|reg>>|)>> and
    forced activities <math|<around|(|Y<rsub|i>,I<rsub|i>,K<rsub|i><rsup|<math-up|for>>|)>>,
    define

    <\multline*>
      <tformat|<table|<row|<cell|<density><space|0.17em>\<rho\><around|(|U|)>=e<rsup|v<rsub|<math-up|vac>>\|\<Lambda\>\|-<pathaction><rsub|N,m><around|(|\<beta\>,U|)>-<big|sum><rsub|i>\<b-1\><rsub|X<rsub|i><math-up|healthy>>*E<rsub|i><rsup|<math-up|reg>><around|(|U|)>>>>|<row|<cell|\<cdot\><big|sum><rsub|<stack|<tformat|<table|<row|<cell|\<cal-A\><rsub|<math-up|for>>\<subset\><N><math-up|finite>>>|<row|<cell|Y<rsub|i>*<around|(|i\<in\>\<cal-A\><rsub|<math-up|for>>|)><math-up|pairwise
      disjoint>>>|<row|<cell|<big|cup><rsub|i\<in\>\<cal-A\><rsub|<math-up|for>>>I<rsub|i>=<flags><rsub|m><around|(|U|)>>>>>>><big|prod><rsub|i\<in\>\<cal-A\><rsub|<math-up|for>>>K<rsub|i><rsup|<math-up|for>><around|(|U|)><space|0.17em>.>>>>
    </multline*>

    The sum covers every flagged site; each inventory is a nonempty subset of
    its support. This represents the density after integration.
  </definition>

  If there are no flagged sites, only the empty family occurs and the forced
  sum equals one. When flags are present, their exact coverage and the
  disjointness of the supports assign each flagged site to precisely one
  selected forced term. Regular activities enter only on healthy supports.
  Their local regularity and cancellations, and the restrictions on forced
  activities, are specified in Section<nbsp><reference|sec:partII-D>,
  Definitions<nbsp><reference|def:D24>\U<reference|def:D25>.

  For a link <math|e>, let <math|e<rsup|->> be its initial site. The left
  derivative <math|D<rsup|L><rsub|<wide|\<cal-A\>|\<dot\>>>> differentiates
  the increments <math|U<rsub|e>\<mapsto\>e<rsup|t*<wide|\<cal-A\>|\<dot\>><rsub|e>>*U<rsub|e>>,
  with <math|<wide|\<cal-A\>|\<dot\>><rsub|e>\<in\><g>> and norm from
  Definition<nbsp><reference|def:D01>.

  <\definition>
    <dueto|Local derivative seminorm><label|def:D05a> For a regular activity
    anchored at <math|o<rsub|i>>, set

    <\equation*>
      <around|\<\|\|\>|E<rsub|i><rsup|<math-up|reg>>|\<\|\|\>><rsub|m>=sup<rsub|0\<leqslant\>q\<leqslant\>\<frak-q\><rsub|J<rsub|m>>>
      sup<rsub|U,<wide|\<cal-A\>|\<dot\>><rsub|1>,\<ldots\>,<wide|\<cal-A\>|\<dot\>><rsub|q>><around*|\||D<rsup|L><rsub|<wide|\<cal-A\>|\<dot\>><rsub|1>>*\<cdots\>*D<rsup|L><rsub|<wide|\<cal-A\>|\<dot\>><rsub|q>>*E<rsub|i><rsup|<math-up|reg>><around|(|U|)>|\|><space|0.17em>.
    </equation*>

    The second supremum is over configurations healthy on <math|X<rsub|i>>
    and directions satisfying

    <\equation*>
      <around|\||<around|(|<wide|\<cal-A\>|\<dot\>><rsub|h>|)><rsub|e>|\|>\<leqslant\>t<rsub|m>*<around*|(|1+<math-up|dist><around|(|e<rsup|->,o<rsub|i>|)>|)><rsup|\<varpi\><rsub|J<rsub|m>>><space|0.17em>.
    </equation*>

    This measures ordered local derivatives in units of the permitted field
    size.
  </definition>

  For a support<nbsp><math|X>, let <math|<cover><rsub|B<rsub|m>><around|(|X|)>>
  be the minimum number of radius-<math|B<rsub|m>> lattice balls with
  connected union covering<nbsp><math|X>. The exponential weight below
  penalizes supports that require many such balls.

  <\definition>
    <dueto|Weighted activity sums><label|def:D05b> For nonnegative majorants
    <math|e<rsub|i><rsup|<math-up|maj>>\<geqslant\><around|\<\|\|\>|E<rsub|i><rsup|<math-up|reg>>|\<\|\|\>><rsub|m>>
    and <math|k<rsub|i><rsup|<math-up|maj>>\<geqslant\>sup<rsub|U><around|\||K<rsub|i><rsup|<math-up|for>><around|(|U|)>|\|>>,
    define

    <\align*>
      <tformat|<table|<row|<cell|\<cal-E\><rsub|m>>|<cell|=sup<rsub|x>
      <big|sum><rsub|o<rsub|i>=x>e<rsup|\<sigma\><rsub|J<rsub|m>><cover><rsub|B<rsub|m>><around|(|X<rsub|i>|)>>*e<rsub|i><rsup|<math-up|maj>>,>>|<row|<cell|\<cal-K\><rsub|m>>|<cell|=sup<rsub|x>
      <big|sum><rsub|x\<in\>Y<rsub|i>>e<rsup|\<sigma\><rsub|J<rsub|m>><cover><rsub|B<rsub|m>><around|(|Y<rsub|i>|)>>*k<rsub|i><rsup|<math-up|maj>><space|0.17em>.>>>>
    </align*>

    These sums measure regular and forced terms separately, with a penalty
    for large supports.
  </definition>

  The chosen admissible classes <math|\<cal-A\><rsub|N,m,p>>, initial classes
  <math|\<cal-I\><rsub|N,p>\<subset\>\<cal-A\><rsub|N,N,p>>, and
  adjacent-level relations

  <\equation*>
    \<cal-R\><rsub|N,m,p>\<subset\>\<cal-A\><rsub|N,m,p>\<times\>\<cal-A\><rsub|N,m+1,p>
  </equation*>

  are constructed in Section<nbsp><reference|sec:partII-D>,
  <reference|lem:D2>. They retain the Wilson initial representations, the
  coarse representations produced by the inductive assembly, and the
  estimates needed to continue that assembly and perform endpoint tuning. For
  every member, <reference|lem:D1> supplies majorants with convergent
  weighted sums satisfying

  <\equation>
    <label|eq:I12-activity-caps>\<cal-E\><rsub|m>\<leqslant\>\<epsilon\><rsub|m><rsup|<math-up|reg>>,<space|2em>\<cal-K\><rsub|m>\<leqslant\>\<epsilon\><rsub|m><rsup|<math-up|for>><space|0.17em>.
  </equation>

  These inequalities are properties of the chosen classes; the classes also
  retain the restrictions imposed by the inductive assembly. The relation
  <math|\<cal-R\><rsub|N,m,p>> records its permitted adjacent pairs. The
  density identity and drift bound below hold for the pairs produced by RG
  and for the trajectories chosen in MT.

  Along a continuous curve, supports, anchors, inventories and extra tests
  are fixed, and the coupling and vacuum scalar are continuous. Differences
  of regular derivatives on healthy configurations and of forced values admit
  majorants whose weighted sums over all addresses tend to zero as the
  parameter approaches any point. The weights are those of
  Definition<nbsp><reference|def:D05b> at the level of the representation,
  including <math|t<rsub|m>> in the derivative seminorm. Thus the input and
  output curves below use levels <math|m+1> and <math|m>, respectively. This
  is the continuity of Definition<nbsp><reference|def:D25a> in
  Section<nbsp><reference|sec:partII-D>: regular derivatives are measured on
  the healthy domain, and forced terms are compared in supremum norm on all
  configurations. No derivative of a flag indicator is taken.

  <subsection|The inductive step>

  Exact integration removes one scale. Extracting its marginal
  curvature-square term into the coupling leaves a bounded drift error and
  returns a density in the next admissible class.

  <\theorem>
    <dueto|One step><label|prop:RG> For every <math|N,p>, <math|m\<less\>N>,
    reals <math|u<rsub|0>\<leqslant\>u<rsub|1>> and continuous
    <math|\<rho\><rprime|'><rsub|u>\<in\>\<cal-A\><rsub|N,m+1,p>> with
    <math|\<beta\><rprime|'><rsub|u>=\<beta\><around|(|\<rho\><rprime|'><rsub|u>|)>\<in\>\<frak-B\><rsub|m+1>>
    for all <math|u\<in\><around|[|u<rsub|0>,u<rsub|1>|]>>, there is a
    continuous <math|\<rho\><rsub|u>\<in\>\<cal-A\><rsub|N,m,p>> with
    <math|<around|(|\<rho\><rsub|u>,\<rho\><rprime|'><rsub|u>|)>\<in\>\<cal-R\><rsub|N,m,p>>
    and, for every <math|u\<in\><around|[|u<rsub|0>,u<rsub|1>|]>> and coarse
    configuration <math|V>,

    <\align*>
      <tformat|<table|<row|<cell|<density><space|0.17em>\<rho\><rsub|u><around|(|V|)>>|<cell|=<around|(|<blockmap|m><rsub|\<beta\><rprime|'><rsub|u>><density><space|0.17em>\<rho\><rprime|'><rsub|u>|)><around|(|V|)>,>>|<row|<cell|\<beta\><around|(|\<rho\><rsub|u>|)>>|<cell|=\<beta\><rprime|'><rsub|u>-<slope>log
      \<ell\><rsub|m>+e<rsub|u>,<space|2em><around|\||e<rsub|u>|\|>\<leqslant\>\<omega\><rsub|J<rsub|m+1>><rsup|<math-up|RG>><space|0.17em>.>>>>
    </align*>
  </theorem>

  The proof occupies Sections<nbsp><reference|sec:partII-B>\U<reference|sec:partII-D>,
  ending with <reference|lem:D3>. Symmetric gauge fixing and the stationary
  background give the small-field integration; the large-field lower bound
  controls the forced terms. The Gaussian determinant and the Haar-coordinate
  Jacobian contribute to the one-loop action. Its quadratic curvature
  coefficient changes the inverse coupling by <math|-<slope>log
  \<ell\><rsub|m>>, up to the displayed error. Fourth-order Wilson matching
  fixes the remaining local terms, and the scalar coupling reset absorbs the
  residual kinetic contribution in Section<nbsp><reference|sec:partII-C>.
  Section<nbsp><reference|sec:partII-D> assembles the activities with the
  bounds<nbsp><eqref|eq:I12-activity-caps>.

  For the fixed construction, <math|\<omega\><rsub|j><rsup|<math-up|RG>>>
  depends only on the stage; it is independent of <math|N,p>, the interval
  and the curve. Since <math|<refbeta><rsub|m>=<refbeta><rsub|m+1>-<slope>log
  \<ell\><rsub|m>>, a step changes <math|\<beta\>-<refbeta>> by
  <math|e<rsub|u>> only. RG imposes a band condition only on the input
  coupling. The trajectories of MT below also have their output couplings in
  the appropriate bands. Section<nbsp><reference|sec:partII-D>,
  <reference|lem:D3> supplies the continuous initial curve

  <\equation>
    <label|eq:I12-Wilson-initialization>\<beta\>\<longmapsto\>\<rho\><rsup|<math-up|W>><rsub|\<beta\>>\<in\>\<cal-I\><rsub|N,p>,<space|2em>\<beta\><around|(|\<rho\><rsup|<math-up|W>><rsub|\<beta\>>|)>=\<beta\>,<space|2em><density><space|0.17em>\<rho\><rsup|<math-up|W>><rsub|\<beta\>>=e<rsup|-\<beta\>*E<rsup|<math-up|W>><rsub|L<rsub|p>*D<rsub|N>>>*<space|1em><around|(|\<beta\>\<in\>\<frak-B\><rsub|N>|)><space|0.17em>,
  </equation>

  whose vacuum scalar is zero. This is the base case for the induction.

  <subsection|Multiscale trajectories>

  A trajectory is a tuple <math|\<rho\><rsub|N,p,m>\<in\>\<cal-A\><rsub|N,m,p>>,
  <math|0\<leqslant\>m\<leqslant\>N>, satisfying

  <\equation*>
    \<rho\><rsub|N,p,N>\<in\>\<cal-I\><rsub|N,p>,<space|2em><around|(|\<rho\><rsub|N,p,m>,\<rho\><rsub|N,p,m+1>|)>\<in\>\<cal-R\><rsub|N,m,p>*<space|1em><around|(|m\<less\>N|)><space|0.17em>.
  </equation*>

  Write <math|\<beta\><rsub|N,p,m>=\<beta\><around|(|\<rho\><rsub|N,p,m>|)>>;
  here <math|m> is the final index, whereas it is the middle index of
  <math|\<cal-A\><rsub|N,m,p>> and <math|\<cal-R\><rsub|N,m,p>>. To select
  the bare coupling, start with the continuous Wilson curve across
  <math|\<frak-B\><rsub|N>> and apply RG. At the step <math|m+1\<to\>m>, the
  drift bound makes the endpoint output couplings bracket
  <math|<around|[|<wide|\<beta\>|\<bar\>>+<around|(|<slope>/2|)>*s<rsub|m>,<wide|\<beta\>|\<bar\>>+2<slope>s<rsub|m>|]>\<subset\>\<frak-B\><rsub|m>>.
  The intermediate value theorem gives a closed parameter subinterval whose
  endpoint couplings are the ends of this interval and whose couplings remain
  within it. Repeating this restriction reaches
  <math|<wide|\<beta\>|\<bar\>>> at level zero. This is the shooting
  argument. It chooses the couplings for all <math|N,p> before an increasing
  sequence of volume indices <math|<math-ss|p>:<N>\<to\><N>> is prescribed.

  <\theorem>
    <dueto|Multiscale trajectory><label|prop:MT> There are bare couplings
    <math|\<beta\><rsub|N,p>> and trajectories
    <math|<around|(|\<rho\><rsub|N,p,m>|)><rsub|m=0><rsup|N>>, for all
    <math|N,p\<in\><N>>, with <math|\<rho\><rsub|N,p,N>=\<rho\><rsup|<math-up|W>><rsub|\<beta\><rsub|N,p>>>
    and <math|\<beta\><rsub|N,p,N>=\<beta\><rsub|N,p>>, satisfying

    <\gather*>
      <tformat|<table|<row|<cell|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>,<space|2em>\<beta\><rsub|N,p,m>\<in\>\<frak-B\><rsub|m>*<space|1em><around|(|0\<leqslant\>m\<leqslant\>N|)>,>>|<row|<cell|<density><space|0.17em>\<rho\><rsub|N,p,m>=<blockmap|m><rsub|\<beta\><rsub|N,p,m+1>><density><space|0.17em>\<rho\><rsub|N,p,m+1>*<space|1em><around|(|m\<less\>N|)><space|0.17em>.>>>>
    </gather*>

    For every <math|\<varepsilon\>\<gtr\>0>, some
    <math|m<rsub|0><around|(|\<varepsilon\>|)>> satisfies

    <\equation*>
      <around|\||\<beta\><rsub|N,p,m>-<slope>s<rsub|m>|\|>\<leqslant\>\<varepsilon\>*s<rsub|m>*<space|2em><around|(|N\<geqslant\>m\<geqslant\>m<rsub|0>,p\<in\><N>|)><space|0.17em>.
    </equation*>
  </theorem>

  The proof is the shooting argument of Section<nbsp><reference|sec:partII-E>,
  <reference|sec:partII-E.1>, with <reference|lem:E1.1>\U<reference|lem:E1.2>.
  Fix this family of trajectories for all subsequent constructions. The exact
  drift bound of RG holds on every adjacent pair of these trajectories, and
  all their integrals equal <math|Z<rsub|L<rsub|p>*D<rsub|N>,\<beta\><rsub|N,p>>>
  by<nbsp><eqref|eq:I12-partition-preservation> and the Wilson start. The
  path arrays remain independent of<nbsp><math|p>.

  The running law follows by summing the drift from the fixed endpoint:

  <\equation>
    <label|eq:I12-drift-sum><around|\||\<beta\><rsub|N,p,m>-<refbeta><rsub|m>|\|>\<leqslant\><big|sum><rsub|i=0><rsup|m-1>\<omega\><rsub|J<rsub|i+1>><rsup|<math-up|RG>><space|0.17em>.
  </equation>

  Row<nbsp>5 of Section<nbsp><reference|sec:constants> bounds the sum by
  <math|<around|(|<slope>/4|)>*s<rsub|m>>, which also places the trajectory
  couplings in <math|\<frak-B\><rsub|m>>. Its stronger bound
  <math|\<omega\><rsub|J<rsub|i+1>><rsup|<math-up|RG>>/log
  \<ell\><rsub|i>\<leqslant\>J<rsub|i+1><rsup|-2>> makes the sum
  <math|o<around|(|s<rsub|m>|)>>: split at a fixed level, then bound the tail
  by <math|sup<rsub|i\<geqslant\>i<rsub|0>> J<rsub|i+1><rsup|-2>>
  times<nbsp><math|s<rsub|m>>. Since <math|J<rsub|i>\<to\>\<infty\>> and
  <math|s<rsub|m>\<to\>\<infty\>>, the finite initial sum and
  <math|<wide|\<beta\>|\<bar\>>> disappear after division
  by<nbsp><math|s<rsub|m>>, uniformly in<nbsp><math|N\<geqslant\>m>
  and<nbsp><math|p>.

  The same level choices give <math|log \<ell\><rsub|m>\<to\>\<infty\>> and
  <math|log \<ell\><rsub|m>/s<rsub|m>\<to\>0>. The physical periods
  <math|L<rsub|p>> are strictly increasing multiples of four, and every
  positive integer divides <math|L<rsub|p>> for infinitely
  many<nbsp><math|p>.

  Endpoint tuning varies the prescribed coupling at level zero.
  Section<nbsp><reference|sec:partII-E>, <reference|lem:E1.3> proves that
  there is a width <math|w<rsub|<math-up|tun>>\<gtr\>0>, independent of
  <math|N,p>, such that the unique bare coupling
  <math|\<beta\><rsub|N,p><around|(|s|)>> within the specified recursion that
  reaches <math|<wide|\<beta\>|\<bar\>>+w<rsub|<math-up|tun>>*s> satisfies
  <math|\<beta\><rsub|N,p><around|(|0|)>=\<beta\><rsub|N,p>> and extends to a
  function <math|b<rsub|N,p>>, holomorphic on
  <math|<around|\||z|\|>\<less\>1>, with

  <\equation>
    <label|eq:I12-endpoint-tuning>b<rsub|N,p><around|(|s|)>=\<beta\><rsub|N,p><around|(|s|)>*<space|2em><around|(|-1\<less\>s\<less\>1|)><space|0.17em>.
  </equation>

  The real endpoint parameter ranges over <math|s\<in\><around|[|-1,1|]>>.
  This analyticity is used in the full ultraviolet limit; it does not assert
  a common analyticity width for all correlation functions.

  <subsection|Local fields>

  Local fields are normalized along the same trajectories. Their polynomial
  labels specify the continuum Taylor coefficients, while transfer to a fixed
  reference level determines the insertion at the fine cutoff.

  The labels use radial, or Fock\USchwinger, gauge: the condition in the next
  definition sets the radial component of the connection to zero.

  <\definition>
    <dueto|Polynomial labels><label|def:D07> Let <math|\<cal-J\>> consist of
    formal <math|<g>>-valued arrays <math|\<cal-A\><rsub|a><around|(|x|)>=<big|sum><rsub|k\<geqslant\>0>\<cal-A\><rsub|k,a><around|(|x|)>>,
    with <math|\<cal-A\><rsub|k,a>> homogeneous of degree <math|k+1> and

    <\equation*>
      <big|sum><rsub|a>x<rsup|a>*\<cal-A\><rsub|k,a><around|(|x|)>=0,<space|2em>V<rsub|d>=<C><around|[|\<cal-J\>|]><rsup|<math-up|Ad><around|(|G|)>><rsub|<math-up|weight>\<leqslant\>d><space|0.17em>.
    </equation*>

    Each coordinate of <math|\<cal-A\><rsub|k>> has bidegree
    <math|<around|(|k+2,1|)>>: engineering weight and number of polynomial
    factors. Fix bihomogeneous bases, the supremum coefficient norm,
    conjugation and the induced <math|<hypercubic>> action. These labels
    describe invariant curvature polynomials; curvature has weight two and a
    covariant derivative adds one.
  </definition>

  Write <math|\<b-1\>> for the constant polynomial one.
  Section<nbsp><reference|sec:partII-A>, <reference|lem:A1> constructs a
  local section <math|<localsection|d><around|[|\<b-up-c\>|]><around|(|y;U|)>>,
  linear in <math|\<b-up-c\>\<in\>V<rsub|d>> and polynomial in the real and
  imaginary parts of link matrix entries on a fixed finite stencil
  <math|\<Sigma\><rsub|d>\<subset\><Z><rsup|4>>. It is gauge invariant,
  commutes with complex conjugation, is <math|<hypercubic>> covariant, and
  sends the polynomial unit to one.

  Its Taylor normalization compares lattice holonomies with a smooth
  connection jet. For <math|<math-ss|j>=<around|(|\<cal-A\><rsub|k>|)><rsub|k>\<in\>\<cal-J\>>,
  put <math|\<cal-A\><rsup|\<leqslant\>d>=<big|sum><rsub|k+2\<leqslant\>d>\<cal-A\><rsub|k>>
  and let <math|U<around|(|h<rsub|<math-up|lat>>,<math-ss|j>|)>> be its test
  holonomies at spacing <math|h<rsub|<math-up|lat>>>. On a positive link
  <math|<around|(|y,a|)>>, with <math|y\<in\><Z><rsup|4>>, these are defined
  by

  <\equation*>
    U<around|(|h<rsub|<math-up|lat>>,<math-ss|j>|)><around|(|y,a|)>=u<around|(|1|)>,<space|2em>u<rprime|'><around|(|t|)>=u<around|(|t|)>*h<rsub|<math-up|lat>>*\<cal-A\><rsub|a><rsup|\<leqslant\>d>*<around|(|h<rsub|<math-up|lat>>*<around|(|y+t*e<rsub|a>|)>|)>,<space|2em>u<around|(|0|)>=1<rsub|G><space|0.17em>.
  </equation*>

  The jet dilation is <math|<math-up|sc><rsub|h<rsub|<math-up|lat>>><math-ss|j>=<around|(|h<rsub|<math-up|lat>><rsup|k+2>*\<cal-A\><rsub|k>|)><rsub|k>>.
  For every <math|\<b-up-c\>\<in\>V<rsub|d>> and
  <math|0\<leqslant\>q\<leqslant\>d>, <reference|lem:A1> proves

  <\equation>
    <label|eq:I12-section-Taylor><around*|\<nobracket\>|<frac|d<rsup|q>|d*h<rsub|<math-up|lat>><rsup|q>><localsection|d><around|[|\<b-up-c\>|]><around|(|0;U<around|(|h<rsub|<math-up|lat>>,<math-ss|j>|)>|)>|\|><rsub|h<rsub|<math-up|lat>>=0>=<around*|\<nobracket\>|<frac|d<rsup|q>|d*h<rsub|<math-up|lat>><rsup|q>>*\<b-up-c\><around|(|<math-up|sc><rsub|h<rsub|<math-up|lat>>><math-ss|j>|)>|\|><rsub|h<rsub|<math-up|lat>>=0><space|0.17em>.
  </equation>

  Thus a homogeneous label of engineering weight <math|w> specifies the
  coefficient at order <math|h<rsub|<math-up|lat>><rsup|w>> in this
  expansion.

  Choose the reference level <math|<reflevel|d>> with
  <math|J<rsub|<reflevel|d>>\<geqslant\>d+3> and
  <math|\<frak-q\><rsub|J<rsub|m>>\<geqslant\>d+1>,
  <math|\<varpi\><rsub|J<rsub|m>>\<geqslant\>d> for
  <math|m\<geqslant\><reflevel|d>>, as in
  Section<nbsp><reference|sec:partII-E>, <reference|lem:E2.1>. For a basis
  vector <math|b<rsub|d,i>> of bidegree <math|<around|(|w<rsub|i>,k<rsub|i>|)>>
  define the factor-count scaling by

  <\equation*>
    <factorscale><rsub|t>b<rsub|d,i>=t<rsup|k<rsub|i>>*b<rsub|d,i><space|0.17em>.
  </equation*>

  This rescales each polynomial factor in units of the small-field threshold.
  For <math|N\<geqslant\><reflevel|d>> and terminal input
  <math|\<b-up-v\>\<in\>V<rsub|d>>, the marked density at the origin is
  initialized and evolved by

  <\align>
    <tformat|<table|<row|<cell|H<rsup|<math-up|ins>><rsub|N,p,N;d><around|(|\<b-up-v\>;U|)>>|<cell|=<density><space|0.17em>\<rho\><rsub|N,p,N><around|(|U|)><space|0.17em><localsection|d><around|[|<factorscale><rsub|t<rsub|N><rsup|-1>>\<b-up-v\>|]><around|(|0;U|)>,<eq-number><label|eq:I12-marked-evolution>>>|<row|<cell|H<rsup|<math-up|ins>><rsub|N,p,m;d><around|(|\<b-up-v\>|)>>|<cell|=\<ell\><rsub|m><rsup|d><blockmap|m><rsub|\<beta\><rsub|N,p,m+1>>H<rsup|<math-up|ins>><rsub|N,p,m+1;d><around|(|\<b-up-v\>|)>*<space|1em><around|(|<reflevel|d>\<leqslant\>m\<less\>N|)><space|0.17em>.<eq-number>>>>>
  </align>

  For fixed <math|N,p,d>, the transfer construction chooses coefficient
  vectors <math|\<b-up-x\><rsub|m><around|(|\<b-up-v\>|)>> and regular and
  forced remainders <math|R<rsub|m,i><rsup|<math-up|reg>><around|(|\<b-up-v\>|)>>
  and <math|Q<rsub|m,i><rsup|<math-up|for>><around|(|\<b-up-v\>|)>>. All are
  linear in<nbsp><math|\<b-up-v\>>. Write
  <math|\<b-up-x\><rsub|m>=x<rsub|m,0>*\<b-1\>+\<b-up-x\><rsub|m><rsup|\<circ\>>>,
  and abbreviate <math|\<rho\><rsub|N,p,m>> by <math|\<rho\><rsub|m>>. The
  regular remainders have supports <math|Z<rsub|m,i>> containing the origin.
  Define their sum and the forced remainder by

  <\align>
    <tformat|<table|<row|<cell|\<cal-R\><rsub|m><rsup|<math-up|reg>><around|(|\<b-up-v\>;U|)>>|<cell|=<big|sum><rsub|i>\<b-1\><rsub|Z<rsub|m,i><math-up|healthy>>*R<rsub|m,i><rsup|<math-up|reg>>*<around|(|\<b-up-v\>;U|)>,<label|eq:I12-marked-remainders>>>|<row|<cell|\<cal-R\><rsub|m><rsup|<math-up|for>><around|(|\<b-up-v\>;U|)>>|<cell|=e<rsup|v<rsub|<math-up|vac>>\|\<Lambda\>\|-<pathaction><rsub|N,m><around|(|\<beta\><around|(|\<rho\><rsub|m>|)>,U|)>-<big|sum><rsub|i>\<b-1\><rsub|X<rsub|i><math-up|healthy>>*E<rsub|i><rsup|<math-up|reg>><around|(|U|)>>>>|<row|<cell|>|<cell|<space|1em>\<cdot\><big|sum><rsub|\<cal-A\><rsub|<math-up|for>><math-up|eligible>><big|sum><rsub|i\<in\>\<cal-A\><rsub|<math-up|for>>>Q<rsub|m,i><rsup|<math-up|for>><around|(|\<b-up-v\>;U|)>*<big|prod><rsub|j\<in\>\<cal-A\><rsub|<math-up|for>>\<setminus\><around|{|i|}>>K<rsub|j><rsup|<math-up|for>><around|(|U|)><space|0.17em>.<eq-number>>>>>
  </align>

  All unmarked quantities in this formula are taken from
  <math|\<rho\><rsub|m>>, and eligibility is the disjointness and exact flag
  coverage in Definition<nbsp><reference|def:D06>. The marked density has the
  exact decomposition

  <\multline>
    <tformat|<table|<row|<cell|H<rsup|<math-up|ins>><rsub|N,p,m;d><around|(|\<b-up-v\>;U|)>=<density><space|0.17em>\<rho\><rsub|m><around|(|U|)>*<around*|[|x<rsub|m,0><around|(|\<b-up-v\>|)>+\<b-1\><rsub|\<Sigma\><rsub|d><math-up|healthy>><localsection|d><around|[|<factorscale><rsub|t<rsub|m><rsup|-1>>\<b-up-x\><rsub|m><rsup|\<circ\>><around|(|\<b-up-v\>|)>|]><around|(|0;U|)>|]><label|eq:I12-marked-representation>>>|<row|<cell|+<density><space|0.17em>\<rho\><rsub|m><around|(|U|)>*\<cal-R\><rsub|m><rsup|<math-up|reg>><around|(|\<b-up-v\>;U|)>+\<cal-R\><rsub|m><rsup|<math-up|for>><around|(|\<b-up-v\>;U|)><space|0.17em>.<eq-number>>>>>
  </multline>

  Here the stencil <math|\<Sigma\><rsub|d>> is placed at the origin on the
  level-<math|m> torus. If <math|10<math-up|dist><around|(|x,0|)>\<less\>L<rsub|p>*D<rsub|m>>
  for every <math|x\<in\>Z<rsub|m,i>>, the regular remainder
  <math|R<rsub|m,i><rsup|<math-up|reg>>> has zero radial-jet Taylor
  coefficients through order<nbsp><math|d>; the forced remainders vanish
  outside their unmarked eligibility events. Their format and bounds are
  proved in Section<nbsp><reference|sec:partII-E>,
  <reference|lem:E2.2>\U<reference|lem:E2.2a>. We use the fixed decomposition
  selected there. It supplies the invertible terminal map of
  <reference|lem:E2.1>:

  <\equation*>
    \<b-up-x\><rsub|N><around|(|\<b-up-v\>|)>=\<b-up-v\>,<space|2em>\<b-up-x\><rsub|<reflevel|d>><around|(|\<b-up-v\>|)>=<math-ss|Z><rsub|N,p,d>\<b-up-v\><space|0.17em>.
  </equation*>

  For <math|N\<less\><reflevel|d>> choose invertible maps to define the
  insertions; transfer normalization is required only at and above the
  reference level.

  <\definition>
    <dueto|Renormalized insertions><label|def:D08> Put
    <math|\<cal-T\>=<big|sqcup><rsub|d\<geqslant\>0>V<rsub|d>> and define, at
    every cutoff,

    <\equation*>
      I<rsub|N,p><around|(|<around|(|d,\<b-up-c\>|)>,y;U|)>=O<rsup|<around|(|d|)>><rsub|N,p><around|(|\<b-up-c\>,y;U|)>=a<rsub|N><rsup|-d><localsection|d><around|[|<factorscale><rsub|t<rsub|N><rsup|-1>><math-ss|Z><rsub|N,p,d><rsup|-1>\<b-up-c\>|]><around|(|y;U|)><space|0.17em>.
    </equation*>

    This fixes the insertion along the trajectory. Its distinguished unit
    coefficient is <math|\<b-up-u\><rsub|d>=a<rsub|<reflevel|d>><rsup|d>*\<b-1\>>,
    whose insertion equals one for <math|N\<geqslant\><reflevel|d>>. The
    scaling <math|<factorscale><rsub|t>> counts factors, not engineering
    weight.
  </definition>

  The inverse terminal map makes the transferred coefficient equal to the
  prescribed<nbsp><math|\<b-up-c\>> at the reference level. Thus
  <math|\<b-up-c\>> is specified at the fixed physical scale
  <math|a<rsub|<reflevel|d>>>, in that level's lattice units. The factor
  <math|\<ell\><rsub|m><rsup|d>=<around|(|a<rsub|m>/a<rsub|m+1>|)><rsup|d>>
  uses the degree label of the whole space <math|V<rsub|d>>; the terminal map
  allows mixing between its engineering weights. The factor
  <math|a<rsub|N><rsup|-d>> converts the normalized lattice insertion to
  physical units.

  The unit identity follows from <math|\<b-up-x\><rsub|m>*<around|(|a<rsub|N><rsup|d>*\<b-1\>|)>=a<rsub|m><rsup|d>*\<b-1\>>,
  proved with the transfer symmetries in Section<nbsp><reference|sec:partII-E>,
  <reference|lem:E2.1a>. This explains why the coefficient giving the
  constant insertion is <math|a<rsub|<reflevel|d>><rsup|d>*\<b-1\>>, even
  though <math|V<rsub|d>> also contains polynomials of lower engineering
  weight.

  The bare couplings of MT and these insertions now specify one Wilson
  family. Each insertion is continuous, gauge invariant and local on its
  fixed stencil. MT at <math|m=N> gives the volume-uniform asymptotic slope
  <math|<slope>\<gtr\>0>. These are the lattice inputs to the continuum
  limits.

  <section|The continuum limit><label|sec:continuum>

  We first remove the lattice spacing at each fixed volume, then let the
  volume increase along one refinement. Throughout, the Wilson family and
  insertions are those of Section<nbsp><reference|sec:renormalization>; all
  couplings <math|\<beta\><rsub|N,p>> and insertion maps are chosen before
  the increasing sequence of volume indices is prescribed. Constants may
  depend on the fixed group, its realization, the penalty and the
  construction choices of Section<nbsp><reference|sec:constants>. Additional
  dependence is stated below.

  For positions in<nbsp><math|<around|(|<R><rsup|4>|)><rsup|n>>, set

  <\align*>
    <tformat|<table|<row|<cell|<Conf|n>>|<cell|=<around|{|x:x<rsub|i>\<ne\>x<rsub|j><text|
    for >i\<ne\>j|}>,>|<cell|<Gen|n>>|<cell|=<around|{|x:x<rsub|i><rsup|a>\<ne\>x<rsub|j><rsup|a><text|
    for >i\<ne\>j,a=1,\<ldots\>,4|}>,>>|<row|<cell|<NoHit|L|n>>|<cell|=<around|{|x:x<rsub|i>-x<rsub|j>\<nin\>L<Z><rsup|4><text|
    for >i\<ne\>j|}><space|0.17em>.>|<cell|>|<cell|>>>>
  </align*>

  The last domain excludes collisions on a torus of physical
  side<nbsp><math|L>. A separated test is a smooth function
  on<nbsp><math|<around|(|<R><rsup|4>|)><rsup|n>> with compact closed support
  in<nbsp><math|<Conf|n>>. It is <math|p>-admissible if its support lies
  in<nbsp><math|<around|(|<around|(|-L<rsub|p>/2,L<rsub|p>/2|)><rsup|4>|)><rsup|n>>.
  Write <math|<sepinf><around|(|x|)>=min<rsub|i\<ne\>j><around|\||x<rsub|i>-x<rsub|j>|\|><rsub|\<infty\>>>,
  with value<nbsp><math|+\<infty\>> for <math|n\<leqslant\>1>.

  For a finite list<nbsp><math|\<b-l\>> of pairs
  <math|<around|(|i,a|)>\<in\><around|{|1,\<ldots\>,n|}>\<times\><around|{|1,\<ldots\>,4|}>>,
  define

  <\equation*>
    \<Delta\><rsub|\<b-l\>>=<big|prod><rsub|<around|(|i,a|)>\<in\>\<b-l\>>a<rsub|N><rsup|-1>*<around|(|\<tau\><rsub|i,a>-1|)>,<space|2em>\<partial\><rsub|\<b-l\>>=<big|prod><rsub|<around|(|i,a|)>\<in\>\<b-l\>>\<partial\><rsub|x<rsub|i><rsup|a>><space|0.17em>.
  </equation*>

  Here <math|\<tau\><rsub|i,a>> shifts slot<nbsp><math|i> forward by one
  lattice link. These differences measure derivatives in physical units.
  Torus separation is the minimum, over distinct slots, of
  <math|min<rsub|z\<in\>L<rsub|p><Z><rsup|4>><around|\||<wide|y|^><rsub|i>-<wide|y|^><rsub|j>+z|\|><rsub|\<infty\>>>,
  with value<nbsp><math|+\<infty\>> for <math|n\<leqslant\>1>. An element
  <math|v<rsub|i>=<around|(|d<rsub|i>,c<rsub|i>|)>\<in\>\<cal-T\>> retains
  both the polynomial label and its degree; we call it a token.

  Marked transfers along the trajectories of Theorem<nbsp><reference|prop:MT>
  give bounds independent of the volume. They control compactness for each
  fixed list of fields and derivatives.

  <\proposition>
    <dueto|Uniform difference bounds><label|prop:UB> For every
    <math|v\<in\>\<cal-T\><rsup|n>>, finite difference
    list<nbsp><math|\<b-l\>> and <math|r\<gtr\>0>, there are
    <math|B*<around|(|v,\<b-l\>,r|)>\<geqslant\>0> and
    <math|N<rsub|0><around|(|v,\<b-l\>,r|)>> such that, for every
    <math|N\<geqslant\>N<rsub|0>>, every<nbsp><math|p> and every lattice
    tuple of torus separation at least<nbsp><math|r>,

    <\equation*>
      <around|\||\<Delta\><rsub|\<b-l\>><latmoment><rsub|N,p><around|(|v;y|)>|\|>\<leqslant\>B<space|0.17em>.
    </equation*>
  </proposition>

  The proof is in Section<nbsp><reference|sec:partII-E>,
  <reference|lem:E2.2>\U<reference|lem:E2.4>. Marked transfers control
  insertion coefficients and remainders. The chessboard estimate reflects an
  insertion into neighbouring blocks and bounds a mixed correlation by the
  product of the resulting reflected moments. Choosing an intermediate level
  whose physical blocks fit below the prescribed separation permits its use
  for the differentiated insertions. The reflected-moment constant in
  <reference|lem:E2.3> is chosen before that level, although its cutoff
  threshold may depend on it. No common bound or cutoff threshold is asserted
  over unbounded labels or difference orders.

  The common endpoint can be varied analytically. More precisely,
  <reference|lem:E1.3> supplies a width <math|w<rsub|<math-up|tun>>\<gtr\>0>,
  independent of<nbsp><math|N,p>, such that for each
  <math|s\<in\><around|[|-1,1|]>> exactly one bare coupling
  <math|\<beta\><rsub|N,p><around|(|s|)>> within the specified recursion
  reaches <math|<wide|\<beta\>|\<bar\>>+w<rsub|<math-up|tun>>*s> at level
  zero. It equals <math|\<beta\><rsub|N,p>> at <math|s=0> and extends
  holomorphically to <math|<around|\||s|\|>\<less\>1>.

  This tuning gives convergence along the full ultraviolet sequence. The
  limiting kernel is periodic in each position and smooth away from periodic
  collisions, including configurations where positions share some
  coordinates.

  <\theorem>
    <dueto|Fixed-volume limit><label|prop:UV><label|thm:UV> For every
    <math|p,n> and <math|v\<in\>\<cal-T\><rsup|n>>, there is
    <math|M<rsup|<math-up|UV>><rsub|p,v>\<in\>C<rsup|\<infty\>><around|(|<NoHit|L<rsub|p>|n>|)>>
    such that, for every finite<nbsp><math|\<b-l\>> and every
    <math|p>-admissible separated test<nbsp><math|f>,

    <\equation*>
      lim<rsub|N\<to\>\<infty\>> a<rsub|N><rsup|4*n>*<big|sum><rsub|y\<in\>\<Lambda\><rsub|L<rsub|p>*D<rsub|N>><rsup|n>>f<around|(|<wide|y|^>|)>*\<Delta\><rsub|\<b-l\>><latmoment><rsub|N,p><around|(|v;y|)>=<big|int>f<around|(|x|)>*\<partial\><rsub|\<b-l\>>*M<rsup|<math-up|UV>><rsub|p,v><around|(|x|)>*<space|0.17em>d*x<space|0.17em>.
    </equation*>
  </theorem>

  For <math|\<b-l\>=\<varnothing\>>, the left side is
  <math|lim<rsub|N><latsmear><rsub|N,p><around|(|v;f|)>>. Thus the inner
  limits in Definition<nbsp><reference|def:D09> below exist at every
  admissible volume. Admissibility places the test support
  inside<nbsp><math|<NoHit|L<rsub|p>|n>>, so the displayed integrand is
  compactly supported and integrable.

  The proof is in Section<nbsp><reference|sec:partII-E>,
  <reference|lem:E3.1>\U<reference|lem:E3.2>. At a fixed intermediate level,
  the vacuum scalar cancels between the correlation numerator and its
  partition function. Analytic tuning and the fixed-level transfer estimates
  make the normalized integrals of the transferred insertions Cauchy
  as<nbsp><math|N> increases. For insertion sites obtained by repeated
  blocking from common finer sites, comparison with the original correlations
  has error bounded by a constant times<nbsp><math|e<rsup|-B<rsub|m>/64>>.
  First choose the intermediate level<nbsp><math|m>, then take both cutoffs
  large; the triangle inequality gives the Cauchy property for the original
  correlations. UB extends convergence from the dense set of these sites and
  identifies every derivative. <reference|lem:E3.2> also treats multilinear
  interpolants evaluated at any sequence <math|x<rsub|N>\<to\>x\<in\><NoHit|L<rsub|p>|n>>,
  including when the points cross a boundary of the chosen fundamental cell.
  Thresholds may depend on<nbsp><math|p>.

  The following definition keeps the order of limits explicit. Write
  <math|C<rsub|p><rsup|<math-up|UV>>*<around|(|v;f|)>> for a fixed-volume
  smeared limit.

  <\definition>
    <dueto|Ordered convergence><label|def:D09> A Wilson family converges
    to<nbsp><math|K> along<nbsp><math|P:<N>\<to\><N>> if, for every
    <math|n,v> and separated test<nbsp><math|f>, the test is eventually
    <math|P<around|(|k|)>>-admissible and there are numbers
    <math|C<rsub|p><rsup|<math-up|UV>>*<around|(|v;f|)>> with

    <\align*>
      <tformat|<table|<row|<cell|<latsmear><rsub|N,p><around|(|v;f|)>>|<cell|\<longrightarrow\>C<rsub|p><rsup|<math-up|UV>>*<around|(|v;f|)>*<space|1em><around|(|N\<to\>\<infty\>|)>>|<cell|>|<cell|<text|at
      every admissible >p,>>|<row|<cell|C<rsub|P<around|(|k|)>><rsup|<math-up|UV>>*<around|(|v;f|)>>|<cell|\<longrightarrow\><big|int>f<around|(|x|)>*K<rsub|n><around|(|v;x|)>*<space|0.17em>d*x<space|0.17em>.>|<cell|>|<cell|>>>>
    </align*>

    Values at inadmissible volumes are unrestricted.
  </definition>

  A table assigns to each degree list <math|<around|(|d<rsub|i>|)><rsub|i=1><rsup|n>>
  and <math|x\<in\><Conf|n>> a complex multilinear function
  <math|S<rsub|n>*<around|(|c;x|)>> of <math|c<rsub|i>\<in\>V<rsub|d<rsub|i>>>.
  For <math|v<rsub|i>=<around|(|d<rsub|i>,c<rsub|i>|)>> write also
  <math|S<rsub|n>*<around|(|v;x|)>>, and for the word
  <math|w=<around|(|v<rsub|i><around|(|x<rsub|i>|)>|)><rsub|i=1><rsup|n>>
  write <math|S<around|(|w|)>>. Conjugation and the signed permutation action
  are those of the polynomial labels; a unit slot carries the distinguished
  coefficient <math|\<b-up-u\><rsub|d>=a<rsub|<reflevel|d>><rsup|d>*\<b-1\>>
  of Definition<nbsp><reference|def:D08>. The following conditions specify
  the Euclidean properties of the table to be constructed.

  <\definition>
    <dueto|E1--E3. Euclidean symmetries><label|def:E1-E3> E1 is simultaneous
    permutation symmetry, <math|S<rsub|0>=1> and deletion of a slot
    carrying<nbsp><math|\<b-up-u\><rsub|d>>. E2 is

    <\equation*>
      S<rsub|n>*<around|(|h*c;h*x|)>=S<rsub|n>*<around|(|c;x|)>*<space|1em><around|(|h\<in\><hypercubic>|)>,<space|2em>S<rsub|n>*<around|(|<wide|c|\<bar\>>;x|)>=<wide|S<rsub|n>*<around|(|c;x|)>|\<bar\>><space|0.17em>.
    </equation*>

    E3 is translation invariance.
  </definition>

  A word is positive-side for axis<nbsp><math|a> when all its positions have
  positive <math|a>th coordinate. The product of words concatenates their
  lists, so reflection positivity tests a correlation with one reflected
  group of insertions.

  <\definition>
    <dueto|E4--E5. Reflection positivity><label|def:E4-E5> E4 requires, for
    every axis<nbsp><math|a>, positive-side separated
    words<nbsp><math|w<rsub|i>> and complex
    coefficients<nbsp><math|z<rsub|i>>,

    <\equation*>
      <big|sum><rsub|i,j><wide|z|\<bar\>><rsub|i>*z<rsub|j>*S*<around|(|<math-ss|s><rsub|a><rsup|<math-up|refl>>w<rsub|i><rsup|\<ast\>>*w<rsub|j>|)>\<geqslant\>0<space|0.17em>.
    </equation*>

    The star reverses the word and applies conjugation to its labels;
    <math|<math-ss|s><rsub|a><rsup|<math-up|refl>>> reflects positions and
    acts on labels through<nbsp><math|<hypercubic>>. E5 requires the same
    positivity for finite sums of words smeared against joint smooth
    compactly supported tests on positive-side separated configurations, and
    absolute integrability of every mixed pairing.
  </definition>

  For a fixed label list, <math|D<rsub|x><rsup|k>> denotes the <math|k>th
  Fréchet derivative in the positions, with the product Euclidean norm. The
  next bound controls approach to collision sets uniformly over translations
  and over configurations with large diameter.

  <\definition>
    <dueto|E6--E7. Euclidean regularity><label|def:E6-E7> E6 is smoothness
    on<nbsp><math|<Conf|n>>. E7 requires, for each
    <math|n,d<rsub|i>,c<rsub|i>,k>, constants
    <math|C*<around|(|n,d,c,k|)>\<geqslant\>0> and an integer
    <math|A*<around|(|n,d,c,k|)>\<geqslant\>0> such that

    <\equation*>
      <around|\<\|\|\>|D<rsub|x><rsup|k>*S<rsub|n>*<around|(|c;x|)>|\<\|\|\>>\<leqslant\>C*r<rsup|-A>*<space|2em><around|(|0\<less\>r\<leqslant\>1,<sepinf><around|(|x|)>\<geqslant\>r|)><space|0.17em>.
    </equation*>
  </definition>

  One volume refinement will serve every field and all subsequent
  constructions.

  <\theorem>
    <dueto|Infinite-volume limit><label|prop:IV><label|thm:IV> For every
    strictly increasing <math|<math-ss|p>:<N>\<to\><N>>, there are a strictly
    increasing <math|<math-ss|q>:<N>\<to\><N>> and a multilinear
    table<nbsp><math|S> such that the Wilson family converges
    to<nbsp><math|S> along <math|P=<math-ss|p>\<circ\><math-ss|q>> in the
    sense of Definition<nbsp><reference|def:D09>. The table satisfies E1\UE7.
  </theorem>

  The proof is in Section<nbsp><reference|sec:partII-F>,
  <reference|lem:F1>\U<reference|lem:F3>. The extraction first gives volume
  limits on<nbsp><math|<Gen|n>>; the corrected difference estimates of
  <reference|lem:F3> extend them smoothly to<nbsp><math|<Conf|n>> (E6) and
  give the power bounds E7. Uniqueness identifies each extracted fixed-volume
  kernel with<nbsp><math|M<rsup|<math-up|UV>><rsub|p,v>>, retaining UV's full
  inner limit at every admissible volume. Lattice reflection positivity for
  finite sums of smeared words passes to the limit, giving E5; E4 follows
  from E5 together with E1 and E6. The same extraction fixes the corrected
  coefficient maps of <reference|lem:F2>, which adjust labels of different
  degrees so their correlations agree or differ by a positional derivative.
  Ordered convergence to<nbsp><math|S> persists along every further volume
  refinement. No uniqueness of the infinite-volume limit is asserted; fix
  <math|<math-ss|p>>, its refinement<nbsp><math|<math-ss|q>> and the
  resulting table<nbsp><math|S> from now on.

  Write <math|v<around|(|x|)>=<around|(|v<rsub|1><around|(|x<rsub|1>|)>,\<ldots\>,v<rsub|n><around|(|x<rsub|n>|)>|)>>
  for a spectator word. Two polynomial labels represent the same observable
  when no separated correlation distinguishes them.

  <\definition>
    <dueto|Observable fields><label|def:D10> Set

    <\align*>
      <tformat|<table|<row|<cell|<nullspace|d><around|(|S|)>>|<cell|=<around*|{|c\<in\>V<rsub|d>:S<rsub|n+1>*<around|(|c<around|(|x<rsub|0>|)>,v<around|(|x|)>|)>=0|\<nobracket\>>>>|<row|<cell|>|<cell|<around*|\<nobracket\>|<space|7em><text|for
      every >n,v<text| and >x\<in\><Conf|n+1>|}>,>>|<row|<cell|F<rsub|d>>|<cell|=V<rsub|d>/<nullspace|d><around|(|S|)>,<space|2em><wide|<around|[|c|]>|\<bar\>>=<around|[|<wide|c|\<bar\>>|]>,<space|2em>h<around|[|c|]>=<around|[|h*c|]>*<space|1em><around|(|h\<in\><hypercubic>|)>,>>|<row|<cell|\<iota\><rsub|d><around|[|c|]><around|(|v;x|)>>|<cell|=S<rsub|n+1>*<around|(|c<around|(|x<rsub|0>|)>,v<around|(|x|)>|)>,<space|2em>\<cal-L\>=<math-up|span><big|cup><rsub|d>\<iota\><rsub|d>*F<rsub|d><space|0.17em>.>>>>
    </align*>

    The maps<nbsp><math|\<iota\><rsub|d>> give the responses to all
    spectators. Choose conjugation-invariant quotient norms.
  </definition>

  E2 makes <math|<nullspace|d><around|(|S|)>> invariant under conjugation
  and<nbsp><math|<hypercubic>>, so both displayed actions
  on<nbsp><math|F<rsub|d>> are well defined. Permutation symmetry makes
  correlations independent of representatives in every slot: for
  <math|\<b-A\>=<around|(|<around|[|c<rsub|1>|]>,\<ldots\>,<around|[|c<rsub|n>|]>|)>>,
  put <math|S<rsub|n>*<around|(|\<b-A\>;x|)>=S<rsub|n>*<around|(|c;x|)>>. The
  unit field is <math|<unitfield|d>=<around|[|\<b-up-u\><rsub|d>|]>>, with
  the normalization of Definition<nbsp><reference|def:D08>.

  To state the dimension of<nbsp><math|F<rsub|d>>, introduce the free
  comparison space.

  <\definition>
    <dueto|Free Maxwell comparison><label|def:D11> For <math|<dimG>>
    independent colours, take

    <\equation*>
      \<bbb-E\>*A<rsub|a><rsup|\<alpha\>><around|(|x|)>*A<rsub|b><rsup|\<beta\>><around|(|y|)>=\<delta\><rsub|\<alpha\>*\<beta\>>*\<delta\><rsub|a*b>*\<Gamma\>*<around|(|x-y|)>,<space|2em>\<Gamma\><around|(|x|)>=<frac|1|4*\<pi\><rsup|2><around|\||x|\|><rsup|2>>,<space|2em>F<rsub|a*b>=\<partial\><rsub|a>*A<rsub|b>-\<partial\><rsub|b>*A<rsub|a><space|0.17em>.
    </equation*>

    Let <math|<maxwellspace|d>> consist of complex
    <math|<math-up|Ad><around|(|G|)>>-invariant Wick polynomials in curvature
    jets of weight at most<nbsp><math|d>, modulo antisymmetry, the linear
    Bianchi identities and <math|<big|sum><rsub|a>\<partial\><rsub|a>*F<rsub|a*b>=0>.
    Their separated Wick correlations are<nbsp><math|<maxwellcorr>>.
  </definition>

  The constant one is the Maxwell unit, coefficient conjugation gives its
  real structure, and inclusions retain the same polynomial at a larger
  weight bound. Free field differentiation is
  <math|\<partial\><rsub|a><rsup|<math-up|Max>>(:P:)=:\<partial\><rsub|a>*P>:
  and the natural rotation action is <math|R<rsub|d><rsup|<math-up|Max>><around|(|h|)>(:P:)=:h*P>:,
  where the jet action is determined by

  <\equation*>
    h*F<rsub|a*b><rsup|\<alpha\>>=<big|sum><rsub|i,j>h<rsub|i*a>*h<rsub|j*b>*F<rsub|i*j><rsup|\<alpha\>>,<space|2em>h*\<partial\><rsub|a>=<big|sum><rsub|i>h<rsub|i*a>*\<partial\><rsub|i>*h*<space|1em><around|(|h\<in\>O<around|(|4|)>|)><space|0.17em>.
  </equation*>

  These operations preserve the defining relations and give the structures
  used in the comparison below.

  The quotient fields admit inclusions that preserve correlations and
  derivatives that act as positional derivatives. Their dimensions equal
  those of the Maxwell spaces.

  <\proposition>
    <dueto|Field calculus><label|prop:FC> For the table<nbsp><math|S> of
    Theorem<nbsp><reference|prop:IV>, there are complex linear maps
    <math|\<jmath\><rsub|d,e>:F<rsub|d>\<to\>F<rsub|e>> for
    <math|d\<leqslant\>e> and <math|\<partial\><rsub|a>:F<rsub|d>\<to\>F<rsub|d+1>>
    for every <math|d,a> such that, for every <math|A\<in\>F<rsub|d>>,

    <\gather*>
      <tformat|<table|<row|<cell|\<iota\><rsub|e>\<circ\>\<jmath\><rsub|d,e>=\<iota\><rsub|d>,<space|2em>\<iota\><rsub|d+1>*<around|(|\<partial\><rsub|a>*A|)>=\<partial\><rsub|x<rsub|0><rsup|a>>*\<iota\><rsub|d><around|(|A|)>,>>|<row|<cell|dim<rsub|<C>>F<rsub|d>=dim<rsub|<C>><maxwellspace|d><space|0.17em>.>>>>
    </gather*>
  </proposition>

  The proof is in Section<nbsp><reference|sec:partII-F>, <reference|lem:F2>,
  using the corrected coefficient maps chosen with<nbsp><math|S>. Each
  <math|\<iota\><rsub|d>> is injective by
  Definition<nbsp><reference|def:D10>, so the inclusions are unique and
  injective, compose as <math|\<jmath\><rsub|e,f>*\<jmath\><rsub|d,e>=\<jmath\><rsub|d,f>>
  and satisfy <math|\<jmath\><rsub|d,d>=<math-up|id>>. By E1 they carry
  <math|<unitfield|d>> to<nbsp><math|<unitfield|e>>. Their images are nested,
  hence <math|\<cal-L\>=<big|cup><rsub|d>\<iota\><rsub|d>*F<rsub|d>>. These
  inclusions are characterized by correlations; they are not defined by the
  polynomial embedding <math|V<rsub|d>\<subset\>V<rsub|e>>, since
  <math|<around|(|d,c|)>> and <math|<around|(|e,c|)>> have different
  insertion normalizations.

  Permutation symmetry gives, for every arity<nbsp><math|n>, degree list
  <math|<around|(|d<rsub|i>|)>>, <math|\<b-A\>\<in\><big|prod><rsub|i=1><rsup|n>F<rsub|d<rsub|i>>>,
  <math|x\<in\><Conf|n>>, slot<nbsp><math|i> and axis<nbsp><math|a>,

  <\equation*>
    \<partial\><rsub|x<rsub|i><rsup|a>>*S<rsub|n>*<around|(|\<b-A\>;x|)>=S<rsub|n>*<around|(|A<rsub|1>,\<ldots\>,\<partial\><rsub|a>*A<rsub|i>,\<ldots\>,A<rsub|n>;x|)><space|0.17em>.
  </equation*>

  E2 and the injectivity of the response maps imply that inclusions and
  derivatives commute with conjugation, that inclusions commute
  with<nbsp><math|<hypercubic>>, and that

  <\equation*>
    h*\<partial\><rsub|a>=<big|sum><rsub|b>h<rsub|b*a>*\<partial\><rsub|b>*h*<space|2em><around|(|h\<in\><hypercubic>|)><space|0.17em>.
  </equation*>

  <section|Stress and rotations><label|sec:stress>

  We compare the fields of Section<nbsp><reference|sec:continuum> with
  Maxwell fields at small distances, then normalize a conserved tensor by its
  shell fluxes. The volume refinement and the table<nbsp><math|S> remain
  fixed throughout. Subsequences taken below concern only comparison radii.

  The comparison permits the basis of local fields to vary with the radius.
  This accommodates mixing among fields in a fixed finite-dimensional space.

  <\definition>
    <dueto|Scaling frames><label|def:D12> A scaling sequence consists of
    <math|r<rsub|k>\<gtr\>0>, <math|r<rsub|k>\<to\>0>, and complex linear
    isomorphisms

    <\equation*>
      <scaleframe|k|d>:<maxwellspace|d>\<longrightarrow\>F<rsub|d><space|0.17em>.
    </equation*>

    It is stable if, for every <math|D\<in\><N>>, these maps eventually
    preserve conjugation, <math|<hypercubic>>, units and inclusions exactly
    in all degrees <math|d\<leqslant\>e\<leqslant\>D>. Scaling dimensions are
    included in the maps: an ordinary comparison insertion is
    <math|<scaleframe|k|d>u> at<nbsp><math|r<rsub|k>*x>, with no further
    factor<nbsp><math|r<rsub|k><rsup|d>>.
  </definition>

  The frames compare fields without identifying their null ideals.

  After rescaling positions and choosing these frames, the interacting
  correlations approach their Maxwell counterparts. The first comparison
  measures the error by its integral on separated compact sets; one sequence
  works for every fixed list of fields.

  <\proposition>
    <dueto|Maxwell comparison><label|prop:MC> There is one stable scaling
    sequence such that, for every arity<nbsp><math|n>, degree list
    <math|<around|(|d<rsub|i>|)>> and <math|u<rsub|i>\<in\><maxwellspace|d<rsub|i>>>,

    <\equation*>
      S<rsub|n>*<around|(|<scaleframe|k|d<rsub|i>>u<rsub|i>;r<rsub|k><space|0.17em>\<cdot\><space|0.17em>|)>\<longrightarrow\><maxwellcorr><rsub|n><around|(|u;\<cdummy\>|)><space|1em><text|in
      >L<rsup|1><rsub|<math-up|loc>><around|(|<Conf|n>|)><space|0.17em>.
    </equation*>
  </proposition>

  The proof is in Section<nbsp><reference|sec:partII-G>,
  <reference|lem:G2.1>. The lattice comparison stops near the requested
  physical scale and compares the resulting correlations with the free
  Gaussian ones. Finitely many separating correlations make the comparison
  maps injective; the upper bound <math|dim<rsub|<C>>F<rsub|d>\<leqslant\>dim<rsub|<C>><maxwellspace|d>>
  from Proposition<nbsp><reference|prop:FC> makes them isomorphisms.
  Finite-dimensional corrections impose the eventual equalities of
  Definition<nbsp><reference|def:D12>.

  The integral norm retains uniformity over tests. Indeed, write
  <math|g<rsub|k><around|(|x|)>> for the difference of the two smooth kernels
  in Proposition<nbsp><reference|prop:MC>. For compact
  <math|\<cal-K\>\<subset\><math-up|int><space|0.17em>\<cal-K\><rprime|'>\<subset\>\<cal-K\><rprime|'>\<subset\><Conf|n>>,
  smooth approximation to <math|<wide|g<rsub|k>|\<bar\>>/<around|\||g<rsub|k>|\|>>
  with a cutoff equal to one on<nbsp><math|\<cal-K\>> gives

  <\equation*>
    <big|int><rsub|\<cal-K\>><around|\||g<rsub|k><around|(|x|)>|\|>*<space|0.17em>d*x\<leqslant\>sup<rsub|<stack|<tformat|<table|<row|<cell|f\<in\>C<rsub|c><rsup|\<infty\>>,<math-up|supp><space|0.17em>f\<subset\>\<cal-K\><rprime|'>>>|<row|<cell|<around|\<\|\|\>|f|\<\|\|\>><rsub|\<infty\>>\<leqslant\>1>>>>>><around*|\||<big|int>f<around|(|x|)>*g<rsub|k><around|(|x|)>*<space|0.17em>d*x|\|><space|0.17em>.
  </equation*>

  Conversely, the tested error on<nbsp><math|\<cal-K\>> is bounded by
  <math|<around|\<\|\|\>|f|\<\|\|\>><rsub|\<infty\>>*<big|int><rsub|\<cal-K\>><around|\||g<rsub|k>|\|>>.
  Thus local integral convergence is equivalent to convergence uniform over
  the sup-norm unit ball of tests on each fixed compact set. This comparison
  is used to construct and normalize the conserved current before the stress
  tensor is available.

  To read translation and angular charge, integrate a conserved symmetric
  tensor through a shell surrounding just one insertion. Let
  <math|A\<in\>F<rsub|d>>, let <math|\<b-B\>> be a list of<nbsp><math|n>
  spectator fields at<nbsp><math|x>, and take
  <math|<around|(|x<rsub|0>,x|)>\<in\><Conf|n+1>>.

  <\definition>
    <dueto|Shell fluxes><label|def:D13> For
    <math|J<rsub|a*b>=J<rsub|b*a>\<in\>F<rsub|4>> with
    <math|<big|sum><rsub|a>\<partial\><rsub|a>*J<rsub|a*b>=0> and
    <math|K<rsub|<math-up|rot>>\<in\><with|math-font|Euler|s*o><around|(|4|)>>,
    choose a real shell cutoff <math|\<chi\>\<in\>C<rsub|c><rsup|\<infty\>><around|(|<R><rsup|4>|)>>
    equal to one near<nbsp><math|x<rsub|0>> and supported away from
    spectators. Define

    <\align*>
      <tformat|<table|<row|<cell|\<cal-P\><rsub|b><rsup|J>>|<cell|=-<big|sum><rsub|a><big|int>\<partial\><rsub|a>*\<chi\><around|(|y|)>*S*<around|(|J<rsub|a*b><around|(|y|)>,A<around|(|x<rsub|0>|)>,\<b-B\><around|(|x|)>|)>*<space|0.17em>d*y,>>|<row|<cell|\<cal-Y\><rsub|K<rsub|<math-up|rot>>><rsup|J>>|<cell|=-<big|sum><rsub|a,b><big|int>\<partial\><rsub|a>*\<chi\><around|(|y|)>*<around|(|K<rsub|<math-up|rot>>*<around|(|y-x<rsub|0>|)>|)><rsub|b>*S*<around|(|J<rsub|a*b><around|(|y|)>,A<around|(|x<rsub|0>|)>,\<b-B\><around|(|x|)>|)>*<space|0.17em>d*y<space|0.17em>.>>>>
    </align*>

    These integrals measure the flux without meeting an insertion point.
  </definition>

  The fluxes are independent of the shell cutoff. For two choices, their
  difference vanishes near every insertion; integration by parts and
  Proposition<nbsp><reference|prop:FC> remove the divergence term. In the
  angular flux the additional term is <math|<big|sum><rsub|a,b><around|(|K<rsub|<math-up|rot>>|)><rsub|b*a>*J<rsub|a*b>=0>,
  since <math|K<rsub|<math-up|rot>>> is skew-symmetric and<nbsp><math|J> is
  symmetric.

  A field is real when it is fixed by conjugation. A family
  <math|J<rsub|a*b>\<in\>F<rsub|4>> is <math|<hypercubic>>-tensorial when

  <\equation*>
    h*J<rsub|a*b>=<big|sum><rsub|i,j>h<rsub|i*a>*h<rsub|j*b>*J<rsub|i*j>*<space|2em><around|(|h\<in\><hypercubic>|)><space|0.17em>.
  </equation*>

  It is conserved when<nbsp><math|<big|sum><rsub|a>\<partial\><rsub|a>*J<rsub|a*b>=0>
  in<nbsp><math|F<rsub|5>> for every<nbsp><math|b>, and centered when every
  component has zero one-point function. Section<nbsp><reference|sec:partII-G>,
  <reference|lem:G2.2> proves that the centered real symmetric
  <math|<hypercubic>>-tensorial conserved tensors of degree four form a real
  line. Along a refinement of the sequence in
  Proposition<nbsp><reference|prop:MC>, positive multiples of the rescaled
  nonzero current approach the free stress line in the degree-four frames.
  This identifies the current needed for the shell laws.

  For a nonzero member<nbsp><math|J> of this line, <reference|lem:G2.3>
  constructs complex linear charge maps <math|<math-ss|p><rsub|b>:F<rsub|d>\<to\>F<rsub|d+1>>
  and <math|<math-ss|Y><rsub|K<rsub|<math-up|rot>>>:F<rsub|d>\<to\>F<rsub|d>>
  satisfying, for every degree, field, spectator list, separated
  configuration and shell cutoff<nbsp><math|\<chi\>>,

  <\equation*>
    \<cal-P\><rsub|b><rsup|J>=S*<around|(|<around|(|<math-ss|p><rsub|b>A|)><around|(|x<rsub|0>|)>,\<b-B\><around|(|x|)>|)>,<space|2em>\<cal-Y\><rsub|K<rsub|<math-up|rot>>><rsup|J>=S*<around|(|<around|(|<math-ss|Y><rsub|K<rsub|<math-up|rot>>>A|)><around|(|x<rsub|0>|)>,\<b-B\><around|(|x|)>|)><space|0.17em>.
  </equation*>

  The angular map is real linear in<nbsp><math|K<rsub|<math-up|rot>>>.

  Section<nbsp><reference|sec:partII-G>, <reference|lem:G3.1> identifies
  these maps with differentiation and rotations. It constructs continuous
  complex linear representations <math|R<rsub|d>>
  of<nbsp><math|O<around|(|4|)>>, extending<nbsp><math|<hypercubic>>, fixing
  units and commuting with conjugation and inclusions. For a real
  <math|c<rsub|\<star\>>\<ne\>0> common to every degree, the generators and
  charge maps satisfy

  <\equation*>
    <math-ss|L><rsub|d><around|(|K<rsub|<math-up|rot>>|)>=<around*|\<nobracket\>|<frac|d|d*t>*R<rsub|d><around|(|e<rsup|t*K<rsub|<math-up|rot>>>|)>|\|><rsub|t=0>,<space|2em><math-ss|p><rsub|b>=c<rsub|\<star\>>*\<partial\><rsub|b>,<space|2em><math-ss|Y><rsub|K<rsub|<math-up|rot>>>=c<rsub|\<star\>><math-ss|L><rsub|d><around|(|K<rsub|<math-up|rot>>|)><space|0.17em>.
  </equation*>

  The proof controls exterior angular flux before extending the rotation
  identity to all separated configurations. The resulting table has full
  covariance: for every arity<nbsp><math|n>, degree list
  <math|<around|(|d<rsub|i>|)>>, <math|\<b-A\>\<in\><big|prod><rsub|i>F<rsub|d<rsub|i>>>,
  <math|x\<in\><Conf|n>> and <math|h\<in\>O<around|(|4|)>>,
  <reference|lem:G3.2> gives

  <\equation*>
    S<rsub|n>*<around|(|R<rsub|d<rsub|i>><around|(|h|)>*A<rsub|i>;h*x|)>=S<rsub|n>*<around|(|\<b-A\>;x|)><space|0.17em>.
  </equation*>

  For these representations, <math|O<around|(|4|)>>-tensorial means
  <math|R<rsub|4><around|(|h|)>*J<rsub|a*b>=<big|sum><rsub|i,j>h<rsub|i*a>*h<rsub|j*b>*J<rsub|i*j>>
  for every<nbsp><math|h\<in\>O<around|(|4|)>>, with the same index
  convention as the discrete action above.

  The common constant<nbsp><math|c<rsub|\<star\>>> fixes the normalization of
  the stress tensor by its action on fields.

  <\theorem>
    <dueto|Stress tensor><label|prop:ST><label|thm:ST> There is a real
    symmetric <math|O<around|(|4|)>>-tensorial family
    <math|T<rsub|a*b>\<in\>F<rsub|4>> with
    <math|<big|sum><rsub|a>\<partial\><rsub|a>*T<rsub|a*b>=0> such that, for
    every degree, field, spectator list, separated configuration and shell
    cutoff of Definition<nbsp><reference|def:D13>, every<nbsp><math|b> and
    every <math|K<rsub|<math-up|rot>>\<in\><with|math-font|Euler|s*o><around|(|4|)>>,

    <\equation*>
      \<cal-P\><rsub|b><rsup|T>=\<partial\><rsub|x<rsub|0><rsup|b>>*S*<around|(|A<around|(|x<rsub|0>|)>,\<b-B\><around|(|x|)>|)>,<space|2em>\<cal-Y\><rsub|K<rsub|<math-up|rot>>><rsup|T>=S*<around|(|<around|(|<math-ss|L><rsub|d><around|(|K<rsub|<math-up|rot>>|)>*A|)><around|(|x<rsub|0>|)>,\<b-B\><around|(|x|)>|)><space|0.17em>.
    </equation*>
  </theorem>

  The proof is in Section<nbsp><reference|sec:partII-G>,
  <reference|lem:G3.1>\U<reference|lem:G3.2>. Divide the
  current<nbsp><math|J> by<nbsp><math|c<rsub|\<star\>>> and average its
  tensor transform over<nbsp><math|O<around|(|4|)>> with probability Haar
  measure. Covariance and the transformation laws for derivatives and
  generators give the same shell actions for each transformed current;
  integrating these identities preserves both actions. Symmetry, reality,
  centering and conservation also pass through this finite-dimensional
  integral. Fix this averaged normalized tensor for all subsequent uses; it
  is centered, since <math|J> is centered and <math|R<rsub|4>> preserves zero
  one-point values.

  Write <math|<math-ss|L><rsub|d><rsup|<math-up|Max>><around|(|K<rsub|<math-up|rot>>|)>=<around*|\<nobracket\>|<frac|d|d*t>*R<rsub|d><rsup|<math-up|Max>><around|(|e<rsup|t*K<rsub|<math-up|rot>>>|)>|\|><rsub|t=0>>
  for the free rotation generators. The free
  stress<nbsp><math|<maxwellstress>> is normalized by the same shell laws,
  with <math|\<partial\><rsub|a><rsup|<math-up|Max>>> and
  <math|<math-ss|L><rsub|d><rsup|<math-up|Max>>>, in
  <reference|sec:partII-G.1>. Their sign gives

  <\equation*>
    <maxwellstress><rsub|a*b>=-<big|sum><rsub|c,\<alpha\>>:F<rsub|a*c><rsup|\<alpha\>>*F<rsub|b*c><rsup|\<alpha\>>:+<frac|\<delta\><rsub|a*b>|4>*<big|sum><rsub|i,j,\<alpha\>>:F<rsub|i*j><rsup|\<alpha\>>*F<rsub|i*j><rsup|\<alpha\>>:<space|0.17em>.
  </equation*>

  The final comparison includes any chosen stress insertions. For a free list
  <math|u<rsub|1>,\<ldots\>,u<rsub|n>> with
  <math|u<rsub|i>\<in\><maxwellspace|d<rsub|i>>>, a stress-slot choice is a
  subset <math|I\<subset\><around|{|1,\<ldots\>,n|}>> with component pairs
  <math|<around|(|a<rsub|i>,b<rsub|i>|)>> for <math|i\<in\>I>. Put

  <\equation*>
    A<rsub|i><rsup|0>=<choice|<tformat|<table|<row|<cell|<maxwellstress><rsub|a<rsub|i>*b<rsub|i>>,>|<cell|i\<in\>I,>>|<row|<cell|u<rsub|i>,>|<cell|i\<nin\>I.>>>>>
  </equation*>

  The shell laws fix the stress normalization, so its comparison insertion
  needs only the engineering factor<nbsp><math|r<rsub|k><rsup|4>>. In the
  next limit <math|D<rsub|x><rsup|j>> differentiates the whole function
  <math|x\<mapsto\>S<rsub|n>*<around|(|\<b-A\><rsub|k>;r<rsub|k>*x|)>>,
  including the rescaled positions.

  <\proposition>
    <dueto|Differentiated short-distance comparison><label|prop:SC> There is
    one stable scaling sequence such that, for every fixed free list and
    stress-slot choice, every derivative order<nbsp><math|j> and compact
    <math|\<cal-K\>\<subset\><Conf|n>>, with
    <math|A<rsub|k,i>=r<rsub|k><rsup|4>*T<rsub|a<rsub|i>*b<rsub|i>>>
    on<nbsp><math|I> for the fixed tensor of Theorem<nbsp><reference|prop:ST>
    and <math|A<rsub|k,i>=<scaleframe|k|d<rsub|i>>u<rsub|i>> elsewhere,

    <\equation*>
      D<rsub|x><rsup|j>*S<rsub|n>*<around|(|\<b-A\><rsub|k>;r<rsub|k>*x|)>\<longrightarrow\>D<rsub|x><rsup|j><maxwellcorr><rsub|n><around|(|\<b-A\><rsup|0>;x|)><space|1em><text|uniformly
      on >\<cal-K\><space|0.17em>.
    </equation*>
  </proposition>

  The proof is in Section<nbsp><reference|sec:partII-G>,
  <reference|lem:G3.3>. With <math|I=\<varnothing\>> and <math|j=0>, this
  gives Proposition<nbsp><reference|prop:MC> in uniform form along the same
  sequence: an integral against<nbsp><math|f> is bounded by
  <math|<around|\<\|\|\>|f|\<\|\|\>><rsub|\<infty\>>> times the volume of its
  compact support times the uniform error. The earlier comparison is needed
  first to construct the tensor. Along the sequence of
  Proposition<nbsp><reference|prop:SC>, for every fixed
  <math|d,a,K<rsub|<math-up|rot>>>, the transported infinitesimal actions
  satisfy the operator-norm limits

  <\align*>
    <tformat|<table|<row|<cell|r<rsub|k><around|(|<scaleframe|k|d+1>|)><rsup|-1>*\<partial\><rsub|a><scaleframe|k|d>>|<cell|\<longrightarrow\>\<partial\><rsub|a><rsup|<math-up|Max>>,>>|<row|<cell|<around|(|<scaleframe|k|d>|)><rsup|-1><math-ss|L><rsub|d><around|(|K<rsub|<math-up|rot>>|)><scaleframe|k|d>>|<cell|\<longrightarrow\><math-ss|L><rsub|d><rsup|<math-up|Max>><around|(|K<rsub|<math-up|rot>>|)><space|0.17em>.>>>>
  </align*>

  <section|Phases and reconstruction><label|sec:phases>

  Keep the table and quotient fields of Sections<nbsp><reference|sec:continuum>\U<reference|sec:stress>.
  Compression to zero energy separates the mixed correlations into phases.
  The slab estimate of <reference|lem:H1.1> makes word insertion bounded
  after a positive time translation. The coordinate reflection
  <math|<math-ss|s><rsub|a><rsup|<math-up|refl>>> acts on labels through
  <math|<hypercubic>>.

  <\definition>
    <dueto|OS space and compression><label|def:D14> For words at distinct
    points in <math|x<rsup|a>\<gtr\>0>, let
    <math|\<cal-H\><rsub|a><rsup|<math-up|OS>>> be the completion of their
    complex span modulo the null space of

    <\equation*>
      <around|\<langle\>|w,v|\<rangle\>><rsub|a>=S*<around|(|<math-ss|s><rsub|a><rsup|<math-up|refl>>w<rsup|\<ast\>>*v|)>,<space|2em>e<rsup|-t*H<rsub|a><rsup|<math-up|OS>>><around|[|v|]>=<around|[|\<tau\><rsub|t*e<rsub|a>>*v|]>*<space|1em><around|(|t\<geqslant\>0|)><space|0.17em>.
    </equation*>

    Let <math|\<Omega\><rsub|a><rsup|<math-up|OS>>> be the empty-word vector
    and <math|P<rsup|0><rsub|a>> the projection onto <math|ker
    H<rsub|a><rsup|<math-up|OS>>>. For <math|h<rsub|<math-up|sl>>\<gtr\>0>
    and <math|w> with times in <math|<around|(|0,h<rsub|<math-up|sl>>|)>>,
    define, on positive-time words <math|v>,

    <\equation*>
      A<rsub|w>*v=w*<space|0.17em>\<tau\><rsub|h<rsub|<math-up|sl>>*e<rsub|4>>*v,<space|2em>M<rsup|0><around|(|w|)>=P<rsup|0><rsub|4><math-ss|B><rsub|h<rsub|<math-up|sl>>><around|(|w|)>\|<rsub|ker
      H<rsub|4><rsup|<math-up|OS>>><space|0.17em>,
    </equation*>

    where <math|<math-ss|B><rsub|h<rsub|<math-up|sl>>><around|(|w|)>> extends
    <math|A<rsub|w>> boundedly on OS classes, by <reference|lem:H1.1>.
  </definition>

  Translate any separated word into a slab to define its compression;
  <reference|lem:H1.2> proves independence of width and placement. The
  compressed operators generate the compression algebra

  <\equation*>
    \<frak-A\><rsub|0>=C<rsup|\<ast\>>*<around|(|M<rsup|0><around|(|w|)>:w<text|
    separated>|)><space|0.17em>.
  </equation*>

  Section<nbsp><reference|sec:partII-H>, <reference|lem:H1.2> proves that
  this algebra is separable, commutative and unital, and that
  <math|\<Omega\><rsub|4><rsup|<math-up|OS>>> is cyclic and separating. Its
  vacuum state is

  <\equation*>
    a\<longmapsto\><around|\<langle\>|\<Omega\><rsub|4><rsup|<math-up|OS>>,a*\<Omega\><rsub|4><rsup|<math-up|OS>>|\<rangle\>>,<space|2em>S<around|(|w|)>=<around|\<langle\>|\<Omega\><rsub|4><rsup|<math-up|OS>>,M<rsup|0><around|(|w|)>*\<Omega\><rsub|4><rsup|<math-up|OS>>|\<rangle\>><space|0.17em>.
  </equation*>

  The second identity uses translation invariance. The measure below
  represents this state on the character space; the separating property gives
  full support. A one-dimensional mixed ground space would make
  <math|M<rsup|0><around|(|w|)>=S<around|(|w|)><math-up|Id>> and leave a
  single character.

  Characters separate the mixed correlations without changing which fields
  are detectable. Call a character <math|\<xi\>> a phase and
  <math|S<rsup|\<xi\>>> its correlation table.

  <\theorem>
    <dueto|Phase decomposition><label|prop:PH> The algebra
    <math|\<frak-A\><rsub|0>> has a compact metric character space
    <math|<phases>> with a full-support probability measure <math|\<nu\>>
    such that, for every separated word <math|w>,

    <\equation*>
      S<rsup|\<xi\>><around|(|w|)>=\<xi\><around|(|M<rsup|0><around|(|w|)>|)>,<space|2em>S<around|(|w|)>=<big|int><rsub|<phases>>S<rsup|\<xi\>><around|(|w|)>*<space|0.17em>d*\<nu\><around|(|\<xi\>|)><space|0.17em>.
    </equation*>

    Each phase satisfies E1\UE7 and has exactly the null spaces
    <math|<nullspace|d><around|(|S<rsup|\<xi\>>|)>=<nullspace|d><around|(|S|)>>.
    The identities of FC, <math|O<around|(|4|)>> covariance and ST hold with
    <math|S<rsup|\<xi\>>> in place of <math|S>, for the same maps and tensor
    <math|T>. For fixed <math|w>, <math|\<xi\>\<mapsto\>S<rsup|\<xi\>><around|(|w|)>>
    is continuous.
  </theorem>

  The proof is in Section<nbsp><reference|sec:partII-H>,
  <reference|lem:H1.1>\U<reference|lem:H1.3>. Two positive coordinate
  directions give opposite orders to the middle two of four widely separated
  words. Rotation covariance identifies the limits, and the positive
  translation semigroups converge to the ground projections; the resulting
  identity makes the compressed operators commute.

  For each phase apply Definition<nbsp><reference|def:D14> to
  <math|S<rsup|\<xi\>>>, obtaining <math|\<cal-H\><rsub|4,\<xi\>><rsup|<math-up|OS>>>,
  <math|H<rsub|4,\<xi\>><rsup|<math-up|OS>>> and
  <math|\<Omega\><rsub|\<xi\>><rsup|<math-up|OS>>>. Fix
  <math|\<xi\><rsub|\<ast\>>> in the full-measure set with one-dimensional
  time-axis OS ground space supplied by <reference|lem:H1.3>. This choice
  uses no trace condition. Theorem<nbsp><reference|prop:RC> will extend
  ground-space uniqueness to every phase.

  Write <math|\<cal-S\><rsub|n>=\<cal-S\><around|(|<R><rsup|4*n>;<C>|)>> and
  <math|\<cal-S\>=\<cal-S\><rsub|1>>. The following definitions specify the
  relativistic theory.

  <\definition>
    <dueto|Relativistic fields><label|def:D14a> Take a complex Hilbert space
    <math|\<cal-H\>>, a complex vector space <math|\<cal-L\>> of labels, a
    linear subspace <math|\<cal-D\>\<subset\>\<cal-H\>> and
    <math|\<Omega\>\<in\>\<cal-D\>>. Fields
    <math|\<Phi\>*<around|(|\<ell\>,f|)>:\<cal-D\>\<to\>\<cal-D\>> are linear
    operators, complex bilinear in <math|<around|(|\<ell\>,f|)>\<in\>\<cal-L\>\<times\>\<cal-S\>>.
    Include an antilinear map <math|\<ell\>\<mapsto\>\<ell\><rsup|\<ast\>>>,
    strongly continuous unitary translations
    <math|<math-ss|T><around|(|z|)>>, <math|z\<in\><R><rsup|4>>, and a Borel
    projection-valued measure <math|<math-ss|E>>, with finite diagonal
    measures <math|\<mu\><rsub|\<psi\>><around|(|B|)>=<around|\<langle\>|\<psi\>,<math-ss|E><around|(|B|)>*\<psi\>|\<rangle\>>>
    for Borel <math|B\<subset\><R><rsup|4>>.
  </definition>

  <\definition>
    <dueto|Poincaré action><label|def:D14b> Take a topological group
    <math|\<cal-P\>> with topological group isomorphism
    <math|\<kappa\><rsub|<math-up|P>>:\<cal-P\>\<to\>S*O<rsup|+><around|(|1,3|)>\<ltimes\><R><rsup|4>>,
    writing <math|\<kappa\><rsub|<math-up|P>><around|(|\<gamma\>|)>=<around|(|\<Lambda\><rsub|\<gamma\>>,z<rsub|\<gamma\>>|)>>.
    Here <math|S*O<rsup|+><around|(|1,3|)>> preserves <math|<minksquare>>,
    has determinant one and preserves <math|<forwardcone>>. Include a
    strongly continuous unitary representation <math|<math-ss|U>> with
    <math|<math-ss|U><around|(|\<kappa\><rsub|<math-up|P>><rsup|-1><around|(|1,z|)>|)>=<math-ss|T><around|(|z|)>>
    and linear bijections <math|\<rho\><rsub|<math-up|lab>><around|(|\<gamma\>|)>>
    of <math|\<cal-L\>>. Set <math|<around|(|\<gamma\>\<cdot\>f|)><around|(|x|)>=f*<around|(|\<Lambda\><rsub|\<gamma\>><rsup|-1>*<around|(|x-z<rsub|\<gamma\>>|)>|)>>.
  </definition>

  In group arguments we identify <math|\<cal-P\>> with
  <math|S*O<rsup|+><around|(|1,3|)>\<ltimes\><R><rsup|4>> through
  <math|\<kappa\><rsub|<math-up|P>>>. The antilinear label map need not be
  involutive. The label action has no additional continuity, dimension or
  translation restriction. The spectral relation is imposed next.

  <\definition>
    <dueto|W0. Spectrum and vacuum><label|def:W0> For every
    <math|\<psi\>\<in\>\<cal-H\>> and <math|z\<in\><R><rsup|4>>, require

    <\equation*>
      <around|\<langle\>|\<psi\>,<math-ss|T><around|(|z|)>*\<psi\>|\<rangle\>>=<big|int>e<rsup|i*\<b-up-p\>\<cdot\>z>*<space|0.17em>d*\<mu\><rsub|\<psi\>><around|(|\<b-up-p\>|)>,<space|2em><math-ss|E><around|(|<R><rsup|4>\<setminus\><forwardcone>|)>=0<space|0.17em>,
    </equation*>

    with Euclidean pairing. Every vector fixed by all translations belongs to
    <math|<C>\<Omega\>>.
  </definition>

  <\definition>
    <dueto|W1. Word domain and adjoints><label|def:W1> Require
    <math|<around|\<\|\|\>|\<Omega\>|\<\|\|\>>=1>, density of
    <math|\<cal-D\>>, and

    <\equation*>
      \<cal-D\>=<math-up|span><rsub|<C>><around|{|\<Phi\>*<around|(|\<ell\><rsub|1>,f<rsub|1>|)>*\<cdots\>*\<Phi\>*<around|(|\<ell\><rsub|k>,f<rsub|k>|)>*\<Omega\>:k\<geqslant\>0|}><space|0.17em>.
    </equation*>

    For each <math|\<ell\>\<in\>\<cal-L\>>, <math|\<psi\>\<in\>\<cal-D\>>,
    the map <math|f\<mapsto\>\<Phi\>*<around|(|\<ell\>,f|)>*\<psi\>> is
    continuous from <math|\<cal-S\>> to <math|\<cal-H\>> in norm. For
    <math|\<psi\>,\<chi\>\<in\>\<cal-D\>>, require
    <math|<around|\<langle\>|\<Phi\>*<around|(|\<ell\>,f|)>*\<psi\>,\<chi\>|\<rangle\>>=<around|\<langle\>|\<psi\>,\<Phi\>*<around|(|\<ell\><rsup|\<ast\>>,<wide|f|\<bar\>>|)>*\<chi\>|\<rangle\>>>.
  </definition>

  <\definition>
    <dueto|W2. Covariance><label|def:W2> Require
    <math|\<rho\><rsub|<math-up|lab>><around|(|1|)>=1> and
    <math|\<rho\><rsub|<math-up|lab>>*<around|(|\<gamma\>*\<gamma\><rprime|'>|)>=\<rho\><rsub|<math-up|lab>><around|(|\<gamma\>|)>*\<rho\><rsub|<math-up|lab>><around|(|\<gamma\><rprime|'>|)>>.
    For every <math|\<gamma\>\<in\>\<cal-P\>>, <math|\<ell\>\<in\>\<cal-L\>>,
    <math|f\<in\>\<cal-S\>> and <math|\<psi\>\<in\>\<cal-D\>>, require
    <math|<math-ss|U><around|(|\<gamma\>|)>*\<cal-D\>\<subset\>\<cal-D\>>,
    <math|<math-ss|U><around|(|\<gamma\>|)>*\<Omega\>=\<Omega\>>, and

    <\equation*>
      <math-ss|U><around|(|\<gamma\>|)>*\<Phi\>*<around|(|\<ell\>,f|)>*\<psi\>=\<Phi\>*<around|(|\<rho\><rsub|<math-up|lab>><around|(|\<gamma\>|)>*\<ell\>,\<gamma\>\<cdot\>f|)><math-ss|U><around|(|\<gamma\>|)>*\<psi\><space|0.17em>.
    </equation*>
  </definition>

  <\definition>
    <dueto|W3. Locality><label|def:W3> For <math|f,h\<in\>\<cal-S\>> with
    <math|<minksquare><around|(|x-y|)>\<less\>0> for every
    <math|x\<in\><math-up|supp><space|0.17em>f>,
    <math|y\<in\><math-up|supp><space|0.17em>h>, require
    <math|<around|[|\<Phi\>*<around|(|\<ell\>,f|)>,\<Phi\>*<around|(|\<ell\><rprime|'>,h|)>|]>*\<psi\>=0>
    for all <math|\<ell\>,\<ell\><rprime|'>\<in\>\<cal-L\>> and
    <math|\<psi\>\<in\>\<cal-D\>>.
  </definition>

  <\definition>
    <dueto|Q2. Wightman axioms><label|def:Q2> A relativistic datum of
    Definitions<nbsp><reference|def:D14a>\U<reference|def:D14b> is a Wightman
    theory if it satisfies W0\UW3.
  </definition>

  <\definition>
    <dueto|Faithful labels><label|def:D14c> The labels are faithful if, for
    every nonzero <math|\<ell\>\<in\>\<cal-L\>>, some <math|f\<in\>\<cal-S\>>
    has <math|\<Phi\>*<around|(|\<ell\>,f|)>\<ne\>0>.
  </definition>

  <\definition>
    <dueto|Bounded weak commutant><label|def:D14d> A bounded operator
    <math|B> belongs to the weak commutant if, for every smeared field
    <math|\<Phi\>> and all <math|u,v\<in\>\<cal-D\>>, one has
    <math|u\<in\><math-up|Dom><space|0.17em>\<Phi\><rsup|\<ast\>>> and
    <math|<around|\<langle\>|\<Phi\><rsup|\<ast\>>*u,B*v|\<rangle\>>=<around|\<langle\>|u,B*\<Phi\>*v|\<rangle\>>>.
    Here <math|\<Phi\><rsup|\<ast\>>> is the unbounded Hilbert-space adjoint.
  </definition>

  <\definition>
    <dueto|Hermitian scalar labels><label|def:D14e> A label is Hermitian if
    <math|\<ell\><rsup|\<ast\>>=\<ell\>>, and Lorentz scalar if
    <math|\<rho\><rsub|<math-up|lab>><around|(|\<Lambda\>,0|)>*\<ell\>=\<ell\>>
    for every <math|\<Lambda\>\<in\>S*O<rsup|+><around|(|1,3|)>>. These
    conditions give the adjoint and scalar covariance identities through W1
    and W2.
  </definition>

  For reconstruction use the response space <math|\<cal-L\>> of
  Definition<nbsp><reference|def:D10>. Put
  <math|\<bbb-F\>=<big|sqcup><rsub|d>F<rsub|d>> and
  <math|\<iota\>*<around|(|d,A|)>=\<iota\><rsub|d>*A>.

  <\definition>
    <dueto|Boundary condition><label|def:D14f> For a phase <math|\<xi\>>, a
    relativistic datum <math|<around|(|\<cal-H\><rsub|\<xi\>>,\<cal-L\>,\<cal-D\><rsub|\<xi\>>,\<Omega\><rsub|\<xi\>>,\<Phi\><rsub|\<xi\>>,\<ldots\>|)>>
    of Definitions<nbsp><reference|def:D14a>\U<reference|def:D14b>, linear
    maps <math|\<iota\><rsub|d>:F<rsub|d>\<to\>\<cal-L\>>, and functions
    <math|<math-ss|F><rsub|n><rsup|\<xi\>>> on
    <math|\<bbb-F\><rsup|n>\<times\><C><rsup|n>\<times\><around|(|<R><rsup|3>|)><rsup|n>>,
    require, for every <math|n\<in\><N>>,
    <math|\<b-A\>\<in\>\<bbb-F\><rsup|n>>, real
    <math|h<rsub|1>\<less\>\<cdots\>\<less\>h<rsub|n>> and
    <math|f<rsub|i>\<in\>\<cal-S\>>,

    <\multline*>
      <tformat|<table|<row|<cell|lim<rsub|r*\<downarrow\>*0>
      <big|int><math-ss|F><rsub|n><rsup|\<xi\>><around|(|\<b-A\>;<around|(|x<rsub|i><rsup|4>+i*r*h<rsub|i>|)><rsub|i>,<around|(|<wide|x|\<vect\>><rsub|i>|)><rsub|i>|)>*<big|prod><rsub|i>f<rsub|i><around|(|x<rsub|i>|)>*<space|0.17em>d*x>>|<row|<cell|=<around|\<langle\>|\<Omega\><rsub|\<xi\>>,\<Phi\><rsub|\<xi\>>*<around|(|\<iota\><around|(|A<rsub|1>|)>,f<rsub|1>|)>*\<cdots\>*\<Phi\><rsub|\<xi\>>*<around|(|\<iota\><around|(|A<rsub|n>|)>,f<rsub|n>|)>*\<Omega\><rsub|\<xi\>>|\<rangle\>><space|0.17em>.>>>>
    </multline*>

    For this formula alone a nonintegrable function has integral zero.
  </definition>

  This boundary condition does not assert positive-height integrability,
  joint-test convergence or complex spatial analyticity.

  <\definition>
    <dueto|Ordered-time continuation><label|def:D15> For a
    phase<nbsp><math|\<xi\>>, put <math|\<cal-Z\><rsub|n>=<around|{|z\<in\><C><rsup|n>:<math-up|Im><space|0.17em>z<rsub|1>\<less\>\<cdots\>\<less\><math-up|Im><space|0.17em>z<rsub|n>|}>>.
    A continuation<nbsp><math|<math-ss|F><rsub|n><rsup|\<xi\>>> is
    holomorphic there at each fixed real spatial configuration and satisfies

    <\equation*>
      <math-ss|F><rsub|n><rsup|\<xi\>><around|(|\<b-A\>;<around|(|i*t<rsub|i>|)><rsub|i>,<wide|x|\<vect\>>|)>=S<rsub|n><rsup|\<xi\>>*<around|(|\<b-A\>;<around|(|<wide|x|\<vect\>><rsub|i>,t<rsub|i>|)><rsub|i>|)>*<space|2em><around|(|t<rsub|1>\<less\>\<cdots\>\<less\>t<rsub|n>|)><space|0.17em>.
    </equation*>

    Together with Definition<nbsp><reference|def:D14f>, it connects Euclidean
    and real-time correlations.
  </definition>

  For a theory at phase <math|\<xi\>> in the next theorem, write
  <math|\<cal-H\><rsub|\<xi\>>>, <math|\<cal-D\><rsub|\<xi\>>>,
  <math|\<Omega\><rsub|\<xi\>>>, <math|\<Phi\><rsub|\<xi\>>> and
  <math|<math-ss|T><rsub|\<xi\>>> for its Hilbert space, word domain, vacuum,
  fields and translations. Define its energy generator by
  <math|<math-ss|T><rsub|\<xi\>><around|(|t*e<rsub|4>|)>=e<rsup|i*t*H<rsub|\<xi\>>>>.
  Its OS comparison map means the bounded linear map

  <\equation*>
    <math-ss|J><rsub|\<xi\>><rsup|<math-up|OS>>:\<cal-H\><rsub|\<xi\>>\<longrightarrow\>\<cal-H\><rsub|4,\<xi\>><rsup|<math-up|OS>>,<space|2em><math-ss|J><rsub|\<xi\>><rsup|<math-up|OS>>\<Omega\><rsub|\<xi\>>=\<Omega\><rsub|\<xi\>><rsup|<math-up|OS>><space|0.17em>,
  </equation*>

  sending each smeared field-word vector to the norm limit of its
  heat-regularized positive-time OS vectors as the ordered heights tend to
  zero. Section<nbsp><reference|sec:partII-H>, <reference|lem:H2.2>
  constructs this map and proves its uniqueness.

  Each character yields relativistic fields on the common response labels.
  The continuation and boundary condition specify their relation to the phase
  correlations.

  <\theorem>
    <dueto|Reconstruction><label|prop:RC> For every
    <math|\<xi\>\<in\><phases>>, there are a Wightman theory
    (Definition<nbsp><reference|def:Q2>) on <math|\<cal-L\>>, faithful in the
    sense of Definition<nbsp><reference|def:D14c>, and functions
    <math|<math-ss|F><rsub|n><rsup|\<xi\>>> satisfying
    Definitions<nbsp><reference|def:D15> and<nbsp><reference|def:D14f> with
    the response maps <math|\<iota\><rsub|d>> of
    Definition<nbsp><reference|def:D10>. Its OS comparison map
    <math|<math-ss|J><rsub|\<xi\>><rsup|<math-up|OS>>> is onto, and

    <\equation*>
      ker H<rsub|\<xi\>>=<C>\<Omega\><rsub|\<xi\>>,<space|2em>ker
      H<rsub|4,\<xi\>><rsup|<math-up|OS>>=<C>\<Omega\><rsub|\<xi\>><rsup|<math-up|OS>><space|0.17em>.
    </equation*>

    Every bounded operator in the weak commutant of its fields
    (Definition<nbsp><reference|def:D14d>) is scalar.
  </theorem>

  The proof is in Section<nbsp><reference|sec:partII-H>,
  <reference|lem:H2.1>\U<reference|lem:H2.4>. Slab bounds control the
  analytic boundary values of these continuations. A low-energy bound uniform
  in <math|\<xi\>>, continuity of the vacuum-subtracted heat pairings and
  full support of <math|\<nu\>> extend almost-everywhere ground-space
  uniqueness to every phase. Thus the earlier choice of
  <math|\<xi\><rsub|\<ast\>>> remains valid.
  <reference|lem:H2.1>\U<reference|lem:H2.4> also give joint Schwartz
  distributions, phase averages and stress continuation.

  The reconstructed label maps are common to all phases. In
  <reference|lem:H2.1> the adjoint is induced by time reflection followed by
  conjugation:

  <\equation*>
    <around|(|\<iota\><rsub|d>*A|)><rsup|\<ast\>>=\<iota\><rsub|d>*<around*|(|R<rsub|d><around|(|<math-ss|s><rsub|4><rsup|<math-up|refl>>|)>*<wide|A|\<bar\>>|)><space|0.17em>.
  </equation*>

  The Lorentz label action is the continuation of <math|R<rsub|d>>: spatial
  rotations retain their Euclidean action. For <math|i=1,2,3>, the boost
  along <math|e<rsub|i>> has generator <math|-i<math-ss|L><rsub|d><around|(|K<rsub|4*i>|)>>,
  where <math|K<rsub|4*i>=e<rsub|4>*e<rsub|i><rsup|<math-ss|T>>-e<rsub|i>*e<rsub|4><rsup|<math-ss|T>>>
  generates rotation in the <math|<around|(|e<rsub|4>,e<rsub|i>|)>> plane
  (<reference|lem:H2.1>). In particular, a real
  <math|O<around|(|4|)>>-invariant field gives a Hermitian Lorentz scalar
  label. Retain the theory at <math|\<xi\><rsub|\<ast\>>> and suppress its
  phase subscript in <math|\<cal-H\>,\<cal-D\>,\<Omega\>,\<Phi\>> and the
  other relativistic data.

  <section|Trace and products><label|sec:trace-products>

  The trace is centered in the phase already selected in
  Section<nbsp><reference|sec:phases>. Its short-distance logarithm will
  distinguish the resulting theory from finite Wick comparisons.

  <\definition>
    <dueto|Centered trace><label|def:D16> For the tensor <math|T> fixed after
    Theorem<nbsp><reference|prop:ST> and <math|r\<gtr\>0>, put

    <\align*>
      <tformat|<table|<row|<cell|\<tau\>>|<cell|=<big|sum><rsub|a=1><rsup|4>T<rsub|a*a>,>|<cell|e<rsub|<math-up|tr>>>|<cell|=S<rsup|\<xi\><rsub|\<ast\>>><around|(|\<tau\>|)>,>|<cell|\<Theta\>>|<cell|=\<tau\>-e<rsub|<math-up|tr>><unitfield|4>,>>|<row|<cell|<tracetwopoint><around|(|r|)>>|<cell|=S<rsub|2><rsup|\<xi\><rsub|\<ast\>>>*<around|(|\<Theta\>,\<Theta\>;-r*e<rsub|4>/2,r*e<rsub|4>/2|)>,>|<cell|<traceamplitude>>|<cell|=<frac|3<dimG>|\<pi\><rsup|4>><space|0.17em>.>|<cell|>|<cell|>>>>
    </align*>

    The one-point value is position independent. Centering removes the vacuum
    contribution in the selected phase.
  </definition>

  Adding a real multiple of <math|\<delta\><rsub|a*b><unitfield|4>> to
  <math|T> preserves its shell laws, the limit in
  Proposition<nbsp><reference|prop:SC> and its centered
  trace<nbsp><math|\<Theta\>>; no uniqueness is needed. The fixed stress
  tensor is centered in the mixture, but a single-phase one-point value need
  not vanish. The next limit detects a nonzero centered trace and determines
  its power and logarithm.

  <\theorem>
    <dueto|Trace law><label|prop:TR> The selected field <math|\<Theta\>> is
    nonzero, real and <math|O<around|(|4|)>> invariant; its label
    <math|\<iota\><rsub|4>*\<Theta\>> is Hermitian and Lorentz scalar
    (Definition<nbsp><reference|def:D14e>). For every
    <math|f\<in\>\<cal-S\>>,

    <\equation*>
      <around|\<langle\>|\<Omega\>,\<Phi\>*<around|(|\<iota\><rsub|4>*\<Theta\>,f|)>*\<Omega\>|\<rangle\>>=0<space|0.17em>.
    </equation*>

    As <math|r*\<downarrow\>*0> through all positive radii,

    <\equation*>
      lim<rsub|r*\<downarrow\>*0> r<rsup|8>*log<rsup|2><around|(|1/r|)><tracetwopoint><around|(|r|)>=<traceamplitude>\<gtr\>0<space|0.17em>.
    </equation*>
  </theorem>

  The proof is in Section<nbsp><reference|sec:partII-I>,
  <reference|lem:I1.1>\U<reference|lem:I1.3>. To identify the amplitude, use
  the free scalar curvature square

  <\equation*>
    <curvaturesquare>=<frac|1|4>*<big|sum><rsub|a,b,\<alpha\>>:F<rsub|a*b><rsup|\<alpha\>>*F<rsub|a*b><rsup|\<alpha\>>:,<space|2em><maxwellcorr><rsub|2><around|(|<curvaturesquare>,<curvaturesquare>;-e<rsub|4>/2,e<rsub|4>/2|)>=<frac|3<dimG>|\<pi\><rsup|4>><space|0.17em>.
  </equation*>

  Here <math|\<alpha\>=1,\<ldots\>,<dimG>> indexes an orthonormal colour
  basis. At running coupling <math|\<beta\>>, the scalar trace coefficient is
  <math|4*d<rsub|2>/\<beta\>>, with <math|d<rsub|2>=-b<rsub|0>/2>. Since
  <math|<slope>=2*b<rsub|0>>, its leading coefficient at radius <math|r> is
  <math|4*d<rsub|2>/<around|(|<slope>log <around|(|1/r|)>|)>=-1/log
  <around|(|1/r|)>>. Squaring it and using the free correlation gives
  <math|<traceamplitude>>. The comparison uses adjustable stopping levels and
  fourth-order information beyond Proposition<nbsp><reference|prop:MC>; its
  estimates are uniform in the phase, although TR is stated only at the
  already selected <math|\<xi\><rsub|\<ast\>>>. For every prescribed sequence
  of positive radii tending to zero, the comparison holds along a
  subsequence. The positive spectral representation below
  makes<nbsp><math|<tracetwopoint>> real and nonincreasing; a sandwich
  argument gives the limit on that subsequence. The subsequence criterion
  then gives the full-radius limit.

  The same proof identifies centering on the word domain:

  <\equation*>
    \<Phi\>*<around|(|\<iota\><rsub|4>*\<Theta\>,f|)>=\<Phi\>*<around|(|\<iota\><rsub|4>*\<tau\>,f|)>-e<rsub|<math-up|tr>><around*|(|<big|int>f|)><math-up|Id><rsub|\<cal-H\>><space|0.17em>.
  </equation*>

  It also constructs the unique positive tempered-growth spectral measure
  <math|<tracespectrum>>, supported in <math|<forwardcone>>, for which

  <\equation*>
    d*\<mu\><rsub|\<Phi\>*<around|(|\<iota\><rsub|4>*\<Theta\>,f|)>*\<Omega\>>=<around|\||<fourierplus|f>|\|><rsup|2>*<space|0.17em>d<tracespectrum>,<space|2em><tracetwopoint><around|(|r|)>=<big|int>e<rsup|-r*\<b-up-p\><rsup|4>>*<space|0.17em>d<tracespectrum><around|(|\<b-up-p\>|)>*<space|1em><around|(|r\<gtr\>0|)><space|0.17em>.
  </equation*>

  Here <math|<fourierplus|f><around|(|\<b-up-p\>|)>=<big|int>e<rsup|i*\<b-up-p\>\<cdot\>x>*f<around|(|x|)>*<space|0.17em>d*x>.
  The measure's Lorentz invariance and its high-energy limits against
  compactly supported continuous tests and Schwartz tests are stated in
  <reference|lem:I1.2>\U<reference|lem:I1.3>.

  To define the comparison class, fix <math|m<rsub|<math-up|sh>>\<geqslant\>0>,
  integers <math|j<rsub|h>,k<rsub|E>\<geqslant\>0> and continuous real
  <math|h<rsub|<math-up|mom>>> on <math|<R><rsup|3>> with
  <math|h<rsub|<math-up|mom>>*<around|(|t*\<b-up-k\>|)>=t<rsup|j<rsub|h>>*h<rsub|<math-up|mom>><around|(|\<b-up-k\>|)>>
  for <math|t\<gtr\>0>.

  <\definition>
    <dueto|Finite Wick profiles><label|def:D17> Put
    <math|\<omega\><rsub|m<rsub|<math-up|sh>>><around|(|\<b-up-k\>|)>=<sqrt|m<rsub|<math-up|sh>><rsup|2>+<around|\||\<b-up-k\>|\|><rsup|2>>>
    and, for <math|r\<gtr\>0>,

    <\equation*>
      K<rsub|m<rsub|<math-up|sh>>,k<rsub|E>,h<rsub|<math-up|mom>>><around|(|r|)>=<big|int><rsub|<R><rsup|3>><frac|\<omega\><rsub|m<rsub|<math-up|sh>>><around|(|\<b-up-k\>|)><rsup|k<rsub|E>>*h<rsub|<math-up|mom>><around|(|\<b-up-k\>|)>|2*\<omega\><rsub|m<rsub|<math-up|sh>>><around|(|\<b-up-k\>|)>>*e<rsup|-r*\<omega\><rsub|m<rsub|<math-up|sh>>><around|(|\<b-up-k\>|)>>*<space|0.17em>d<rsup|3>*\<b-up-k\><space|0.17em>.
    </equation*>

    A finite Wick profile is a function

    <\equation*>
      W<rsub|<math-up|Wick>><around|(|r|)>=<big|sum><rsub|i=1><rsup|N>c<rsub|i>*<big|prod><rsub|j=1><rsup|n<rsub|i>>K<rsub|m<rsub|i*j>,k<rsub|i*j>,h<rsub|i*j>><around|(|r|)>*<space|1em><around|(|r\<gtr\>0|)>,<space|2em>c<rsub|i>\<in\><C><space|0.17em>,
    </equation*>

    with finitely many terms and factors of the preceding kind; empty
    products are one. A zero denominator at zero momentum gives integrand
    zero.
  </definition>

  The momentum integrals converge absolutely for <math|r\<gtr\>0>. For a free
  scalar field of mass <math|m<rsub|<math-up|sh>>>, the time-axis two-point
  function is <math|<around|(|2*\<pi\>|)><rsup|-3>*K<rsub|m<rsub|<math-up|sh>>,0,1><around|(|r|)>>.
  Derivatives give momentum factors, and Wick contractions give finite sums
  of products at the same radius.

  Such profiles cannot reproduce the factor
  <math|r<rsup|-8>*log<rsup|-2><around|(|1/r|)>> in
  Theorem<nbsp><reference|prop:TR>.

  <\proposition>
    <dueto|Finite-profile exclusion><label|prop:NF> For every finite Wick
    profile <math|W<rsub|<math-up|Wick>>> and every <math|\<delta\>\<gtr\>0>,
    there is <math|0\<less\>r\<less\>\<delta\>> such that

    <\equation*>
      <tracetwopoint><around|(|r|)>\<ne\>W<rsub|<math-up|Wick>><around|(|r|)><space|0.17em>.
    </equation*>
  </proposition>

  The proof is in Section<nbsp><reference|sec:partII-I>,
  <reference|lem:I2.1>. The mass-shell kernels have expansions to every
  finite order in integer powers of <math|r> and nonnegative powers of
  <math|log r>. Finite products and sums therefore give, to bounded error, a
  finite sum of monomials <math|r<rsup|a><around|(|log r|)><rsup|k>> with
  <math|a\<in\><Z>> and <math|k\<in\><N>>. Multiplication by
  <math|r<rsup|8>*log<rsup|2><around|(|1/r|)>> makes the terms with
  <math|a\<gtr\>-8> vanish. The remaining nonzero leading term diverges, so
  any finite limit is zero. The positive limit in
  Theorem<nbsp><reference|prop:TR> therefore excludes equality on every
  interval <math|<around|(|0,\<delta\>|)>>. Only that limit and its
  positivity enter this exclusion. <reference|lem:I2.2> identifies polynomial
  mass-shell comparisons with their Laplace profiles and applies
  <reference|lem:I2.1>; <reference|lem:I2.3>\U<reference|lem:I2.4> give the
  Fock countertests. Their comparison classes are defined there.

  The product expansion is stated for the Euclidean tables on their common
  quotient fields. Write <math|\<zeta\>\<in\><phases>\<sqcup\><around|{|<math-up|mix>|}>>
  for a state index (a phase or the mixture), with
  <math|S<rsup|<math-up|mix>>=S>, and retain degree tags by
  <math|\<bbb-F\>=<big|sqcup><rsub|d>F<rsub|d>>, <math|deg
  <around|(|d,A|)>=d>. The underlying prescription consists of the original
  fields and their correlation functionals. From it,
  Section<nbsp><reference|sec:partII-J>, <reference|lem:J1.1> constructs
  finite channel sets <math|<channels|j>>, real fields
  <math|O<rsub|j,\<lambda\>>\<in\>F<rsub|j>> and, for every finite <math|I>,
  functions

  <\equation*>
    c<rsub|j,\<lambda\>>:\<bbb-F\><rsup|I>\<times\><around|(|<R><rsup|4>|)><rsup|I>\<times\><R><rsup|4>\<longrightarrow\><C><space|0.17em>.
  </equation*>

  Fix these choices once, before spectators, state indices and truncations.
  The fields form complex bases of conjugation-invariant complements of
  <math|F<rsub|j-1>> in <math|F<rsub|j>>, with <math|F<rsub|-1>=0>. The
  degree-zero vector spans the unit line; it need not equal the unit. For
  finite cluster and spectator index sets
  <math|I<rsub|<math-up|cl>>,I<rsub|<math-up|sp>>>, take positions
  <math|x\<in\><around|(|<R><rsup|4>|)><rsup|I<rsub|<math-up|cl>>>>,
  <math|y\<in\><around|(|<R><rsup|4>|)><rsup|I<rsub|<math-up|sp>>>> and
  expansion center <math|o\<in\><R><rsup|4>>.

  <\definition>
    <dueto|Product remainder><label|def:D18> For finite index sets
    <math|I<rsub|<math-up|cl>>,I<rsub|<math-up|sp>>> and <math|D\<in\><N>>,
    cluster and spectator lists <math|\<b-A\>\<in\>\<bbb-F\><rsup|I<rsub|<math-up|cl>>>>,
    <math|\<b-B\>\<in\>\<bbb-F\><rsup|I<rsub|<math-up|sp>>>>, put
    <math|<around|\||\<b-A\>|\|><rsub|deg>=<big|sum><rsub|i>deg A<rsub|i>>
    and

    <\equation*>
      \<cal-R\><rsub|D><rsup|\<zeta\>>=S<rsup|\<zeta\>>*<around|(|\<b-A\>,x;\<b-B\>,y|)>-<big|sum><rsub|j=0><rsup|D><big|sum><rsub|\<lambda\>\<in\><channels|j>>c<rsub|j,\<lambda\>>*<around|(|\<b-A\>;x,o|)>*S<rsup|\<zeta\>>*<around|(|O<rsub|j,\<lambda\>><around|(|o|)>,\<b-B\><around|(|y|)>|)><space|0.17em>.
    </equation*>

    Use a fixed enumeration of <math|I<rsub|<math-up|cl>>\<sqcup\>I<rsub|<math-up|sp>>>
    for the concatenated correlations. A pair <math|<around|(|x,o|)>> is an
    <math|<around|(|r,M<rsub|<math-up|geo>>,\<eta\>|)>>-cluster if
    <math|<around|\||x<rsub|i>-o|\|>\<leqslant\>M<rsub|<math-up|geo>>*r> and
    <math|<around|\||x<rsub|i>-x<rsub|i<rprime|'>>|\|>\<geqslant\>\<eta\>*r>
    for distinct slots. Spectators are <math|\<delta\><rsub|<math-up|sp>>>-clear
    if <math|<around|\||o-y<rsub|j>|\|>\<geqslant\>\<delta\><rsub|<math-up|sp>>>
    and <math|<around|\||y<rsub|j>-y<rsub|j<rprime|'>>|\|>\<geqslant\>\<delta\><rsub|<math-up|sp>>>
    for distinct slots. The remainder measures the error through degree
    <math|D>.
  </definition>

  If <math|M<rsub|<math-up|geo>>*r\<less\>\<delta\><rsub|<math-up|sp>>>, the
  concatenated positions are separated: <math|<around|\||x<rsub|i>-y<rsub|j>|\|>\<geqslant\>\<delta\><rsub|<math-up|sp>>-M<rsub|<math-up|geo>>*r\<gtr\>0>.
  Thus the remainder is defined in the small-radius range used below.

  One field expansion approximates a cluster in every phase and in the
  mixture. Its coefficients are independent of all spectators.

  <\theorem>
    <dueto|Operator product expansion><label|prop:OP> For every finite list
    <math|\<b-A\>>, <math|M<rsub|<math-up|geo>>\<geqslant\>0>,
    <math|\<eta\>,\<varepsilon\>\<gtr\>0>, <math|j\<in\><N>> and
    <math|\<lambda\>\<in\><channels|j>>, some <math|r<rsub|0>\<gtr\>0> gives,
    for <math|0\<less\>r\<less\>r<rsub|0>> and every
    <math|<around|(|r,M<rsub|<math-up|geo>>,\<eta\>|)>>-cluster,

    <\equation*>
      <around|\||c<rsub|j,\<lambda\>>*<around|(|\<b-A\>;x,o|)>|\|>\<leqslant\>r<rsup|j-<around|\||\<b-A\>|\|><rsub|deg>-\<varepsilon\>><space|0.17em>.
    </equation*>

    For every pair of finite lists <math|\<b-A\>,\<b-B\>>,
    <math|M<rsub|<math-up|geo>>\<geqslant\>0>,
    <math|\<eta\>,\<delta\><rsub|<math-up|sp>>,\<varepsilon\>\<gtr\>0> and
    <math|D\<in\><N>>, some <math|r<rsub|1>\<gtr\>0> gives, for
    <math|0\<less\>r\<less\>r<rsub|1>>, such clusters,
    <math|\<delta\><rsub|<math-up|sp>>>-clear spectators and all state
    indices<nbsp><math|\<zeta\>>,

    <\equation*>
      <around|\||\<cal-R\><rsub|D><rsup|\<zeta\>>|\|>\<leqslant\>r<rsup|D+1-<around|\||\<b-A\>|\|><rsub|deg>-\<varepsilon\>><space|0.17em>.
    </equation*>
  </theorem>

  The proof is in Section<nbsp><reference|sec:partII-J>,
  <reference|lem:J1.1>\U<reference|lem:J1.2>. A fixed left inverse recovers
  <math|A\<in\>F<rsub|j>> from finitely many values
  <math|S*<around|(|A<around|(|0|)>,B|)>> against chosen probe words
  <math|B>. Apply it to cluster correlations, average under rotations and
  conjugation, and recursively subtract lower degrees. The lattice product
  estimate bounds the discarded part in the compression algebra. Since
  <math|<around|\||\<xi\><around|(|a|)>|\|>\<leqslant\><around|\<\|\|\>|a|\<\|\|\>>>
  for <math|a\<in\>\<frak-A\><rsub|0>>, that bound holds in every phase, and
  integration gives the mixture, with one radius threshold. The exponents
  compare output and input degrees. Since
  <math|C*r<rsup|\<varepsilon\>/2>*log<rsup|m><around|(|1/r|)>\<to\>0> for
  fixed <math|C,m>, the loss <math|\<varepsilon\>> absorbs logarithms and
  constants, giving coefficient one for smaller radii. The thresholds have
  separate dependencies.

  <reference|lem:J1.3>\U<reference|lem:J1.6> give integrated and nested
  estimates; the nested error is a sum of gains from proper clusters.

  Contact subtractions use the original fields and correlations underlying
  <reference|lem:J1.1>, with separate projections extracting fields through
  finite correlation probes. Their clearance is a radius keeping the
  collapsed cluster separated from these probes, independent of spectator
  clearance <math|\<delta\><rsub|<math-up|sp>>>.

  A collision forest is a family of subsets of slots, any two disjoint or
  nested. The contact construction subtracts normal Taylor jets along their
  collision diagonals. The next result concerns this fixed subtraction; its
  local order bounds are stated in <reference|lem:J2.3>.

  <\theorem>
    <dueto|Contact extension><label|prop:CT> For every state index
    <math|\<zeta\>>, arity <math|n> and list
    <math|\<b-A\>\<in\>\<bbb-F\><rsup|n>>, the contact construction of
    Section<nbsp><reference|sec:partII-J>, <reference|sec:partII-J.2>, fixed
    on the underlying prescription of <reference|lem:J1.1>, gives a
    distribution <math|\<frak-D\><rsub|\<b-A\>><rsup|\<zeta\>>> on
    <math|<R><rsup|4*n>> such that, for every separated test <math|f>,

    <\equation*>
      \<frak-D\><rsub|\<b-A\>><rsup|\<zeta\>><around|(|f|)>=<big|int>f<around|(|x|)>*S<rsub|n><rsup|\<zeta\>>*<around|(|\<b-A\>;x|)>*<space|0.17em>d*x<space|0.17em>.
    </equation*>
  </theorem>

  The proof is in Section<nbsp><reference|sec:partII-J>,
  <reference|lem:J2.1>\U<reference|lem:J2.3>. For separated <math|f>, all its
  jets on collision diagonals vanish, so the subtractions leave the
  correlation integral unchanged. For general <math|f>, the contact
  projections retain compatible field components and the lattice shell bounds
  make the subtracted sums converge to a continuous functional.
  <reference|sec:partII-J.2> specifies the real stratum bases, scales and
  local order bounds, independently of OP's estimates. CT enters Theorem B;
  reconstruction and Theorem A use separated correlations.

  <section|Main theorems><label|sec:main-theorems>

  The existence theorem concerns one Wilson family<nbsp><math|\<cal-W\>>,
  chosen before any prescribed volume sequence. Its tokens
  <math|v\<in\>\<cal-T\>> label the lattice insertions. We first specify its
  continuum conclusion; the field calculus and stress tensor established
  above are additional properties of the construction.

  <\definition>
    <dueto|Q0. Hierarchy data><label|def:Q0> Hierarchy data
    over<nbsp><math|\<cal-W\>> consist of:

    <\itemize>
      <item>complex Hilbert and vector spaces<nbsp><math|\<cal-H\>,\<cal-L\>>,
      and the relativistic data of Definitions<nbsp><reference|def:D14a>\U<reference|def:D14b>;

      <item>finite-dimensional complex normed spaces<nbsp><math|F<rsub|d>>,
      linear maps<nbsp><math|\<iota\><rsub|d>:F<rsub|d>\<to\>\<cal-L\>>, and
      <math|\<pi\><rsub|<math-up|quo>>:\<cal-T\>\<to\>\<bbb-F\>>, where
      <math|\<bbb-F\>=<big|sqcup><rsub|d>F<rsub|d>>;

      <item>a compact metric space<nbsp><math|<phases>>, a Borel
      measure<nbsp><math|\<nu\>> and <math|\<xi\><rsub|\<ast\>>\<in\><phases>>;

      <item>functions <math|S<rsub|n><rsup|\<zeta\>>:\<bbb-F\><rsup|n>\<times\><around|(|<R><rsup|4>|)><rsup|n>\<to\><C>>
      for <math|\<zeta\>\<in\><phases>\<sqcup\><around|{|<math-up|mix>|}>>,
      and <math|<math-ss|F><rsub|n>:\<bbb-F\><rsup|n>\<times\><C><rsup|n>\<times\><around|(|<R><rsup|3>|)><rsup|n>\<to\><C>>;

      <item>finite sets<nbsp><math|<channels|j>>,
      fields<nbsp><math|O<rsub|j,\<lambda\>>\<in\>F<rsub|j>>, and
      coefficients <math|c<rsub|j,\<lambda\>>:\<bbb-F\><rsup|I<rsub|<math-up|cl>>>\<times\><around|(|<R><rsup|4>|)><rsup|I<rsub|<math-up|cl>>>\<times\><R><rsup|4>\<to\><C>>
      for every finite index set<nbsp><math|I<rsub|<math-up|cl>>>;

      <item>an element<nbsp><math|\<Theta\>\<in\>F<rsub|4>>.
    </itemize>
  </definition>

  No further condition is part of Q0. Put <math|deg <around|(|d,A|)>=d> and
  <math|\<iota\>*<around|(|d,A|)>=\<iota\><rsub|d>*A>. Here the spaces and
  maps are arbitrary: no response realization, stress interpretation,
  multilinearity or channel basis property is implicit. Correlations are
  defined at all positions; the axioms constrain their separated values.

  In Q2\UQ6, all cited definitions and formulas are read with these hierarchy
  data. In definitions indexed by a phase, read
  <math|\<Omega\><rsub|\<xi\><rsub|\<ast\>>>>,
  <math|\<Phi\><rsub|\<xi\><rsub|\<ast\>>>> and
  <math|<math-ss|F><rsub|n><rsup|\<xi\><rsub|\<ast\>>>> as the
  <math|\<Omega\>>, <math|\<Phi\>> and <math|<math-ss|F><rsub|n>> of these
  data.

  <\definition>
    <dueto|Q1. Regular Wilson family><label|def:Q1> A Wilson family is
    regular if its insertions are continuous and gauge invariant, each
    token<nbsp><math|v> has a finite stencil<nbsp><math|\<Sigma\><rsub|v>\<subset\><Z><rsup|4>>
    valid for every<nbsp><math|N,p,y>, and
    some<nbsp><math|b<rsub|\<ast\>>\<gtr\>0> satisfies

    <\equation*>
      \<forall\>\<varepsilon\>\<gtr\>0\<exists\>N<rsub|0>\<forall\>N\<geqslant\>N<rsub|0>\<forall\>p:<space|1em><around*|\||<frac|\<beta\><rsub|N,p>|log
      <around|(|1/a<rsub|N>|)>>-b<rsub|\<ast\>>|\|>\<less\>\<varepsilon\><space|0.17em>.
    </equation*>

    Only links with both ends in<nbsp><math|y+\<Sigma\><rsub|v>> modulo the
    torus are read.
  </definition>

  The relativistic axioms Q2 are Definition<nbsp><reference|def:Q2>. The
  following conditions specify the labels, phase average and selected
  continuation.

  <\definition>
    <dueto|Q3. Labels and phases><label|def:Q3> Every
    nonzero<nbsp><math|\<ell\>\<in\>\<cal-L\>> has
    <math|\<Phi\>*<around|(|\<ell\>,f|)>\<ne\>0> for
    some<nbsp><math|f\<in\>\<cal-S\>>. Each<nbsp><math|\<iota\><rsub|d>> is
    injective, their images cover<nbsp><math|\<cal-L\>>,
    <math|\<pi\><rsub|<math-up|quo>>> is onto, and
    <math|\<Phi\>*<around|(|\<iota\><around|(|A|)>,f|)>\<ne\>0> for
    some<nbsp><math|A\<in\>\<bbb-F\>>, <math|f\<in\>\<cal-S\>>. The
    measure<nbsp><math|\<nu\>> is a probability measure of full support.
    Each<nbsp><math|S<rsub|n><rsup|\<zeta\>>> is simultaneously permutation
    symmetric and smooth on<nbsp><math|<Conf|n>>. For every <math|n>,
    <math|\<b-A\>\<in\>\<bbb-F\><rsup|n>> and <math|x\<in\><Conf|n>>,

    <\equation*>
      \<xi\>\<longmapsto\>S<rsub|n><rsup|\<xi\>>*<around|(|\<b-A\>;x|)><text|
      is continuous>,<space|2em>S<rsub|n><rsup|<math-up|mix>>*<around|(|\<b-A\>;x|)>=<big|int><rsub|<phases>>S<rsub|n><rsup|\<xi\>>*<around|(|\<b-A\>;x|)>*<space|0.17em>d*\<nu\><around|(|\<xi\>|)><space|0.17em>.
    </equation*>
  </definition>

  <\definition>
    <dueto|Q4. Selected continuation><label|def:Q4> The
    functions<nbsp><math|<math-ss|F><rsub|n>> satisfy the ordered-time
    continuation condition of Definition<nbsp><reference|def:D15> and the
    boundary condition of Definition<nbsp><reference|def:D14f>
    at<nbsp><math|\<xi\><rsub|\<ast\>>>, using the relativistic datum and the
    maps<nbsp><math|\<iota\><rsub|d>> of the hierarchy data.
  </definition>

  <\definition>
    <dueto|Q5. Products><label|def:Q5> For the channels, fields, coefficients
    and tables<nbsp><math|S<rsup|\<zeta\>>> of Q0,
    form<nbsp><math|\<cal-R\><rsub|D><rsup|\<zeta\>>> by
    Definition<nbsp><reference|def:D18>. These coefficients and remainders
    satisfy the two inequalities of Theorem<nbsp><reference|prop:OP>: the
    coefficient threshold depends on <math|I<rsub|<math-up|cl>>,\<b-A\>,M<rsub|<math-up|geo>>,\<eta\>,\<varepsilon\>,j,\<lambda\>>;
    the remainder threshold depends on <math|I<rsub|<math-up|cl>>,I<rsub|<math-up|sp>>,\<b-A\>,\<b-B\>,M<rsub|<math-up|geo>>,\<eta\>,\<delta\><rsub|<math-up|sp>>,\<varepsilon\>,D>.
    Both precede positions and states. Coefficients have no spectator, state
    or truncation argument.
  </definition>

  <\definition>
    <dueto|Q6. Trace test><label|def:Q6> For the
    chosen<nbsp><math|\<Theta\>\<in\>F<rsub|4>>, put

    <\equation*>
      <tracetwopoint><around|(|r|)>=S<rsub|2><rsup|\<xi\><rsub|\<ast\>>>*<around|(|\<Theta\>,\<Theta\>;-r*e<rsub|4>/2,r*e<rsub|4>/2|)>,<space|2em><traceamplitude>=<frac|3<dimG>|\<pi\><rsup|4>><space|0.17em>.
    </equation*>

    Require

    <\equation*>
      <around|\<langle\>|\<Omega\>,\<Phi\>*<around|(|\<iota\><rsub|4>*\<Theta\>,f|)>*\<Omega\>|\<rangle\>>=0*<space|2em><around|(|f\<in\>\<cal-S\>|)><space|0.17em>,
    </equation*>

    and

    <\equation*>
      lim<rsub|r*\<downarrow\>*0> r<rsup|8>*log<rsup|2><around|(|1/r|)><tracetwopoint><around|(|r|)>=<traceamplitude>\<gtr\>0<space|1em><text|in
      ><C><space|0.17em>,
    </equation*>

    and require the finite-profile exclusion of
    Proposition<nbsp><reference|prop:NF>.
  </definition>

  For the lattice limit, <math|S<rsup|<math-up|mix>>\<circ\>\<pi\><rsub|<math-up|quo>>>
  denotes the kernels

  <\equation*>
    K<rsub|n><around|(|v;x|)>=S<rsub|n><rsup|<math-up|mix>>*<around|(|\<pi\><rsub|<math-up|quo>><around|(|v<rsub|1>|)>,\<ldots\>,\<pi\><rsub|<math-up|quo>><around|(|v<rsub|n>|)>;x|)><space|0.17em>.
  </equation*>

  Q2\UQ4 describe a relativistic theory continued from one phase; Q5 controls
  products, and Q6's inverse logarithm excludes every finite Wick profile. In
  Theorem<nbsp><reference|thm:A>, Q6 places a condition on a degree-four
  field without requiring a stress-tensor interpretation.

  <\maintheorem>
    <dueto|Existence><label|thm:A> For every gauge group of
    Definition<nbsp><reference|def:D01>, there is a regular (Q1) Wilson
    family<nbsp><math|\<cal-W\>> such that, for every strictly
    increasing<nbsp><math|<math-ss|p>:<N>\<to\><N>>, there are a strictly
    increasing<nbsp><math|<math-ss|q>> and hierarchy data
    over<nbsp><math|\<cal-W\>> (Q0) satisfying Q2--Q6, with

    <\equation*>
      \<cal-W\>\<longrightarrow\>S<rsup|<math-up|mix>>\<circ\>\<pi\><rsub|<math-up|quo>><space|1em><text|along
      ><math-ss|p>\<circ\><math-ss|q><space|1em><text|in the sense of
      Definition<nbsp><reference|def:D09>><space|0.17em>.
    </equation*>
  </maintheorem>

  Step<nbsp><reference|step:deduction-conclusion> below deduces
  Theorem<nbsp><reference|thm:A> from Theorem<nbsp><reference|thm:B>.

  In the construction theorem, the constructed hierarchy means the following
  Q0 data. Its spaces <math|F<rsub|d>=V<rsub|d>/<nullspace|d><around|(|S|)>>,
  response labels<nbsp><math|\<cal-L\>> and maps<nbsp><math|\<iota\><rsub|d>>
  are those of Definition<nbsp><reference|def:D10>, and

  <\equation*>
    \<pi\><rsub|<math-up|quo>>*<around|(|d,\<b-up-c\>|)>=<around|(|d,<around|[|\<b-up-c\>|]>|)><space|0.17em>.
  </equation*>

  Its mixture and phase tables are the quotient correlations of<nbsp><math|S>
  and Theorem<nbsp><reference|prop:PH> on<nbsp><math|<Conf|n>>, extended
  arbitrarily on collision diagonals. Its phase space, measure and selected
  point are those of that phase decomposition,
  with<nbsp><math|\<xi\><rsub|\<ast\>>> chosen as in <reference|lem:H1.3>.
  Its relativistic data and continuation<nbsp><math|<math-ss|F><rsub|n>> come
  from Theorem<nbsp><reference|prop:RC> at<nbsp><math|\<xi\><rsub|\<ast\>>>.
  Its<nbsp><math|\<Theta\>> is the centered trace of the tensor in
  Theorem<nbsp><reference|prop:ST>, as in
  Definition<nbsp><reference|def:D16>; its channels, fields and coefficients
  are those constructed in Section<nbsp><reference|sec:partII-J>,
  <reference|lem:J1.1>.

  The conclusions B1\UB6 retain the following properties of these objects.
  The tags name the preceding results; the letter-and-number references in
  Theorem<nbsp><reference|thm:B> specify the additional conclusions in
  Part<nbsp>II.

  <\description>
    <item*|B1>The kernel, spacings, divisible periods, Taylor and reference
    normalizations and specified recursion are those fixed above. MT
    (Theorem<nbsp><reference|prop:MT>) gives the trajectories and uniform
    running slope. Endpoint tuning in <reference|lem:E1.3> gives a width
    <math|w<rsub|<math-up|tun>>\<gtr\>0>, independent of <math|N,p>: the bare
    coupling reaching <math|<wide|\<beta\>|\<bar\>>+w<rsub|<math-up|tun>>*s>
    is unique within the specified recursion for
    <math|-1\<leqslant\>s\<leqslant\>1> and extends holomorphically to
    <math|<around|\||s|\|>\<less\>1>.

    <item*|B2>UV (Theorem<nbsp><reference|prop:UV>) and
    <reference|lem:E3.1>\U<reference|lem:E3.2> give the full fixed-volume
    limit, including derivatives, interpolation at moving positions and
    smearing.

    <item*|B3>IV (Theorem<nbsp><reference|prop:IV>) and FC
    (Proposition<nbsp><reference|prop:FC>) give the quotient calculus and
    Maxwell dimensions. MC (Proposition<nbsp><reference|prop:MC>) and SC
    (Proposition<nbsp><reference|prop:SC>) give the ordinary and
    differentiated comparisons. ST (Theorem<nbsp><reference|prop:ST>) with
    <reference|lem:G3.1>\U<reference|lem:G3.2>, and PH
    (Theorem<nbsp><reference|prop:PH>), give the mixed and phase Euclidean,
    rotation and stress laws, with<nbsp><math|\<Theta\>> identified as above.

    <item*|B4>RC (Theorem<nbsp><reference|prop:RC>) reconstructs every phase,
    with the OS comparison maps, ground-space and weak-commutant conclusions.
    <reference|lem:H2.1>\U<reference|lem:H2.4> also give low-energy bounds,
    continuation of the stress tensor and phase averages of joint
    distributions.

    <item*|B5>TR (Theorem<nbsp><reference|prop:TR>) and NF
    (Proposition<nbsp><reference|prop:NF>) give the full-radius law and
    finite-profile exclusion. Sections<nbsp><reference|sec:partII-I.1>
    and<nbsp><reference|sec:partII-I>.2 also give the centering identity,
    unique spectral measure, high-energy limits and polynomial mass-shell and
    Fock countertests.

    <item*|B6>OP (Theorem<nbsp><reference|prop:OP>) and
    <reference|lem:J1.1>\U<reference|lem:J1.6> give one product prescription
    with separated, integrated and nested estimates. CT
    (Theorem<nbsp><reference|prop:CT>) and
    <reference|lem:J2.1>\U<reference|lem:J2.3> give contact extensions, real
    bases and subtraction scales. Both use the same original fields and
    correlation functionals, with separate contact projections, separating
    functionals and clearance.
  </description>

  The next theorem realizes Theorem<nbsp><reference|thm:A>'s hierarchy by
  these quotient fields, with<nbsp><math|\<Theta\>> the centered trace of a
  normalized stress tensor and with every phase reconstructed.

  <\maintheorem>
    <dueto|Construction><label|thm:B> For every gauge group of
    Definition<nbsp><reference|def:D01> and<nbsp><math|<blockpenalty>\<gtr\>0>,
    there is one regular Wilson family<nbsp><math|\<cal-W\>>, given by
    Definitions<nbsp><reference|def:D04> and<nbsp><reference|def:D08>,
    satisfying MT, <reference|lem:E1.1>--<reference|lem:E1.3>,
    <reference|lem:A1>, <reference|lem:E2.1>--<reference|lem:E2.1a> (B1), and
    UV, <reference|lem:E3.1>--<reference|lem:E3.2> (B2). For every strictly
    increasing<nbsp><math|<math-ss|p>>, there are a strictly
    increasing<nbsp><math|<math-ss|q>>, a table<nbsp><math|S> as in IV and a
    constructed hierarchy over<nbsp><math|\<cal-W\>> for this<nbsp><math|S>,
    satisfying Q2--Q6, with <math|\<cal-W\>\<to\>S<rsup|<math-up|mix>>\<circ\>\<pi\><rsub|<math-up|quo>>>
    along<nbsp><math|<math-ss|p>\<circ\><math-ss|q>>
    (Definition<nbsp><reference|def:D09>). Its table, fields and tensor obey
    IV, FC, <reference|lem:F2>--<reference|lem:F3>, MC, ST, SC, PH,
    <reference|lem:G2.1>--<reference|lem:G2.3>,
    <reference|lem:G3.1>--<reference|lem:G3.3>, <reference|lem:H1.3> (B3);
    its phase theories obey RC, <reference|lem:H2.1>--<reference|lem:H2.4>
    (B4); its<nbsp><math|\<Theta\>> obeys TR, NF,
    <reference|lem:I1.1>--<reference|lem:I1.3>,
    <reference|lem:I2.1>--<reference|lem:I2.4> (B5); its product and contact
    constructions obey OP, <reference|lem:J1.1>--<reference|lem:J1.6>, CT,
    <reference|lem:J2.1>--<reference|lem:J2.3> (B6), with the same underlying
    prescription.
  </maintheorem>

  Steps<nbsp><reference|step:deduction-choice>\U<reference|step:deduction-products>
  below prove Theorem<nbsp><reference|thm:B>. Additional position-space
  normalization results for degree-four fields are given with
  <reference|lem:I1.3>, and estimates along general collision subspaces with
  <reference|lem:J2.3>; these are separate from the conclusions above.
  Restricting the full ultraviolet limit also gives convergence along every
  spacing subsequence.

  <\render-proof|Deduction of Theorems<nbsp><reference|thm:A>
  and<nbsp><reference|thm:B>>
    <\enumerate>
      <item><label|step:deduction-choice> Fix<nbsp><math|G>
      and<nbsp><math|<blockpenalty>\<gtr\>0>.
      Section<nbsp><reference|sec:constants> and
      Sections<nbsp><reference|sec:partII-A>\U<reference|sec:partII-E> supply
      the common choices, admissible classes, recursion and later lattice
      estimates. Wilson initialization D.3 starts the induction;
      Theorem<nbsp><reference|prop:RG> advances it;
      Theorem<nbsp><reference|prop:MT> and E.1.3 tune trajectories to the
      common endpoint. These choices precede any prescribed volume sequence.

      <item><label|step:deduction-family> Fix the local sections, reference
      levels and terminal maps on those trajectories.
      Definition<nbsp><reference|def:D08> defines every insertion, including
      below its reference level. The gauge-invariant local sections are
      polynomial in the link entries on their stencils; the terminal
      coefficient maps preserve continuity, gauge invariance and tokenwise
      locality. Taking<nbsp><math|m=N> in Theorem<nbsp><reference|prop:MT>
      gives Q1 with<nbsp><math|b<rsub|\<ast\>>=<slope>\<gtr\>0>. This fixes
      the regular Wilson family.

      <item><label|step:deduction-uv> Proposition<nbsp><reference|prop:UB>
      and fixed-volume comparison with analytic tuning give
      Theorem<nbsp><reference|prop:UV> and
      E.3.1\U<reference|sec:partII-E.3>.2, for every volume and fixed
      field/difference request. Thus each admissible test has a full inner
      limit before volume extraction.

      <item><label|step:deduction-volume> Given any strictly
      increasing<nbsp><math|<math-ss|p>>, Theorem<nbsp><reference|prop:IV>
      chooses<nbsp><math|<math-ss|q>,S> with the convergence of
      Definition<nbsp><reference|def:D09>
      along<nbsp><math|<math-ss|p>\<circ\><math-ss|q>> and E1\UE7. The same
      extraction fixes the corrected coefficient maps.

      <item><label|step:deduction-stress>
      Define<nbsp><math|F<rsub|d>=V<rsub|d>/<nullspace|d><around|(|S|)>>
      and<nbsp><math|\<cal-L\>> by Definition<nbsp><reference|def:D10>.
      Proposition<nbsp><reference|prop:FC> and F.2 give inclusions,
      derivatives, dimensions and the response realization.
      Proposition<nbsp><reference|prop:MC> and
      G.2.2\U<reference|sec:partII-G.2>.3 give the conserved line and charge
      maps; G.3.1\U<reference|sec:partII-G.3>.2 give the
      representations<nbsp><math|R<rsub|d>> and full covariance, and
      Theorem<nbsp><reference|prop:ST> gives the normalized tensor;
      Proposition<nbsp><reference|prop:SC> gives the differentiated
      comparison. The volume refinement is unchanged.

      <item><label|step:deduction-phase> Theorem<nbsp><reference|prop:PH> and
      H.1.1\U<reference|sec:partII-H.1>.3 of
      Section<nbsp><reference|sec:partII-H>
      construct<nbsp><math|<phases>,\<nu\>,S<rsup|\<xi\>>> on the same
      quotient spaces. Choose<nbsp><math|\<xi\><rsub|\<ast\>>> from the
      full-measure set with one-dimensional time-axis OS ground space. This
      selection precedes reconstruction and uses only that ground-space
      property. Theorem<nbsp><reference|prop:RC> reconstructs every character
      simultaneously; H.2.1\U<reference|sec:partII-H.2>.4 retain this
      selected theory and give B4.

      <item><label|step:deduction-hierarchy>
      Set<nbsp><math|\<pi\><rsub|<math-up|quo>>*<around|(|d,\<b-up-c\>|)>=<around|(|d,<around|[|\<b-up-c\>|]>|)>>.
      Representatives make this map onto. Every response lies in
      one<nbsp><math|\<iota\><rsub|d>*F<rsub|d>>, and
      each<nbsp><math|\<iota\><rsub|d>> is injective. The unit response is
      nonzero since its one-point function is one; faithfulness gives a
      nonzero acting field. Extend the quotient mixture and phase
      correlations arbitrarily off<nbsp><math|<Conf|n>>. Separated tests
      vanish on collision diagonals, so these extensions do not affect
      Definition<nbsp><reference|def:D09>. On<nbsp><math|<Conf|n>>,
      <math|S<rsub|n><rsup|<math-up|mix>>*<around|(|\<pi\><rsub|<math-up|quo>>*v;x|)>=S<rsub|n>*<around|(|v;x|)>>
      by the representative independence after
      Definition<nbsp><reference|def:D10>, so
      Theorem<nbsp><reference|prop:IV> gives the convergence in
      Theorem<nbsp><reference|thm:A>. Faithfulness in
      Theorem<nbsp><reference|prop:RC> and the preceding facts give the label
      clauses of Q3; E1, E6 and Theorem<nbsp><reference|prop:PH> give its
      phase clauses; reconstruction gives Q2 and Q4. These identifications
      use the all-spectator quotient.

      <item><label|step:deduction-trace> Center the trace of this tensor in
      this selected phase. Theorem<nbsp><reference|prop:TR> gives Q6's
      vacuum-centering, amplitude and full-radius clauses;
      I.1.1\U<reference|sec:partII-I.1>.3 of
      Section<nbsp><reference|sec:partII-I> give the operator identity and
      the unique spectral measure. Proposition<nbsp><reference|prop:NF> gives
      Q6's finite-profile exclusion; I.2.2\U<reference|sec:partII-I.2>.4 give
      the additional countertests in B5, with<nbsp><math|\<xi\><rsub|\<ast\>>>
      unchanged.

      <item><label|step:deduction-products> Choose the prescription of J.1.1
      once. Theorem<nbsp><reference|prop:OP> gives Q5;
      J.1.3\U<reference|sec:partII-J.1>.6 give the integrated and nested
      bounds in B6. Theorem<nbsp><reference|prop:CT> and
      J.2.1\U<reference|sec:partII-J.2>.3 of
      Section<nbsp><reference|sec:partII-J> use the same underlying
      prescription, with separate contact projections, functionals and
      clearance, to give the extensions, real bases and subtraction scales.
      This uses its own lattice estimates.

      <item><label|step:deduction-conclusion> Steps 1\U9 give B1\UB6 on the
      same family, table, quotient fields, tensor, phases and selected
      theory. Retain Q1\UQ6 and set<nbsp><math|<blockpenalty>=1>. Their
      quantifier order, lattice approximation, reconstruction, products and
      trace test give Theorem<nbsp><reference|thm:A>.
    </enumerate>
  </render-proof>

  <section|Constants and order of choice><label|sec:constants>

  Table<nbsp><reference|tab:constant-choices> gives the choices for the
  construction. At each fixed stage the requirements in
  Sections<nbsp><reference|sec:partII-B>\U<reference|sec:partII-E>,
  <reference|sec:partII-G.2>, <reference|sec:partII-I.1>
  and<nbsp><reference|sec:partII-J> impose finitely many lower bounds on a
  ratio or an entry level, depending only on earlier data. Costs determining
  a ratio precede that ratio; increasing an entry level preserves earlier
  requirements. The displayed inequalities are properties of these choices.
  They do not define a class of constructions for which the conclusions are
  asserted.

  <big-table|<label|tab:constant-choices>
  <tabular*|<tformat|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|1|cell-width|0.035par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|1|1|cell-hyphen|t>|<cwith|1|-1|2|2|cell-width|0.24par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|2|2|cell-hyphen|t>|<cwith|1|-1|3|3|cell-width|0.69par>|<cwith|1|-1|3|3|cell-hmode|exact>|<cwith|1|-1|3|3|cell-hyphen|t>|<table|<row|<cell|>|<cell|Choice>|<cell|Dependence,
  restrictions and purpose>>|<row|<cell|1>|<cell|Gauge
  normalization;<math|<blockpenalty>\<gtr\>0>>|<cell|Fix<nbsp><math|G>, its
  realization, probability Haar measure and metric,
  then<nbsp><math|<dimG>,<casimir>,b<rsub|0>,<slope>> as in
  Definition<nbsp><reference|def:D01>; <math|<slope>\<gtr\>0>. All later
  choices use these data.>>|<row|<cell|2>|<cell|Frame and predictor cutoffs;
  axial factor>|<cell|Depend on<nbsp><math|G>. The frame and predictor
  cutoffs select the unique-minimizer branches of the block kernel. On a
  radius-<math|R> patch, the total link chord in an eligible axial frame is
  at most <math|a<rsub|<math-up|ax>>*<around|(|2*R+1|)>> times the total
  plaquette chord, with <math|a<rsub|<math-up|ax>>\<geqslant\>16>. Choose the
  cutoffs small enough for branch validity on every patch
  (Lemma<nbsp><reference|lem:B1>).>>|<row|<cell|3>|<cell|Homogeneous bases,
  norms, sections, stencils>|<cell|Depend on<nbsp><math|G,d>. Impose Taylor
  matching, reality and<nbsp><math|<hypercubic>> covariance
  (Lemma<nbsp><reference|lem:A1> and Definitions<nbsp><reference|def:D07>--<reference|def:D08>).>>|<row|<cell|4>|<cell|Stage
  parameters>|<cell|Depend on rows 1--3 and<nbsp><math|j>. Choose derivative
  orders<nbsp><math|\<frak-q\><rsub|j>\<geqslant\>6>, spatial
  powers<nbsp><math|\<varpi\><rsub|j>\<geqslant\>2> and support
  exponents<nbsp><math|\<sigma\><rsub|j>=100>. In
  Section<nbsp><reference|sec:partII-C>, <reference|lem:C1>,
  <math|w<rsub|j><rsup|<math-up|path>>\<gtr\>0> multiplies path length in the
  exponential weight, and<nbsp><math|A<rsub|j><rsup|<math-up|path>>\<gtr\>0>
  bounds the weighted row, cubic and quartic sums. The
  constant<nbsp><math|C<rsub|j>\<geqslant\>1> bounds marked coefficient
  transport (<reference|lem:E2.2>). Clipping coefficients satisfy
  <math|c<rsub|<math-up|dir>,j>\<gtr\>16*c<rsub|<math-up|lin>,j>\<gtr\>0>;
  they set the quadratic and linear pieces of the clipped curvature action.
  Its health cutoff relaxes with distance through
  <math|e<rsup|<math-up|dist>/R<rsub|j><rsup|<math-up|rel>>>>, where
  <math|R<rsub|j><rsup|<math-up|rel>>\<gtr\>0> and
  <math|R<rsub|j><rsup|<math-up|rel>>*w<rsub|j><rsup|<math-up|path>>\<geqslant\>12>.
  Choose<nbsp><math|\<omega\><rsub|j><rsup|<math-up|RG>>\<geqslant\>0> to
  bound the residual in Theorem<nbsp><reference|prop:RG>'s coupling formula
  at stage<nbsp><math|j>. Orders and powers tend to infinity and, along
  levels, are nondecreasing, as are support exponents. All ratio costs are
  now fixed.>>|<row|<cell|5>|<cell|Odd ratios
  <math|\<ell\><rsub|j><rsup|<math-up|st>>>>|<cell|Depend on rows 1--4;
  choose <math|\<ell\><rsub|j><rsup|<math-up|st>>\<geqslant\>3> nondecreasing
  and above every ratio threshold. At <math|j=J<rsub|m+1>> and
  <math|\<ell\><rsub|m>=\<ell\><rsub|j><rsup|<math-up|st>>> require
  <math|<with|math-display|true|<frac|\<omega\><rsub|j><rsup|<math-up|RG>>|log
  \<ell\><rsub|m>>\<leqslant\>min <around|(|<slope>/4,j<rsup|-2>|)><space|0.17em>,<frac|log
  <around|(|1+A<rsub|j><rsup|<math-up|path>>+<around|(|w<rsub|j><rsup|<math-up|path>>|)><rsup|-1>+C<rsub|j>+R<rsub|j><rsup|<math-up|rel>>+\<sigma\><rsub|j>|)>|log
  \<ell\><rsub|m>>\<leqslant\>j<rsup|-2><space|0.17em>.>>These bounds control
  the drift and logarithmic stage costs relative to<nbsp><math|log
  \<ell\><rsub|m>>.>>|<row|<cell|6>|<cell|Exponents and coupling entry
  bounds>|<cell|Depend on rows 1--5. The positive antitone
  exponents<nbsp><math|\<theta\><rsub|j>> control the quadratic loop bound in
  row<nbsp>9. The bounds<nbsp><math|\<beta\><rsub|j><rsup|<math-up|ent>>> are
  lower bounds on the reference coupling when stage<nbsp><math|j> is used.
  Choose them to meet the finite maximum of the remaining stage requirements,
  including those of Sections<nbsp><reference|sec:partII-G.2>,
  <reference|sec:partII-I.1> and<nbsp><reference|sec:partII-J>. Entry bounds
  may be raised.>>|<row|<cell|7>|<cell|<math|<wide|\<beta\>|\<bar\>>>, entry
  levels <math|m<rsub|j><rsup|<math-up|ent>>>, minimum periods
  <math|n<rsub|j><rsup|min>>>|<cell|Depend on rows 1--6. The
  levels<nbsp><math|m<rsub|j><rsup|<math-up|ent>>> delay the first use of
  stage<nbsp><math|j>; <math|n<rsub|j><rsup|min>> are its minimum lattice
  periods. Choose<nbsp><math|<wide|\<beta\>|\<bar\>>\<gtr\>1> large enough
  for the initial coupling requirements and
  for<nbsp><math|t<rsub|m>\<leqslant\>1> at every level. Choose entry levels
  and periods to satisfy the remaining level and geometric requirements.
  Delaying entry preserves earlier requirements.>>|<row|<cell|8>|<cell|<math|J<rsub|m>,\<ell\><rsub|m>,D<rsub|m>>,
  <math|a<rsub|m>,L<rsub|p>>, <math|<reflevel|d>>>|<cell|Depend on rows 1--7.
  Set <math|D<rsub|0>=1>, <math|D<rsub|m+1>=\<ell\><rsub|m>*D<rsub|m>>,
  <math|a<rsub|m>=D<rsub|m><rsup|-1>>, <math|s<rsub|m>=log D<rsub|m>>, with
  <math|\<ell\><rsub|m>=\<ell\><rsup|<math-up|st>><rsub|J<rsub|m+1>>> and
  <math|4\<leqslant\>J<rsub|m>\<leqslant\>J<rsub|m+1>\<leqslant\>J<rsub|m>+1>,
  <math|J<rsub|m>\<to\>\<infty\>>. Require
  <math|0\<less\>\<theta\><rsub|J<rsub|m>>\<leqslant\>J<rsub|m><rsup|-1>>,
  <math|log \<ell\><rsub|m>\<to\>\<infty\>>, <math|log
  \<ell\><rsub|m>/s<rsub|m>\<to\>0>. Choose strictly
  increasing<nbsp><math|L<rsub|p>> with<nbsp><math|4\<mid\>L<rsub|p>> and
  every positive integer dividing infinitely many<nbsp><math|L<rsub|p>>.
  Require <math|L<rsub|p>*D<rsub|m>\<geqslant\>100*<around|(|B<rsub|m>+1|)>>
  and <math|L<rsub|p>*D<rsub|m+1>\<geqslant\>100*<around|(|<around|(|J<rsub|m+1>+3|)>*\<ell\><rsub|m>+1|)>>.
  Choose <math|J<rsub|<reflevel|d>>\<geqslant\>d+3>, with
  <math|\<frak-q\><rsub|J<rsub|m>>\<geqslant\>d+1>,
  <math|\<varpi\><rsub|J<rsub|m>>\<geqslant\>d> for
  <math|m\<geqslant\><reflevel|d>>.>>|<row|<cell|9>|<cell|Derived level
  scales>|<cell|No new choices. Set <math|<with|math-display|true|<refbeta><rsub|m>=<wide|\<beta\>|\<bar\>>+<slope>s<rsub|m>\<gtr\>1,<space|2em><cutoffsize><rsub|m>=exp
  <around|(|<around|(|log log <refbeta><rsub|m>|)><rsup|2>|)><space|0.17em>,t<rsub|m>=<refbeta><rsub|m><rsup|-1/2><cutoffsize><rsub|m>,<space|2em>B<rsub|m>=<around|\<lceil\>|<around|(|log
  <refbeta><rsub|m>|)><rsup|2>|\<rceil\>><space|0.17em>,\<epsilon\><rsub|m><rsup|<math-up|reg>>=<refbeta><rsub|m><rsup|-11/10>,<space|2em>\<epsilon\><rsub|m><rsup|<math-up|for>>=e<rsup|-<around|(|<cutoffsize><rsub|m>|)><rsup|1/5>><space|0.17em>,\<Lambda\><rsub|m><rsup|<math-up|loop>>=2<around|(|<cutoffsize><rsub|m>|)><rsup|\<theta\><rsub|J<rsub|m>>>,<space|2em>\<frak-B\><rsub|m>=<around|[|<refbeta><rsub|m>/2,2<refbeta><rsub|m>|]><space|0.17em>.>>These
  give the field thresholds, activity bounds and coupling bands. The
  quantity<nbsp><math|\<Lambda\><rsub|m><rsup|<math-up|loop>>> bounds the
  weighted quadratic loop sum in Section<nbsp><reference|sec:partII-C>,
  <reference|lem:C1>.>>|<row|<cell|10>|<cell|Actions, classes, recursion,
  trajectories, couplings; width<nbsp><math|w<rsub|<math-up|tun>>>>|<cell|Depend
  on rows 1--9. Choose the path actions and admissible subsets, the specified
  recursion and its trajectories for every finite<nbsp><math|N,p>, all with
  the common level-zero endpoint (Theorem<nbsp><reference|prop:MT>). In
  Section<nbsp><reference|sec:partII-E>, <reference|lem:E1.3>,
  <math|w<rsub|<math-up|tun>>\<gtr\>0> is the half-width of the endpoint
  interval <math|<wide|\<beta\>|\<bar\>>+<around|[|-w<rsub|<math-up|tun>>,w<rsub|<math-up|tun>>|]>>,
  independent of<nbsp><math|N,p>. The tuned bare coupling for
  endpoint<nbsp><math|<wide|\<beta\>|\<bar\>>+w<rsub|<math-up|tun>>*s>
  extends holomorphically in<nbsp><math|s>
  to<nbsp><math|<around|\||s|\|>\<less\>1>.>>|<row|<cell|11>|<cell|Marked
  transfers, terminal maps, insertions>|<cell|Depend on rows 1--10; impose
  reference normalization (Definition<nbsp><reference|def:D08>). Fix them
  before any prescribed volume sequence.>>|<row|<cell|12>|<cell|<math|<math-ss|p>>,
  then <math|<math-ss|q>,S,F<rsub|d>,\<partial\><rsub|a>,\<cal-L\>>>|<cell|Prescribe
  arbitrary increasing<nbsp><math|<math-ss|p>> first.
  Theorem<nbsp><reference|prop:IV> and Proposition<nbsp><reference|prop:FC>
  give the refinement and continuum fields. Theorem<nbsp><reference|prop:UV>
  retains the full inner limit.>>|<row|<cell|13>|<cell|Comparison radii,
  frames, <math|J>, charges, <math|c<rsub|\<star\>>,R,T>>|<cell|Depend on row
  12 and the fixed lattice family. Use Proposition<nbsp><reference|prop:MC>,
  then Theorem<nbsp><reference|prop:ST> and
  Proposition<nbsp><reference|prop:SC>. Refine only comparison
  radii.>>|<row|<cell|14>|<cell|Slab operators,
  <math|<phases>,\<nu\>,S<rsup|\<xi\>>>, then<nbsp><math|\<xi\><rsub|\<ast\>>>>|<cell|Depend
  on earlier data. Theorem<nbsp><reference|prop:PH> gives the phase
  decomposition. Choose<nbsp><math|\<xi\><rsub|\<ast\>>> from the
  full-measure set with one-dimensional time-axis OS ground space
  (<reference|lem:H1.3>). This choice precedes reconstruction and uses only
  that ground-space property.>>|<row|<cell|15>|<cell|Every-phase theories and
  continuations; <math|\<Theta\>,<tracespectrum>>>|<cell|Depend on earlier
  data. Theorem<nbsp><reference|prop:RC> reconstructs the theories.
  Definition<nbsp><reference|def:D16> centers the trace in the already
  selected phase; Theorem<nbsp><reference|prop:TR> gives its short-distance
  law; <reference|lem:I1.2> supplies its spectral
  measure.>>|<row|<cell|16>|<cell|OPE prescription; contact projections,
  distributions, bases, scales>|<cell|Depend on rows 12--14 and the fixed
  family. Theorems<nbsp><reference|prop:OP> and<nbsp><reference|prop:CT> use
  the same original fields and correlation functionals. The contact
  projections, separating functionals and clearance are chosen separately
  from those used for the product coefficients.>>|<row|<cell|17>|<cell|Estimate
  constants and thresholds>|<cell|Depend only on the fixed data preceding
  them in each statement. They have no later position, volume or state
  dependence wherever uniformity is asserted.>>>>>|Choices in dependence
  order. Stage choices are made at each fixed<nbsp><math|j\<geqslant\>4>
  before entry levels.>

  <part|Proofs>

  <reset-counter|section>

  <ym-letter-sections><ym-theorems-by-subsection>

  <section|Local polynomial fields><label|sec:partII-A>

  <em|This section is under construction.>

  <\definition>
    <dueto|Local sections><label|def:D19> To be stated here.
  </definition>

  <\lemma>
    <dueto|Taylor-normalized sections><label|lem:A1> To be stated here.
  </lemma>

  <section|Gauges and block integration><label|sec:partII-B>

  <em|This section is under construction.>

  <\definition>
    <dueto|Axial frames><label|def:D20a> To be stated here.
  </definition>

  <\definition>
    <dueto|Symmetric frame choice><label|def:D20b> To be stated here.
  </definition>

  <\definition>
    <dueto|Coarse predictors><label|def:D21> To be stated here.
  </definition>

  <\lemma>
    <dueto|Branches and normalization><label|lem:B1> To be stated here.
  </lemma>

  <section|Path actions and the coupling reset><label|sec:partII-C>

  <em|This section is under construction.>

  <\definition>
    <dueto|Curvature slots><label|def:D22> To be stated here.
  </definition>

  <\definition>
    <dueto|Path action><label|def:D23> To be stated here.
  </definition>

  <\lemma>
    <dueto|Path bounds><label|lem:C1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Kinetic and quadratic cancellations><label|lem:C2> To be stated
    here.
  </lemma>

  <section|Activities and the inductive step><label|sec:partII-D>

  <em|This section is under construction.>

  <\definition>
    <dueto|Regular activities><label|def:D24> To be stated here.
  </definition>

  <\definition>
    <dueto|Forced activities><label|def:D25> To be stated here.
  </definition>

  <\lemma>
    <dueto|Activity bounds and covariance><label|lem:D1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Specified recursion><label|lem:D2> To be stated here.
  </lemma>

  <\definition>
    <dueto|Continuity of representations><label|def:D25a> To be stated here.
  </definition>

  <\lemma>
    <dueto|Wilson initialization><label|lem:D3> To be stated here.
  </lemma>

  <section|Trajectories, marked fields and ultraviolet
  convergence><label|sec:partII-E>

  <em|This section is under construction.>

  <subsection|Trajectories and tuning><label|sec:partII-E.1>

  <\lemma>
    <dueto|Scale and period choices><label|lem:E1.1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Exact trajectory identities><label|lem:E1.2> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Analytic endpoint tuning><label|lem:E1.3> To be stated here.
  </lemma>

  <subsection|Marked fields and volume-uniform
  estimates><label|sec:partII-E.2>

  <\definition>
    <dueto|Marked density><label|def:D26> To be stated here.
  </definition>

  <\lemma>
    <dueto|Reference normalization><label|lem:E2.1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Symmetry and the unit><label|lem:E2.1a> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Marked remainders and transport><label|lem:E2.2> To be stated
    here.
  </lemma>

  <\lemma>
    <dueto|Marked local format><label|lem:E2.2a> To be stated here.
  </lemma>

  <\definition>
    <dueto|Chessboard root><label|def:D27> To be stated here.
  </definition>

  <\lemma>
    <dueto|Centered bound><label|lem:E2.3> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Difference estimate><label|lem:E2.4> To be stated here.
  </lemma>

  <subsection|Full ultraviolet convergence><label|sec:partII-E.3>

  <\lemma>
    <dueto|Lattice-point convergence><label|lem:E3.1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Interpolation and smearing><label|lem:E3.2> To be stated here.
  </lemma>

  <section|Infinite volume and field calculus><label|sec:partII-F>

  <em|This section is under construction.>

  <\lemma>
    <dueto|Generic volume kernels><label|lem:F1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Quotient compatibility><label|lem:F2> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Euclidean properties><label|lem:F3> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Repeated reflected words><label|lem:F4> To be stated here.
  </lemma>

  <section|Free fields, Ward identities and rotations><label|sec:partII-G>

  <em|This section is under construction.>

  <subsection|Free fields><label|sec:partII-G.1>

  <\lemma>
    <dueto|Free positivity and stress><label|lem:G1.1> To be stated here.
  </lemma>

  <subsection|Free comparison and the conserved line><label|sec:partII-G.2>

  <\lemma>
    <dueto|Stable weak comparison><label|lem:G2.1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Conserved line><label|lem:G2.2> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Raw shell charges><label|lem:G2.3> To be stated here.
  </lemma>

  <subsection|Ward identities and rotations><label|sec:partII-G.3>

  <\lemma>
    <dueto|Rotation and charge identification><label|lem:G3.1> To be stated
    here.
  </lemma>

  <\lemma>
    <dueto|Covariance and normalized tensor><label|lem:G3.2> To be stated
    here.
  </lemma>

  <\lemma>
    <dueto|Transported infinitesimal actions><label|lem:G3.3> To be stated
    here.
  </lemma>

  <section|Slabs, phases and reconstruction><label|sec:partII-H>

  <em|This section is under construction.>

  <subsection|Slabs and phases><label|sec:partII-H.1>

  <\lemma>
    <dueto|Slab operators><label|lem:H1.1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Compression algebra><label|lem:H1.2> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Phase fields and selection><label|lem:H1.3> To be stated here.
  </lemma>

  <subsection|Reconstruction><label|sec:partII-H.2>

  <\lemma>
    <dueto|Fields and boundary distributions><label|lem:H2.1> To be stated
    here.
  </lemma>

  <\lemma>
    <dueto|OS comparison and irreducibility><label|lem:H2.2> To be stated
    here.
  </lemma>

  <\lemma>
    <dueto|Uniform low-energy bounds><label|lem:H2.3> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Phase dependence and continued stress><label|lem:H2.4> To be
    stated here.
  </lemma>

  <section|The trace law and non-free comparisons><label|sec:partII-I>

  <em|This section is under construction.>

  <subsection|Trace and spectrum><label|sec:partII-I.1>

  <\lemma>
    <dueto|Centering as an operator identity><label|lem:I1.1> To be stated
    here.
  </lemma>

  <\lemma>
    <dueto|Unique trace spectral measure><label|lem:I1.2> To be stated here.
  </lemma>

  <\lemma>
    <dueto|High-energy trace limit><label|lem:I1.3> To be stated here.
  </lemma>

  <subsection|Precise non-free comparisons><label|sec:partII-I.2>

  <\lemma>
    <dueto|Finite Wick obstruction><label|lem:I2.1> To be stated here.
  </lemma>

  <\definition>
    <dueto|Polynomial mass-shell pairings><label|def:D28> To be stated here.
  </definition>

  <\lemma>
    <dueto|Polynomial countertest><label|lem:I2.2> To be stated here.
  </lemma>

  <\definition>
    <dueto|Maxwell Fock space><label|def:D29> To be stated here.
  </definition>

  <\definition>
    <dueto|Coherent comparison vectors><label|def:D30> To be stated here.
  </definition>

  <\lemma>
    <dueto|Fock countertest><label|lem:I2.3> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Localized averaged countertest><label|lem:I2.4> To be stated here.
  </lemma>

  <section|Products and contact subtractions><label|sec:partII-J>

  <em|This section is under construction.>

  <subsection|Products and nested clusters><label|sec:partII-J.1>

  <\definition>
    <dueto|Finite correlation projection><label|def:D31> To be stated here.
  </definition>

  <\definition>
    <dueto|Symmetric projection><label|def:D32> To be stated here.
  </definition>

  <\definition>
    <dueto|OPE coefficients><label|def:D33> To be stated here.
  </definition>

  <\lemma>
    <dueto|One channel prescription><label|lem:J1.1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Separated estimates><label|lem:J1.2> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Integrated separated estimate><label|lem:J1.3> To be stated here.
  </lemma>

  <\definition>
    <dueto|Nested geometry and rates><label|def:D34> To be stated here.
  </definition>

  <\definition>
    <dueto|Iterated coefficient><label|def:D35> To be stated here.
  </definition>

  <\lemma>
    <dueto|Nested coefficient estimate><label|lem:J1.4> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Nested tested estimate><label|lem:J1.5> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Integrated nested estimates><label|lem:J1.6> To be stated here.
  </lemma>

  <subsection|Contact subtractions><label|sec:partII-J.2>

  <\definition>
    <dueto|Contact detector projection><label|def:D36> To be stated here.
  </definition>

  <\definition>
    <dueto|Coherent contact projections><label|def:D37> To be stated here.
  </definition>

  <\definition>
    <dueto|Contact grades and clearance><label|def:D38> To be stated here.
  </definition>

  <\lemma>
    <dueto|Real bases and scales><label|lem:J2.1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Contact extension><label|lem:J2.2> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Local distribution order><label|lem:J2.3> To be stated here.
  </lemma>
</body>

<\initial>
  <\collection>
    <associate|html-title|The construction of four-dimensional quantum
    Yang\UMills theory \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|I|3>>
    <associate|auto-10|<tuple|4|13>>
    <associate|auto-11|<tuple|5|17>>
    <associate|auto-12|<tuple|6|20>>
    <associate|auto-13|<tuple|7|23>>
    <associate|auto-14|<tuple|8|26>>
    <associate|auto-15|<tuple|9|30>>
    <associate|auto-16|<tuple|1|31>>
    <associate|auto-17|<tuple|II|32>>
    <associate|auto-18|<tuple|A|32>>
    <associate|auto-19|<tuple|B|32>>
    <associate|auto-2|<tuple|1|3>>
    <associate|auto-20|<tuple|C|32>>
    <associate|auto-21|<tuple|D|33>>
    <associate|auto-22|<tuple|E|33>>
    <associate|auto-23|<tuple|E.1|33>>
    <associate|auto-24|<tuple|E.2|33>>
    <associate|auto-25|<tuple|E.3|34>>
    <associate|auto-26|<tuple|F|34>>
    <associate|auto-27|<tuple|G|34>>
    <associate|auto-28|<tuple|G.1|34>>
    <associate|auto-29|<tuple|G.2|34>>
    <associate|auto-3|<tuple|2|3>>
    <associate|auto-30|<tuple|G.3|35>>
    <associate|auto-31|<tuple|H|35>>
    <associate|auto-32|<tuple|H.1|35>>
    <associate|auto-33|<tuple|H.2|35>>
    <associate|auto-34|<tuple|I|35>>
    <associate|auto-35|<tuple|I.1|35>>
    <associate|auto-36|<tuple|I.2|36>>
    <associate|auto-37|<tuple|J|36>>
    <associate|auto-38|<tuple|J.1|36>>
    <associate|auto-39|<tuple|J.2|36>>
    <associate|auto-4|<tuple|3|5>>
    <associate|auto-5|<tuple|3.1|5>>
    <associate|auto-6|<tuple|3.2|6>>
    <associate|auto-7|<tuple|3.3|9>>
    <associate|auto-8|<tuple|3.4|9>>
    <associate|auto-9|<tuple|3.5|11>>
    <associate|def:D01|<tuple|2.1|3>>
    <associate|def:D02|<tuple|2.2|4>>
    <associate|def:D03|<tuple|2.3|4>>
    <associate|def:D04|<tuple|3.1|6>>
    <associate|def:D05a|<tuple|3.3|8>>
    <associate|def:D05b|<tuple|3.4|8>>
    <associate|def:D06|<tuple|3.2|7>>
    <associate|def:D07|<tuple|3.7|11>>
    <associate|def:D08|<tuple|3.8|12>>
    <associate|def:D09|<tuple|4.3|14>>
    <associate|def:D10|<tuple|4.8|15>>
    <associate|def:D11|<tuple|4.9|16>>
    <associate|def:D12|<tuple|5.1|17>>
    <associate|def:D13|<tuple|5.3|18>>
    <associate|def:D14|<tuple|6.1|20>>
    <associate|def:D14a|<tuple|6.3|21>>
    <associate|def:D14b|<tuple|6.4|21>>
    <associate|def:D14c|<tuple|6.10|21>>
    <associate|def:D14d|<tuple|6.11|22>>
    <associate|def:D14e|<tuple|6.12|22>>
    <associate|def:D14f|<tuple|6.13|22>>
    <associate|def:D15|<tuple|6.14|22>>
    <associate|def:D16|<tuple|7.1|23>>
    <associate|def:D17|<tuple|7.3|24>>
    <associate|def:D18|<tuple|7.5|25>>
    <associate|def:D19|<tuple|A.1|32>>
    <associate|def:D20a|<tuple|B.1|32>>
    <associate|def:D20b|<tuple|B.2|32>>
    <associate|def:D21|<tuple|B.3|32>>
    <associate|def:D22|<tuple|C.1|32>>
    <associate|def:D23|<tuple|C.2|32>>
    <associate|def:D24|<tuple|D.1|33>>
    <associate|def:D25|<tuple|D.2|33>>
    <associate|def:D25a|<tuple|D.5|33>>
    <associate|def:D26|<tuple|E.2.1|33>>
    <associate|def:D27|<tuple|E.2.6|33>>
    <associate|def:D28|<tuple|I.2.2|36>>
    <associate|def:D29|<tuple|I.2.4|36>>
    <associate|def:D30|<tuple|I.2.5|36>>
    <associate|def:D31|<tuple|J.1.1|36>>
    <associate|def:D32|<tuple|J.1.2|36>>
    <associate|def:D33|<tuple|J.1.3|36>>
    <associate|def:D34|<tuple|J.1.7|36>>
    <associate|def:D35|<tuple|J.1.8|36>>
    <associate|def:D36|<tuple|J.2.1|36>>
    <associate|def:D37|<tuple|J.2.2|36>>
    <associate|def:D38|<tuple|J.2.3|36>>
    <associate|def:E1-E3|<tuple|4.4|14>>
    <associate|def:E4-E5|<tuple|4.5|15>>
    <associate|def:E6-E7|<tuple|4.6|15>>
    <associate|def:Q0|<tuple|8.1|26>>
    <associate|def:Q1|<tuple|8.2|27>>
    <associate|def:Q2|<tuple|6.9|21>>
    <associate|def:Q3|<tuple|8.3|27>>
    <associate|def:Q4|<tuple|8.4|27>>
    <associate|def:Q5|<tuple|8.5|27>>
    <associate|def:Q6|<tuple|8.6|28>>
    <associate|def:W0|<tuple|6.5|21>>
    <associate|def:W1|<tuple|6.6|21>>
    <associate|def:W2|<tuple|6.7|21>>
    <associate|def:W3|<tuple|6.8|21>>
    <associate|eq:I12-Wilson-initialization|<tuple|3.13|9>>
    <associate|eq:I12-activity-caps|<tuple|3.12|8>>
    <associate|eq:I12-bare-slope|<tuple|2.3|5>>
    <associate|eq:I12-clipping|<tuple|3.8|7>>
    <associate|eq:I12-drift-sum|<tuple|3.14|10>>
    <associate|eq:I12-endpoint-tuning|<tuple|3.15|10>>
    <associate|eq:I12-forced-eligibility|<tuple|3.8|6>>
    <associate|eq:I12-framed-connector|<tuple|3.4|6>>
    <associate|eq:I12-levels|<tuple|3.1|5>>
    <associate|eq:I12-marked-evolution|<tuple|3.17|11>>
    <associate|eq:I12-marked-remainders|<tuple|3.18|12>>
    <associate|eq:I12-marked-representation|<tuple|3.19|12>>
    <associate|eq:I12-partition-preservation|<tuple|3.7|6>>
    <associate|eq:I12-path-action|<tuple|3.9|7>>
    <associate|eq:I12-physical-placement|<tuple|2.2|4>>
    <associate|eq:I12-predictor|<tuple|3.5|6>>
    <associate|eq:I12-price-chord|<tuple|2.1|3>>
    <associate|eq:I12-representation|<tuple|3.11|7>>
    <associate|eq:I12-scales|<tuple|3.2|5>>
    <associate|eq:I12-section-Taylor|<tuple|3.16|11>>
    <associate|eq:I12-tag-mass|<tuple|3.6|6>>
    <associate|lem:A1|<tuple|A.2|32>>
    <associate|lem:B1|<tuple|B.4|32>>
    <associate|lem:C1|<tuple|C.3|32>>
    <associate|lem:C2|<tuple|C.4|32>>
    <associate|lem:D1|<tuple|D.3|33>>
    <associate|lem:D2|<tuple|D.4|33>>
    <associate|lem:D3|<tuple|D.6|33>>
    <associate|lem:E1.1|<tuple|E.1.1|33>>
    <associate|lem:E1.2|<tuple|E.1.2|33>>
    <associate|lem:E1.3|<tuple|E.1.3|33>>
    <associate|lem:E2.1|<tuple|E.2.2|33>>
    <associate|lem:E2.1a|<tuple|E.2.3|33>>
    <associate|lem:E2.2|<tuple|E.2.4|33>>
    <associate|lem:E2.2a|<tuple|E.2.5|33>>
    <associate|lem:E2.3|<tuple|E.2.7|34>>
    <associate|lem:E2.4|<tuple|E.2.8|34>>
    <associate|lem:E3.1|<tuple|E.3.1|34>>
    <associate|lem:E3.2|<tuple|E.3.2|34>>
    <associate|lem:F1|<tuple|F.1|34>>
    <associate|lem:F2|<tuple|F.2|34>>
    <associate|lem:F3|<tuple|F.3|34>>
    <associate|lem:F4|<tuple|F.4|34>>
    <associate|lem:G1.1|<tuple|G.1.1|34>>
    <associate|lem:G2.1|<tuple|G.2.1|34>>
    <associate|lem:G2.2|<tuple|G.2.2|34>>
    <associate|lem:G2.3|<tuple|G.2.3|34>>
    <associate|lem:G3.1|<tuple|G.3.1|35>>
    <associate|lem:G3.2|<tuple|G.3.2|35>>
    <associate|lem:G3.3|<tuple|G.3.3|35>>
    <associate|lem:H1.1|<tuple|H.1.1|35>>
    <associate|lem:H1.2|<tuple|H.1.2|35>>
    <associate|lem:H1.3|<tuple|H.1.3|35>>
    <associate|lem:H2.1|<tuple|H.2.1|35>>
    <associate|lem:H2.2|<tuple|H.2.2|35>>
    <associate|lem:H2.3|<tuple|H.2.3|35>>
    <associate|lem:H2.4|<tuple|H.2.4|35>>
    <associate|lem:I1.1|<tuple|I.1.1|35>>
    <associate|lem:I1.2|<tuple|I.1.2|35>>
    <associate|lem:I1.3|<tuple|I.1.3|36>>
    <associate|lem:I2.1|<tuple|I.2.1|36>>
    <associate|lem:I2.2|<tuple|I.2.3|36>>
    <associate|lem:I2.3|<tuple|I.2.6|36>>
    <associate|lem:I2.4|<tuple|I.2.7|36>>
    <associate|lem:J1.1|<tuple|J.1.4|36>>
    <associate|lem:J1.2|<tuple|J.1.5|36>>
    <associate|lem:J1.3|<tuple|J.1.6|36>>
    <associate|lem:J1.4|<tuple|J.1.9|36>>
    <associate|lem:J1.5|<tuple|J.1.10|36>>
    <associate|lem:J1.6|<tuple|J.1.11|36>>
    <associate|lem:J2.1|<tuple|J.2.4|36>>
    <associate|lem:J2.2|<tuple|J.2.5|36>>
    <associate|lem:J2.3|<tuple|J.2.6|36>>
    <associate|prop:CT|<tuple|7.7|26>>
    <associate|prop:FC|<tuple|4.10|16>>
    <associate|prop:IV|<tuple|4.7|15>>
    <associate|prop:MC|<tuple|5.2|17>>
    <associate|prop:MT|<tuple|3.6|10>>
    <associate|prop:NF|<tuple|7.4|25>>
    <associate|prop:OP|<tuple|7.6|25>>
    <associate|prop:PH|<tuple|6.2|20>>
    <associate|prop:RC|<tuple|6.15|22>>
    <associate|prop:RG|<tuple|3.5|9>>
    <associate|prop:SC|<tuple|5.5|19>>
    <associate|prop:ST|<tuple|5.4|19>>
    <associate|prop:TR|<tuple|7.2|23>>
    <associate|prop:UB|<tuple|4.1|13>>
    <associate|prop:UV|<tuple|4.2|14>>
    <associate|sec:constants|<tuple|9|30>>
    <associate|sec:continuum|<tuple|4|13>>
    <associate|sec:introduction|<tuple|1|3>>
    <associate|sec:main-theorems|<tuple|8|26>>
    <associate|sec:partII-A|<tuple|A|32>>
    <associate|sec:partII-B|<tuple|B|32>>
    <associate|sec:partII-C|<tuple|C|32>>
    <associate|sec:partII-D|<tuple|D|33>>
    <associate|sec:partII-E|<tuple|E|33>>
    <associate|sec:partII-E.1|<tuple|E.1|33>>
    <associate|sec:partII-E.2|<tuple|E.2|33>>
    <associate|sec:partII-E.3|<tuple|E.3|34>>
    <associate|sec:partII-F|<tuple|F|34>>
    <associate|sec:partII-G|<tuple|G|34>>
    <associate|sec:partII-G.1|<tuple|G.1|34>>
    <associate|sec:partII-G.2|<tuple|G.2|34>>
    <associate|sec:partII-G.3|<tuple|G.3|35>>
    <associate|sec:partII-H|<tuple|H|35>>
    <associate|sec:partII-H.1|<tuple|H.1|35>>
    <associate|sec:partII-H.2|<tuple|H.2|35>>
    <associate|sec:partII-I|<tuple|I|35>>
    <associate|sec:partII-I.1|<tuple|I.1|35>>
    <associate|sec:partII-I.2|<tuple|I.2|36>>
    <associate|sec:partII-J|<tuple|J|36>>
    <associate|sec:partII-J.1|<tuple|J.1|36>>
    <associate|sec:partII-J.2|<tuple|J.2|36>>
    <associate|sec:phases|<tuple|6|20>>
    <associate|sec:renormalization|<tuple|3|5>>
    <associate|sec:stress|<tuple|5|17>>
    <associate|sec:trace-products|<tuple|7|23>>
    <associate|sec:wilson|<tuple|2|3>>
    <associate|step:deduction-choice|<tuple|1|29>>
    <associate|step:deduction-conclusion|<tuple|10|30>>
    <associate|step:deduction-family|<tuple|2|29>>
    <associate|step:deduction-hierarchy|<tuple|7|30>>
    <associate|step:deduction-phase|<tuple|6|30>>
    <associate|step:deduction-products|<tuple|9|30>>
    <associate|step:deduction-stress|<tuple|5|30>>
    <associate|step:deduction-trace|<tuple|8|30>>
    <associate|step:deduction-uv|<tuple|3|29>>
    <associate|step:deduction-volume|<tuple|4|30>>
    <associate|tab:constant-choices|<tuple|1|31>>
    <associate|thm:A|<tuple|A|28>>
    <associate|thm:B|<tuple|B|29>>
    <associate|thm:IV|<tuple|4.7|15>>
    <associate|thm:ST|<tuple|5.4|19>>
    <associate|thm:UV|<tuple|4.2|14>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Choices in
      dependence order. Stage choices are made at each fixed
      <no-break><specific|screen|<resize|<move|<with|color|<quote|#A0A0FF>|->|-0.3em|>|0em||0em|>><with|mode|<quote|math>|j\<geqslant\>4>
      before entry levels.>|<pageref|auto-16>>
    </associate>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|I<space|2spc>The
      theorem and the architecture of its proof>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Wilson
      theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Renormalization>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Scales and the block map
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>The density and its norms
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|3.3<space|2spc>The inductive step
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|3.4<space|2spc>Multiscale trajectories
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|3.5<space|2spc>Local fields
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>The
      continuum limit> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Stress
      and rotations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Phases
      and reconstruction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Trace
      and products> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Main
      theorems> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Constants
      and order of choice> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|II<space|2spc>Proofs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|A<space|2spc>Local
      polynomial fields> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|B<space|2spc>Gauges
      and block integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|C<space|2spc>Path
      actions and the coupling reset> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|D<space|2spc>Activities
      and the inductive step> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|E<space|2spc>Trajectories,
      marked fields and ultraviolet convergence>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn>

      <with|par-left|<quote|1tab>|E.1<space|2spc>Trajectories and tuning
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|E.2<space|2spc>Marked fields and
      volume-uniform estimates <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|E.3<space|2spc>Full ultraviolet convergence
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|F<space|2spc>Infinite
      volume and field calculus> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|G<space|2spc>Free
      fields, Ward identities and rotations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27><vspace|0.5fn>

      <with|par-left|<quote|1tab>|G.1<space|2spc>Free fields
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|G.2<space|2spc>Free comparison and the
      conserved line <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|1tab>|G.3<space|2spc>Ward identities and
      rotations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|H<space|2spc>Slabs,
      phases and reconstruction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31><vspace|0.5fn>

      <with|par-left|<quote|1tab>|H.1<space|2spc>Slabs and phases
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|H.2<space|2spc>Reconstruction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|I<space|2spc>The
      trace law and non-free comparisons>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34><vspace|0.5fn>

      <with|par-left|<quote|1tab>|I.1<space|2spc>Trace and spectrum
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|1tab>|I.2<space|2spc>Precise non-free comparisons
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|J<space|2spc>Products
      and contact subtractions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37><vspace|0.5fn>

      <with|par-left|<quote|1tab>|J.1<space|2spc>Products and nested clusters
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|J.2<space|2spc>Contact subtractions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>
    </associate>
  </collection>
</auxiliary>
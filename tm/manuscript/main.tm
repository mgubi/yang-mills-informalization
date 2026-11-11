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

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|10<space|2spc>Local
    polynomial fields> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|11<space|2spc>Gauges
    and block integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|12<space|2spc>Path
    actions and the coupling reset> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20><vspace|0.5fn>

    <with|par-left|1tab|Curvature coordinates
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21>>

    <with|par-left|1tab|Fourth-order matching
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-22>>

    <with|par-left|1tab|The determinant comparison
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-23>>

    <with|par-left|1tab|The logarithmic coefficient
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-24>>

    <with|par-left|1tab|The scalar reset <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|13<space|2spc>Activities
    and the inductive step> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|14<space|2spc>Trajectories,
    marked fields and ultraviolet convergence>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-27><vspace|0.5fn>

    <with|par-left|1tab|14.1<space|2spc>Trajectories and tuning
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28>>

    <with|par-left|1tab|14.2<space|2spc>Marked fields and volume-uniform
    estimates <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-29>>

    <with|par-left|3tab|<with|font-size|0.92|Corrections to marked
    insertions. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-30>>>

    <with|par-left|3tab|<with|font-size|0.92|Short-distance rank tests.
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-31>>>

    <with|par-left|1tab|14.3<space|2spc>Full ultraviolet convergence
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|15<space|2spc>Infinite
    volume and field calculus> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-33><vspace|0.5fn>

    <with|par-left|1tab|15.1<space|2spc>Volume limits
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34>>

    <with|par-left|3tab|<with|font-size|0.92|Symmetries of the limit.
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>>>

    <with|par-left|1tab|15.2<space|2spc>Interior roots and errors
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36>>

    <with|par-left|1tab|15.3<space|2spc>Corrected coefficients
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-37>>

    <with|par-left|1tab|15.4<space|2spc>Euclidean properties
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-38>>

    <with|par-left|1tab|15.5<space|2spc>Repeated reflected words
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-39>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|16<space|2spc>Free
    fields, Ward identities and rotations>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-40><vspace|0.5fn>

    <with|par-left|1tab|16.1<space|2spc>Free fields
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-41>>

    <with|par-left|1tab|16.2<space|2spc>Free comparison and the conserved
    line <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-42>>

    <with|par-left|1tab|16.3<space|2spc>Ward identities and rotations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-43>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|17<space|2spc>Slabs,
    phases and reconstruction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-44><vspace|0.5fn>

    <with|par-left|1tab|17.1<space|2spc>Slabs and phases
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-45>>

    <with|par-left|1tab|17.2<space|2spc>Reconstruction
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-46>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|18<space|2spc>The
    trace law and non-free comparisons> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-47><vspace|0.5fn>

    <with|par-left|1tab|18.1<space|2spc>Trace and spectrum
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48>>

    <with|par-left|1tab|18.2<space|2spc>Precise non-free comparisons
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-49>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|19<space|2spc>Products
    and contact subtractions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-50><vspace|0.5fn>

    <with|par-left|1tab|19.1<space|2spc>Products and nested clusters
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-51>>

    <with|par-left|1tab|19.2<space|2spc>Contact subtractions
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-52>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|References>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53><vspace|0.5fn>
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
    <label|eq:I12-tag-mass>\<lambda\><rsup|<math-up|tag>>*<around|(|U,\<alpha\><rsub|<math-up|tag>>|)>\<geqslant\>0,<space|2em><big|sum><rsub|\<alpha\><rsub|<math-up|tag>>>\<lambda\><rsup|<math-up|tag>>*<around|(|U,\<alpha\><rsub|<math-up|tag>>|)>=1<space|0.17em>.
  </equation>

  <\definition>
    <dueto|Exact block map><label|def:D04> For fine links <math|U> and coarse
    links <math|V>, define

    <\align*>
      <tformat|<table|<row|<cell|<blockkernel|m><rsub|\<beta\>><around|(|U,V|)>>|<cell|=<big|sum><rsub|\<alpha\><rsub|<math-up|tag>>>\<lambda\><rsup|<math-up|tag>>*<around|(|U,\<alpha\><rsub|<math-up|tag>>|)>*<big|prod><rsub|e<math-up|coarse>><frac|e<rsup|-<blockpenalty>\<beta\><wilsonterm><around|(|V<rsub|e>*Q<rsub|e><rsup|<math-up|pred>>*<around|(|U,\<alpha\><rsub|<math-up|tag>>|)><rsup|-1>|)>>|<big|int><rsub|G>e<rsup|-<blockpenalty>\<beta\><wilsonterm><around|(|u|)>>*<space|0.17em>d*h<around|(|u|)>>,>>|<row|<cell|<around|(|<blockmap|m><rsub|\<beta\>>f|)><around|(|V|)>>|<cell|=<big|int><blockkernel|m><rsub|\<beta\>><around|(|U,V|)>*f<around|(|U|)>*<space|0.17em>d*U<space|0.17em>.>>>>
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
  clipping constants, chosen with <math|c<rsub|<math-up|dir>>\<leqslant\>min
  <around|(|\<gamma\><rsub|J<rsub|m>>,1|)>> as in row<nbsp>4 of
  Section<nbsp><reference|sec:constants>, and
  <math|R<rsub|J<rsub|m>><rsup|<math-up|rel>>\<gtr\>0> for the relaxation
  length. Distances use the unit-lattice sup metric. Set

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
  Lemmas<nbsp><reference|lem:C1>\U<reference|lem:C2>. In particular the
  action is affine in<nbsp><math|\<beta\>>; its last quadratic sum is
  independent of<nbsp><math|\<beta\>>.

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
    <tformat|<table|<row|<cell|\<cal-R\><rsub|m><rsup|<math-up|reg>><around|(|\<b-up-v\>;U|)>>|<cell|=<big|sum><rsub|i>\<b-1\><rsub|Z<rsub|m,i><math-up|healthy>>*R<rsub|m,i><rsup|<math-up|reg>>*<around|(|\<b-up-v\>;U|)>,<label|eq:I12-marked-remainders>>>|<row|<cell|\<cal-R\><rsub|m><rsup|<math-up|for>><around|(|\<b-up-v\>;U|)>>|<cell|=e<rsup|v<rsub|<math-up|vac>>\|\<Lambda\>\|-<pathaction><rsub|N,m><around|(|\<beta\><around|(|\<rho\><rsub|m>|)>,U|)>-<big|sum><rsub|i>\<b-1\><rsub|X<rsub|i><math-up|healthy>>*E<rsub|i><rsup|<math-up|reg>><around|(|U|)>>>>|<row|<cell|>|<cell|<space|1em>\<cdot\><big|sum><rsub|\<cal-A\><rsub|<math-up|for>><math-up|eligible>><big|sum><rsub|i\<in\>\<cal-A\><rsub|<math-up|for>>>Q<rsub|m,i><rsup|<math-up|for>>*<around|(|\<b-up-v\>;U|)>*<big|prod><rsub|j\<in\>\<cal-A\><rsub|<math-up|for>>\<setminus\><around|{|i|}>>K<rsub|j><rsup|<math-up|for>><around|(|U|)><space|0.17em>.<eq-number>>>>>
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
      every admissible >p,>>|<row|<cell|C<rsub|P<around|(|k|)>><rsup|<math-up|UV>>*<around|(|v;f|)>>|<cell|\<longrightarrow\><big|int>f<around|(|x|)>*K<rsub|n>*<around|(|v;x|)>*<space|0.17em>d*x<space|0.17em>.>|<cell|>|<cell|>>>>
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
  Lemmas<nbsp><reference|lem:F1>\U<reference|lem:F3>, using the ultraviolet
  estimates of Lemmas<nbsp><reference|lem:E2.6>\U<reference|lem:E2.10>. The
  extraction gives local smooth volume limits on<nbsp><math|<Conf|n>> from
  Proposition<nbsp><reference|prop:UB> and Lemma<nbsp><reference|lem:E3.2>,
  as recorded in<nbsp><eqref|eq:F-conf> (E6). On the periodic generic domain
  the fixed-volume kernels are the restrictions
  of<nbsp><math|M<rsup|<math-up|UV>><rsub|p,v>>, retaining UV's full inner
  limit at every admissible volume. The chessboard root bounds give E7 at
  order zero; the corrected derivative maps of Lemma<nbsp><reference|lem:F2>
  give it at positive orders. Lattice reflection positivity for finite sums
  of smeared words passes to the limit, giving E5; E4 follows from E5
  together with E1 and E6. A further volume refinement in
  Lemma<nbsp><reference|lem:F2> fixes the corrected coefficient maps, which
  adjust labels of different degrees so their correlations agree or differ by
  a positional derivative; ordered convergence persists. No uniqueness of the
  infinite-volume limit is asserted; fix <math|<math-ss|p>>, its
  refinement<nbsp><math|<math-ss|q>> and the resulting table<nbsp><math|S>
  from now on.

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
      <tformat|<table|<row|<cell|\<iota\><rsub|e>\<circ\>\<jmath\><rsub|d,e>=\<iota\><rsub|d>,<space|2em>\<iota\><rsub|d+1>*<around|(|\<partial\><rsub|a>*A|)>=\<partial\><rsub|x<rsub|0><rsup|a>>*\<iota\><rsub|d><around|(|A|)>,>>|<row|<cell|dim<rsub|<C>>
      F<rsub|d>=dim<rsub|<C>><maxwellspace|d><space|0.17em>.>>>>
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
  maps injective; the upper bound <math|dim<rsub|<C>>
  F<rsub|d>\<leqslant\>dim<rsub|<C>><maxwellspace|d>> from
  Proposition<nbsp><reference|prop:FC> makes them isomorphisms.
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
    <math|<math-ss|U><around|(|\<kappa\><rsub|<math-up|P>><rsup|-1>*<around|(|1,z|)>|)>=<math-ss|T><around|(|z|)>>
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
    <math|\<rho\><rsub|<math-up|lab>>*<around|(|\<Lambda\>,0|)>*\<ell\>=\<ell\>>
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
    K<rsub|n>*<around|(|v;x|)>=S<rsub|n><rsup|<math-up|mix>>*<around|(|\<pi\><rsub|<math-up|quo>><around|(|v<rsub|1>|)>,\<ldots\>,\<pi\><rsub|<math-up|quo>><around|(|v<rsub|n>|)>;x|)><space|0.17em>.
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
  transport (<reference|lem:E2.2>). Let <math|\<gamma\><rsub|j>\<gtr\>0> be
  half a uniform positive lower bound for the free effective plaquette forms
  in Lemma<nbsp><reference|lem:B2>, chosen for the top form and both possible
  incoming stages. Choose clipping coefficients with
  <math|0\<less\>16*c<rsub|<math-up|lin>,j>\<less\>c<rsub|<math-up|dir>,j>\<leqslant\>min
  <around|(|\<gamma\><rsub|j>,1|)>>; the remaining free form then has the
  positive row factor used in Definition<nbsp><reference|def:D23>. Its health
  cutoff relaxes with distance through <math|e<rsup|<math-up|dist>/R<rsub|j><rsup|<math-up|rel>>>>,
  where <math|R<rsub|j><rsup|<math-up|rel>>\<gtr\>0> and
  <math|R<rsub|j><rsup|<math-up|rel>>*w<rsub|j><rsup|<math-up|path>>\<geqslant\>12>.
  Let <math|d<rsub|j>\<geqslant\>0> be the block-ratio-independent one-loop
  bound of Lemma<nbsp><reference|lem:C7>. Fix the reset half-width
  <math|r<rsub|<math-up|res>>=1>, then choose
  <math|\<omega\><rsub|j><rsup|<math-up|RG>>\<geqslant\>d<rsub|j>+1> for
  Lemma<nbsp><reference|lem:C8>. Orders and powers tend to infinity and,
  along levels, are nondecreasing, as are support exponents. All ratio costs
  are now fixed.>>|<row|<cell|5>|<cell|Odd ratios
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

  <ym-theorems-by-subsection>

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

  For <math|R=<around|(|j+3|)>*\<ell\>>, put
  <math|\<bbb-B\><rsub|R>=<around|{|-R,\<ldots\>,R|}><rsup|4>>. Let
  <math|T<rsub|U><around|(|y\<to\>z;o|)>> be the ordered link product along
  the route changing coordinates in the order <math|o\<in\>S<rsub|4>>.

  <\definition>
    <dueto|Axial frames><label|def:D20a> The frame tagged by
    <math|<around|(|z,o|)>>, its normalization and its link coordinates are

    <\equation*>
      g<rsub|y><rsup|z,o>=T<rsub|U><around|(|z\<to\>y;o|)>,<space|2em>h<rsub|y><rsup|z,o>=<around|(|g<rsub|0><rsup|z,o>|)><rsup|-1>*g<rsub|y><rsup|z,o>,<space|2em>U<rsub|<around|(|y,a|)>><rsup|z,o>=g<rsub|y><rsup|z,o>*U<around|(|y,a|)><around|(|g<rsub|y+e<rsub|a>><rsup|z,o>|)><rsup|-1><space|0.17em>.
    </equation*>

    These frames provide the finite alternatives for the symmetric gauge
    choice.
  </definition>

  <\definition>
    <dueto|Symmetric frame choice><label|def:D20b> When every route transport
    in every origin-based axial gauge has chord below
    <math|\<delta\><rsub|<math-up|fr>>>, use the minimizer, with
    <math|h<rsub|0>=1>, of

    <\equation*>
      <frac|1|24<around|\||\<bbb-B\><rsub|R>|\|><rsup|2>>*<big|sum><rsub|y,z\<in\>\<bbb-B\><rsub|R>><big|sum><rsub|o\<in\>S<rsub|4>><wilsonterm><around|(|h<rsub|y>*T<rsub|U><around|(|y\<to\>z;o|)>*h<rsub|z><rsup|-1>|)><space|0.17em>.
    </equation*>

    Otherwise use normalized axial frames whose tags satisfy

    <\equation*>
      <big|sum><rsub|e<math-up|patch>><chord><around|(|U<rsub|e><rsup|z,o>|)>\<leqslant\>a<rsub|<math-up|ax>>*<around|(|2*R+1|)>*<big|sum><rsub|\<square\><math-up|patch>><chord><around|(|U<rsub|\<square\>>|)><space|0.17em>.
    </equation*>

    Tags have equal mass over all tags on the first branch and eligible tags
    on the second. This makes the choice symmetric.
  </definition>

  <\definition>
    <dueto|Coarse predictors><label|def:D21> Let
    <math|w<rsup|<math-up|av>>=<around|(|<math-up|Unif><around|(|\<bbb-B\><rsub|<around|(|\<ell\>-1|)>/2>|)>|)><rsup|\<ast\>j>>
    and let <math|Y<rsub|z>> be the framed straight connector
    of<nbsp><eqref|eq:I12-framed-connector>. Define

    <\equation*>
      Q<rsup|<math-up|pred>>=<math-up|argmin><rsub|u\<in\>G><big|sum><rsub|z>w<rsub|z><rsup|<math-up|av>><wilsonterm><around|(|Y<rsub|z>*u<rsup|-1>|)><space|1em><text|if
      the minimum is below >\<varepsilon\><rsub|<math-up|pred>><space|0.17em>.
    </equation*>

    Give predictor tags uniform mass on this branch. Otherwise set
    <math|Q<rsup|<math-up|pred>>=Y<rsub|z>> with tag mass
    <math|w<rsub|z><rsup|<math-up|av>>>. The product of frame and predictor
    masses is <math|\<lambda\><rsup|<math-up|tag>>*<around|(|U,\<alpha\><rsub|<math-up|tag>>|)>>.
    These choices define every summand of
    Definition<nbsp><reference|def:D04>.
  </definition>

  <\lemma>
    <dueto|Branches and normalization><label|lem:B1> For the chosen frame and
    predictor cutoffs and axial factor <math|a<rsub|<math-up|ax>>\<geqslant\>16>,
    every stated minimizer is unique on its branch, eligible axial tags are
    nonempty, and

    <\equation*>
      <big|sum><rsub|\<alpha\><rsub|<math-up|tag>>>\<lambda\><rsup|<math-up|tag>>*<around|(|U,\<alpha\><rsub|<math-up|tag>>|)>=1,<space|2em><big|int><blockkernel|m><rsub|\<beta\>><around|(|U,V|)>*<space|0.17em>d*V=1<space|0.17em>.
    </equation*>
  </lemma>

  The proof of Lemma<nbsp><reference|lem:B1> is deferred to this section's
  branch estimates.

  The following free forms fix the quadratic normalization used in
  Section<nbsp><reference|sec:partII-C>. For a link field <math|a>, write
  <math|d<rsub|1>*a> for its lattice curl and <math|\<cal-Q\><rsub|m>*a> for
  the linearization of the predictor in<nbsp><eqref|eq:I12-predictor>. Set

  <\equation*>
    <math-ss|S><rsup|<math-up|free>><rsub|N,m><around|(|a|)>=<tfrac|1|2><around|\<langle\>|d<rsub|1>*a,<math-ss|H><rsub|N,m>d<rsub|1>*a|\<rangle\>><space|0.17em>.
  </equation*>

  Let <math|W<rsub|0>> be the free stationary interpolation and put
  <math|<math-ss|K><rsub|N,m>=d<rsub|1><rsup|\<ast\>><math-ss|H><rsub|N,m>d<rsub|1>>.

  <\lemma>
    <dueto|Free quadratic forms><label|lem:B2> For the chosen histories, the
    free forms satisfy

    <\gather*>
      <tformat|<table|<row|<cell|W<rsub|0><rsup|\<ast\>><math-ss|K><rsub|N,m+1>W<rsub|0>+<blockpenalty><around|(|\<cal-Q\><rsub|m>*W<rsub|0>-I|)><rsup|\<ast\>>*<around|(|\<cal-Q\><rsub|m>*W<rsub|0>-I|)>=<math-ss|K><rsub|N,m>,<space|2em><wide|<math-ss|H>|^><rsub|N,m><around|(|0|)>=I,>>|<row|<cell|<math-ss|H><rsub|N,m>\<geqslant\>2*\<gamma\><rsub|J<rsub|m>>*I,<space|2em><math-ss|H><rsub|N,m>-c<rsub|<math-up|dir>,J<rsub|m>>*I=\<rho\><rsub|N,m><rsup|\<ast\>>*\<rho\><rsub|N,m><space|0.17em>.>>>>
    </gather*>

    Here <math|\<gamma\><rsub|k>\<gtr\>0> is uniform over histories at
    stage<nbsp><math|k>, including the top and both incoming stages. For
    <math|c<rsub|<math-up|dir>,k>\<leqslant\>\<gamma\><rsub|k>>, the row
    factor is analytic on a fixed strip and has exponentially decaying
    coefficients, uniformly in <math|N,m,p>. At <math|m=N> the free form is
    the identity on curls.
  </lemma>

  The proof of Lemma<nbsp><reference|lem:B2> is deferred to this section's
  free block integration.

  For the analytic stationary problem, <math|v> is the coarse chart variable,
  <math|z> the fine axial variable, and <math|S*<around|(|v,z|)>> the fine
  leading action plus the block penalty, with the common coupling factor
  removed. Put <math|<math-ss|Q>=D<rsub|z><rsup|2>*S*<around|(|0,0|)>> and
  <math|W*v=<around|(|v,D*z<around|(|0|)>*v|)>>. For the inverse estimates,
  use weighted operator norms on a Bloch cell. Put
  <math|\<mu\>=\<ell\><rsup|-1>> and <math|k<rsub|z><around|(|\<xi\>|)>=<around|(|\<xi\>+2*\<pi\>*z|)>/\<ell\>>,
  with <math|x,z\<in\><around|{|0,\<ldots\>,\<ell\>-1|}><rsup|4>>, and define

  <\gather*>
    <tformat|<table|<row|<cell|q<rsub|a><around|(|k|)>=e<rsup|i*k<rsub|a>>-1,<space|2em>h<rsub|z><around|(|\<xi\>|)>=<around*|(|\<mu\><rsup|2>+<big|sum><rsub|a><around|\||q<rsub|a><around|(|<math-up|Re><space|0.17em>k<rsub|z><around|(|\<xi\>|)>|)>|\|><rsup|2>|)><rsup|1/2>,>>|<row|<cell|\<cal-U\><rsub|\<ell\>><around|(|\<xi\>|)><rsub|x*z>=\<ell\><rsup|-2>*e<rsup|i*k<rsub|z><around|(|\<xi\>|)>\<cdot\>x>,<space|2em>T<rsub|\<ell\>><around|(|\<xi\>|)>=\<cal-U\><rsub|\<ell\>><around|(|\<xi\>|)><math-up|diag><around|(|h<rsub|z><around|(|\<xi\>|)><rsup|-1>|)>*\<cal-U\><rsub|\<ell\>><around|(|0|)><rsup|-1><space|0.17em>.>>>>
  </gather*>

  These weights measure one fine derivative. Use <math|T<rsub|\<ell\>>> on
  fine link or site fields, the identity on coarse coordinates, direct sums
  on their products, and <math|T<rsub|\<ell\>>*<around|(|-\<xi\>|)><rsup|-T>>
  on dual fields. Axial variables inherit the norm of their slice embedding.
  For an operator kernel set

  <\equation*>
    <around|\<\|\|\>|K|\<\|\|\>><rsub|\<eta\>><rsup|<math-up|bl>>=sup
    <around|\<\|\|\>|T<rsub|<math-up|out>><around|(|\<xi\><rsub|<math-up|out>>|)><rsup|-1>*K*<around|(|\<xi\><rsub|<math-up|out>>,\<xi\><rsub|<math-up|in>>|)>*T<rsub|<math-up|in>><around|(|\<xi\><rsub|<math-up|in>>|)>|\<\|\|\>><rsub|<math-up|op>><space|0.17em>.
  </equation*>

  The supremum ranges over momenta in <math|\<cal-S\><rsub|\<eta\>>=<around|{|\<xi\>\<in\><C><rsup|4>:<around|\||<math-up|Im><space|0.17em>\<xi\><rsub|a>|\|>\<less\>\<eta\>|}>>,
  with all shifted momenta also in that strip. For multilinear kernels use
  the corresponding tensor products. Field insertions are in normalized
  coarse directions. The entry norms in Lemma<nbsp><reference|lem:C4> are
  taken after these rescalings. The weights themselves need not be analytic.

  <\lemma>
    <dueto|Stationary interpolation><label|lem:B3> Near zero there is an
    analytic stationary branch with

    <\equation*>
      D<rsub|z>*S*<around|(|v,z<around|(|v|)>|)>=0,<space|2em>z<around|(|0|)>=0,<space|2em><math-ss|Q>\<geqslant\>\<nu\><rsub|j>*I,<space|2em><around|\<\|\|\>|<math-ss|Q><rsup|-1>|\<\|\|\>><rsub|\<eta\><rsub|j>><rsup|<math-up|bl>>+<around|\<\|\|\>|W|\<\|\|\>><rsub|\<eta\><rsub|j>><rsup|<math-up|bl>>\<leqslant\>E<rsub|j><space|0.17em>.
    </equation*>

    Here <math|\<nu\><rsub|j>,\<eta\><rsub|j>\<gtr\>0> and
    <math|E<rsub|j>\<less\>\<infty\>> are uniform in the volume; the
    coercivity constant <math|\<nu\><rsub|j>> is chosen after the ratio. The
    free interpolation is <math|D*z<around|(|0|)>>. The averaging symbol
    in<nbsp><eqref|eq:I12-predictor> vanishes to second order at every
    nonzero alias. The zero alias has the curvature normalization of
    Lemma<nbsp><reference|lem:B2>.
  </lemma>

  The proof of Lemma<nbsp><reference|lem:B3> is deferred to this section's
  stationary equation and inverse estimates.

  The Gaussian coordinates also determine the chart factor in the one-loop
  action. Let <math|U<rsub|v>> be the stationary configuration,
  <math|M<around|(|v|)>> its axial Hessian, <math|s> the map from axial
  increments to left increments, and <math|J<rsub|<math-up|ax>>> the
  corresponding Haar-density ratio. Write
  <math|\<Psi\><around|(|U,h<rsub|<math-up|fr>>|)>> for the rooted minimizing
  frame, <math|R> for infinitesimal gauge insertion and <math|Q> for the
  axial slice. Define

  <\equation*>
    X=D<rsub|w=0>*<around|[|-log <around|(|\<Psi\><around|(|U,h<rsub|<math-up|fr>>|)><rsup|-1>*\<Psi\>*<around|(|e<rsup|w>*<around|(|U,h<rsub|<math-up|fr>>|)>|)>|)>|]>,<space|2em>\<cal-L\><rsub|m+1>=<big|sum><rsub|x,i>\<frak-a\><rsub|i><rsup|<around|(|2|)>><around|(|<space|0.17em>\<cdummy\><space|0.17em>,x|)><space|0.17em>.
  </equation*>

  These coordinates permit comparison with a gauge-completed Hessian.

  <\lemma>
    <dueto|Gaussian coordinates><label|lem:B4> Near zero, the one-loop action
    is

    <\equation*>
      <math-ss|T><around|(|v|)>=\<cal-L\><rsub|m+1><around|(|U<rsub|v>|)>+<tfrac|1|2>log
      det M<around|(|v|)>-log J<rsub|<math-up|ax>><around|(|v|)>,<space|2em>J<rsub|<math-up|ax>>=<around|\||det
      D*s|\|>\<gtr\>0<space|0.17em>.
    </equation*>

    The rooted-frame coordinates satisfy <math|X*R=I> and <math|det
    <around|(|R,Q|)><rsup|2>=1>. The Hessian <math|M> is positive, and
    <math|J<rsub|<math-up|ax>><around|(|0|)>=1>.
  </lemma>

  The proof of Lemma<nbsp><reference|lem:B4> is deferred to this section's
  Gaussian change of coordinates.

  The bounds for the third and fourth vertices separate the Wilson part from
  the input-dependent correction. Let <math|V<rsub|r>> be the degree-<math|r>
  Taylor kernel of the leading fine action minus the Wilson action,
  <math|r=2,3,4>. Let <math|C<rsub|3>,C<rsub|4>> be the bounds after
  insertion of <math|W> used in Lemma<nbsp><reference|lem:C4>.

  <\lemma>
    <dueto|Vertex bounds><label|lem:B5> The kernels
    <math|V<rsub|2>,V<rsub|3>,V<rsub|4>> have momentum orders at least
    <math|3,2,1>. For <math|\<ell\>> above a threshold depending on the input
    path data,

    <\equation*>
      C<rsub|3>\<leqslant\>a<rsub|3>+\<ell\><rsup|-1>*a<rsub|3><rprime|'>,<space|2em>C<rsub|4>\<leqslant\>c<rsub|4>+\<ell\><rsup|-1>*c<rsub|4><rprime|'><space|0.17em>.
    </equation*>

    The constants <math|a<rsub|3>,c<rsub|4>> depend only on the preceding
    stage data; <math|a<rsub|3><rprime|'>,c<rsub|4><rprime|'>> may depend on
    the input path bound. The mixed insertions in the stationary fourth
    derivative obey the same block-scaled bounds with the inverse
    constant<nbsp><math|E> of Lemma<nbsp><reference|lem:C4>.
  </lemma>

  The proof of Lemma<nbsp><reference|lem:B5> is deferred to this section's
  block-scaled vertex estimates.

  Let <math|Y<rsup|<math-up|con>>> be the difference between the quadratic
  one-loop kernel and the kernel with the predictor contact term removed.
  This term is the second derivative of the predictor multiplied by the first
  derivative of the penalty. The following orders explain why it does not
  alter the coupling coefficient.

  <\lemma>
    <dueto|Stationary Ward estimates><label|lem:B6> Along the free
    interpolation, the first penalty derivative vanishes to momentum order
    two, and the mixed fine/frame trace in the contact correction vanishes to
    order one. The trace with two frame insertions is analytic. Consequently,
    near zero,

    <\equation*>
      Y<rsup|<math-up|con>><around|(|\<xi\>|)>=O<around|(|<around|\||\<xi\>|\|><rsup|3>|)><space|0.17em>.
    </equation*>
  </lemma>

  The proof of Lemma<nbsp><reference|lem:B6> is deferred to this section's
  stationary gauge identities.

  Finally put <math|\<mu\>=\<ell\><rsup|-1>>,
  <math|\<Delta\><rsub|U>=d<rsub|U><rsup|\<ast\>>*d<rsub|U>> and
  <math|P<rsub|\<mu\>>=\<mu\><rsup|2>*<around|(|\<Delta\><rsub|U>+\<mu\><rsup|2>*I|)><rsup|-1>>,
  with <math|d<rsub|U>> as in Section<nbsp><reference|sec:partII-C>. The
  inverse and insertions below are evaluated at zero background. Field
  differentiation inserts the free interpolated coarse field. Write
  <math|A<rsub|\<mu\>>> for either the completed Hessian without its contact
  term or the folded auxiliary fine Hessian in that section.

  <\lemma>
    <dueto|Scaled inverse insertions><label|lem:B7> There are
    <math|u<rsub|j>\<geqslant\>1>, <math|\<eta\><rsub|j>\<gtr\>0> and
    <math|C<rsub|j><rsup|<math-up|ins>>\<less\>\<infty\>>, depending only on
    the fixed stage bounds, such that, for every odd
    <math|\<ell\>\<geqslant\>u<rsub|j>>,

    <\gather*>
      <tformat|<table|<row|<cell|sup<rsub|\<xi\>\<in\>\<cal-S\><rsub|\<eta\><rsub|j>>><around|\<\|\|\>|P<rsub|\<mu\>><around|(|\<xi\>|)><rsup|3>|\<\|\|\>><rsub|1>\<leqslant\>C<rsub|j><rsup|<math-up|ins>>,>>|<row|<cell|<around|\<\|\|\>|D<rsup|r>*P<rsub|\<mu\>>|\<\|\|\>><rsub|\<eta\><rsub|j>><rsup|<math-up|bl>>+<around|\<\|\|\>|\<mu\><rsup|2>*D<rsup|r><around|(|A<rsub|\<mu\>><rsup|-1>|)>|\<\|\|\>><rsub|\<eta\><rsub|j>><rsup|<math-up|bl>>\<leqslant\>C<rsub|j><rsup|<math-up|ins>>*<space|2em><around|(|0\<leqslant\>r\<leqslant\>2|)><space|0.17em>.>>>>
    </gather*>

    Here <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>><rsub|1>> is trace norm
    on a Bloch cell. The block-penalty and frame insertion products in the
    resolvent difference satisfy the same uniform operator bounds in block
    units.
  </lemma>

  The proof of Lemma<nbsp><reference|lem:B7> is deferred to this section's
  free inverse and insertion estimates.

  <section|Path actions and the coupling reset><label|sec:partII-C>

  The path action retains curvature terms through fourth order after each
  integration. We choose its quadratic part so that <math|\<beta\>> is the
  coefficient of the squared Wilson curvature at zero momentum at every
  level. Quadratic terms independent of <math|\<beta\>> have two vanishing
  displacement moments. The marginal part generated by the determinant is
  removed from these terms and absorbed into the coupling.

  The path bounds enter Theorem<nbsp><reference|prop:MT>, and the coupling
  formula enters Theorem<nbsp><reference|prop:RG>. We evaluate the leading
  action at its stationary background and express its cubic and quartic terms
  in transported curvatures. We compare the coupling coefficient of the
  blocked determinant with that of a regulated fine-lattice determinant, with
  an error uniform in the block ratio. The vector and ghost bubbles give the
  logarithmic coefficient; an affine equation bounds the remaining reset.
  Lemmas<nbsp><reference|lem:C3>\U<reference|lem:C8> carry out these steps.
  The inputs are the branches, free forms, stationary interpolation, Gaussian
  coordinates, vertex, Ward and insertion estimates of
  Lemmas<nbsp><reference|lem:B1>\U<reference|lem:B7>.
  Lemmas<nbsp><reference|lem:D1>, <reference|lem:D4>\U<reference|lem:D6>
  supply the activity bounds, pre-reset expansion, exact density identity and
  continuity. Their proofs belong to Sections<nbsp><reference|sec:partII-B>
  and<nbsp><reference|sec:partII-D>; the reset here bounds and identifies the
  correction in that identity.

  Throughout, the group and metric are those of
  Definition<nbsp><reference|def:D01>, and the scales are those of
  Section<nbsp><reference|sec:renormalization>. At a step <math|m+1\<to\>m>
  put <math|\<ell\>=\<ell\><rsub|m>> and <math|j=J<rsub|m+1>>. Arrays depend
  on <math|N,m> and the intervening block ratios, and are chosen on
  <math|<Z><rsup|4>> before periodic evaluation. They are independent of the
  volume index<nbsp><math|p> and of the running coupling. Constants declared
  uniform in<nbsp><math|\<ell\>> are chosen before<nbsp><math|\<ell\>>.

  <subsection*|Curvature coordinates>

  A path transports curvature to an anchor, where invariant colour
  contractions can be taken. Write <math|U<rsub|\<gamma\>>> for the ordered
  link product along<nbsp><math|\<gamma\>>,
  <math|\<frak-p\>=<around|(|a,b|)>>, <math|a\<less\>b>, for an orientation,
  and <math|U<rsub|x;\<frak-p\>>> for a plaquette holonomy. The footprint of
  a slot is the set of vertices visited by its path and plaquette boundary.
  The footprint of an atom is the union of its slot footprints and the
  origin, translated to its anchor. Health means disjointness from
  <math|<flags><rsub|m><around|(|U|)>>: no plaquette with a vertex in that
  footprint has chord exceeding<nbsp><math|t<rsub|m>>.

  <\definition>
    <dueto|Curvature slots><label|def:D22> A slot
    <math|s=<around|(|\<gamma\>,\<frak-p\>|)>>, with
    <math|\<gamma\>:0\<to\>z<rsub|s>>, has length
    <math|<around|\||\<gamma\>|\|>+4> and value

    <\equation*>
      \<cal-F\><rsub|s><around|(|U,x|)>=<math-up|Ad><around|(|U<rsub|x+\<gamma\>>|)><math-up|proj><rsub|<g>><frac|U<rsub|x+z<rsub|s>;\<frak-p\>>-U<rsub|x+z<rsub|s>;\<frak-p\>><rsup|-1>|2><space|0.17em>.
    </equation*>

    Transport is from <math|x+z<rsub|s>> to<nbsp><math|x>. Set
    <math|\<cal-L\><rsub|\<frak-p\>><rsup|<math-up|path>>=<big|sum><rsub|i>r<rsub|\<frak-p\>*i>*\<cal-F\><rsub|\<frak-p\>*i>>.
    For <math|k=2,3,4>, the atoms <math|\<frak-a\><rsub|i><rsup|<around|(|k|)>>>
    are real invariant <math|k>-linear expressions in slots, masked by health
    on their footprints. Atom length sums slot lengths;
    <math|<around|\||\<frak-a\><rsub|i><rsup|<around|(|k|)>>|\|>> sums
    absolute colour coefficients. These arrays retain local terms through
    fourth order.
  </definition>

  Here <math|r<rsub|\<frak-p\>*i>\<in\><R>> and
  <math|\<cal-F\><rsub|\<frak-p\>*i>> denotes the slot assigned to
  row<nbsp><math|\<frak-p\>> and index<nbsp><math|i\<in\><N>>. More
  explicitly, in the orthonormal colour basis
  <math|<around|(|e<rsub|b><rsup|<g>>|)><rsub|b>> of
  Definition<nbsp><reference|def:D01>, an atom has the form

  <\equation*>
    \<frak-a\><rsub|i><rsup|<around|(|k|)>><around|(|U,x|)>=\<b-1\><rsub|X<rsub|i>+x<math-up|healthy>>*<big|sum><rsub|b<rsub|1>,\<ldots\>,b<rsub|k>>c<rsub|i>*<around|(|b<rsub|1>,\<ldots\>,b<rsub|k>|)>*<big|prod><rsub|\<nu\>=1><rsup|k><around|\<langle\>|e<rsub|b<rsub|\<nu\>>><rsup|<g>>,\<cal-F\><rsub|s<rsub|i,\<nu\>>><around|(|U,x|)>|\<rangle\>><rsub|<g>><space|0.17em>.
  </equation*>

  The coefficients are invariant under the simultaneous adjoint action on all
  slots. The finite set <math|X<rsub|i>> is the footprint just defined.

  For each stage<nbsp><math|k>, take <math|\<gamma\><rsub|k>\<gtr\>0> from
  Lemma<nbsp><reference|lem:B2>, so the free plaquette forms for the top and
  both incoming stages are at least <math|2*\<gamma\><rsub|k>*I>. Clipping
  therefore leaves a strictly positive remainder even at
  <math|c<rsub|<math-up|dir>>=\<gamma\><rsub|k>>. Write
  <math|c<rsub|<math-up|dir>>=c<rsub|<math-up|dir>,J<rsub|m>>\<gtr\>16*c<rsub|<math-up|lin>>=16*c<rsub|<math-up|lin>,J<rsub|m>>\<gtr\>0>.
  The relaxed health test permits a larger chord farther from the anchor.

  <\definition>
    <dueto|Path action><label|def:D23> Require
    <math|c<rsub|<math-up|dir>>\<leqslant\>min
    <around|(|\<gamma\><rsub|J<rsub|m>>,1|)>>, and put

    <\align*>
      <tformat|<table|<row|<cell|<math-up|clip><rsub|t><around|(|u|)>>|<cell|=<choice|<tformat|<table|<row|<cell|c<rsub|<math-up|dir>>*u<rsup|2>/2,>|<cell|u\<leqslant\>t,>>|<row|<cell|c<rsub|<math-up|lin>>*t*u,>|<cell|u\<gtr\>t,>>>>>>>|<row|<cell|\<chi\><rsup|<math-up|hlth>><rsub|m,x><around|(|U|)>>|<cell|=\<b-1\>*<around|{|<chord><around|(|U<rsub|y;\<frak-p\>>|)>\<leqslant\>t<rsub|m>*e<rsup|<math-up|dist><around|(|x,y|)>/R<rsub|J<rsub|m>><rsup|<math-up|rel>>><text|
      for every >y,\<frak-p\>|}><space|0.17em>.>>>>
    </align*>

    Define

    <\align*>
      <tformat|<table|<row|<cell|<around|(|<pathaction>|)><rsup|<math-up|raw>><rsub|N,m><around|(|\<beta\>,U|)>>|<cell|=\<beta\>*<big|sum><rsub|x,\<frak-p\>><around*|[|<math-up|clip><rsub|t<rsub|m>><around|(|<chord><around|(|U<rsub|x;\<frak-p\>>|)>|)>+<tfrac|1|2>\<chi\><rsup|<math-up|hlth>><rsub|m,x><around|\||\<cal-L\><rsub|\<frak-p\>><rsup|<math-up|path>><around|(|U,x|)>|\|><rsup|2>|]>>>|<row|<cell|>|<cell|<space|1em>+\<beta\>*<big|sum><rsub|x,i><around|(|\<frak-a\><rsub|i><rsup|<around|(|3|)>>+\<frak-a\><rsub|i><rsup|<around|(|4|)>>|)>*<around|(|U,x|)>+<big|sum><rsub|x,i>\<frak-a\><rsub|i><rsup|<around|(|2|)>><around|(|U,x|)>,>>|<row|<cell|<pathaction><rsub|N,m><around|(|\<beta\>,U|)>>|<cell|=<frac|1|<around|\||<hypercubic>|\|>>*<big|sum><rsub|\<varsigma\>\<in\><hypercubic>><around|(|<pathaction>|)><rsup|<math-up|raw>><rsub|N,m><around|(|\<beta\>,\<varsigma\><rsup|\<ast\>>*U|)><space|0.17em>.>>>>
    </align*>

    This separates the kinetic coefficient from the loop correction.
  </definition>

  The sums over <math|x> are over the torus at level<nbsp><math|m>, and
  <math|i\<in\><N>>. The bounds below control actual path lengths on every
  period.

  <\lemma>
    <dueto|Path bounds><label|lem:C1> For every <math|N> and
    <math|m\<leqslant\>N>, the construction below chooses arrays independent
    of <math|p> and <math|\<beta\>>, with

    <\align*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i><around|\||r<rsub|\<frak-p\>*i>|\|>*e<rsup|w<rsub|J<rsub|m>><rsup|<math-up|path>><math-up|length><around|(|\<cal-F\><rsub|\<frak-p\>*i>|)>>>|<cell|\<leqslant\>A<rsub|J<rsub|m>><rsup|<math-up|path>>,>>|<row|<cell|<big|sum><rsub|i><around|\||\<frak-a\><rsub|i><rsup|<around|(|k|)>>|\|>*e<rsup|w<rsub|J<rsub|m>><rsup|<math-up|path>><math-up|length><around|(|\<frak-a\><rsub|i><rsup|<around|(|k|)>>|)>>>|<cell|\<leqslant\><choice|<tformat|<table|<row|<cell|\<Lambda\><rsub|m><rsup|<math-up|loop>>,>|<cell|k=2,>>|<row|<cell|A<rsub|J<rsub|m>><rsup|<math-up|path>>,>|<cell|k=3,4.>>>>>>>>>
    </align*>

    All these series converge. The constants
    <math|A<rsub|k><rsup|<math-up|path>>,w<rsub|k><rsup|<math-up|path>>\<gtr\>0>
    depend only on the fixed stage data.
  </lemma>

  The joint proof of Lemmas<nbsp><reference|lem:C1>
  and<nbsp><reference|lem:C2> follows Lemma<nbsp><reference|lem:C7>. To state
  the cancellations, put

  <\equation*>
    s<rsub|\<frak-p\>*\<frak-q\>>=<big|sum><rsub|i:<space|0.17em><math-up|orientation><around|(|\<cal-F\><rsub|\<frak-p\>*i>|)>=\<frak-q\>>r<rsub|\<frak-p\>*i><space|0.17em>.
  </equation*>

  For fixed ordered orientations <math|\<frak-q\>,\<frak-r\>> and colours
  <math|b<rsub|1>,b<rsub|2>>, let <math|c<rsub|i><rsup|\<frak-q\>*\<frak-r\>;b<rsub|1>*b<rsub|2>>>
  be the corresponding coefficient of the quadratic atom, zero unless its
  slots have those orientations. Write <math|z<rsub|i,1>,z<rsub|i,2>> for
  their offsets. The cancellations remove the kinetic component from the loop
  atoms.

  <\lemma>
    <dueto|Kinetic and quadratic cancellations><label|lem:C2> For each pair
    of orientations <math|\<frak-q\>,\<frak-r\>>,

    <\equation*>
      c<rsub|<math-up|dir>,J<rsub|m>>*\<delta\><rsub|\<frak-q\>*\<frak-r\>>+<big|sum><rsub|\<frak-p\>>s<rsub|\<frak-p\>*\<frak-q\>>*s<rsub|\<frak-p\>*\<frak-r\>>=\<delta\><rsub|\<frak-q\>*\<frak-r\>><space|0.17em>.
    </equation*>

    For each ordered orientation-colour pair,

    <\equation*>
      <big|sum><rsub|i>c<rsub|i><rsup|\<frak-q\>*\<frak-r\>;b<rsub|1>*b<rsub|2>>=0,<space|2em><big|sum><rsub|i>c<rsub|i><rsup|\<frak-q\>*\<frak-r\>;b<rsub|1>*b<rsub|2>>*<around|(|z<rsub|i,2>-z<rsub|i,1>|)>=0<space|0.17em>.
    </equation*>

    All these moment series converge absolutely.
  </lemma>

  The joint proof is given after Lemma<nbsp><reference|lem:C7>.

  <subsection*|Fourth-order matching><label|subsec:C-matching>

  Near the flat field all health indicators equal one. By
  <math|<chord><rsup|2>=2<wilsonterm>> from
  Definition<nbsp><reference|def:D01>, the leading analytic action is
  obtained from Definition<nbsp><reference|def:D23> by replacing the clipped
  term by <math|c<rsub|<math-up|dir>><wilsonterm>> and omitting the
  indicators and loop atoms. Denote this action, without its
  factor<nbsp><math|\<beta\>>, by <math|<math-ss|S><rsub|N,m>>. Its
  prescribed quadratic part is

  <\equation*>
    <frac|1|2>*<around|\<langle\>|d<rsub|1>*a,<math-ss|H><rsub|N,m>d<rsub|1>*a|\<rangle\>>,<space|2em><math-ss|H><rsub|N,m>=c<rsub|<math-up|dir>,J<rsub|m>>*I+\<rho\><rsub|N,m><rsup|\<ast\>>*\<rho\><rsub|N,m>,<space|2em><wide|<math-ss|H>|^><rsub|N,m><around|(|0|)>=I<space|0.17em>.
  </equation*>

  Here <math|d<rsub|1>> is the lattice curl. Lemma<nbsp><reference|lem:B2>
  gives the exact adjacent free relation and the row factor, with
  <math|<math-ss|H><rsub|N,m>-c<rsub|<math-up|dir>,J<rsub|m>>*I\<geqslant\>\<gamma\><rsub|J<rsub|m>>*I>.
  Placing its coefficients on coordinate paths gives
  <math|\<cal-L\><rsub|\<frak-p\>><rsup|<math-up|path>>>. The cell volume
  contributes <math|\<ell\><rsup|4>> and each curvature contributes
  <math|\<ell\><rsup|-2>>; hence <math|\<ell\><rsup|4><around|(|\<ell\><rsup|-2>|)><rsup|2>=1>,
  preserving the coefficient<nbsp><math|\<beta\>>.

  We need a division that expresses a gauge-invariant Taylor difference in
  curvatures. For a momentum<nbsp><math|\<xi\>> put
  <math|q<rsub|a><around|(|\<xi\>|)>=e<rsup|i*\<xi\><rsub|a>>-1>; its
  exterior action <math|d<rsub|1><around|(|\<xi\>|)>*a=q<around|(|\<xi\>|)>\<wedge\>a>
  is the curl symbol. A kernel is transverse in one leg when contraction of
  that leg with<nbsp><math|q> is zero. Momentum conservation makes one
  external momentum the negative sum of the others.

  <\lemma>
    <dueto|Curl division><label|lem:C3> For <math|k\<geqslant\>3> and
    <math|\<sigma\>\<gtr\>0>, there are <math|0\<less\>\<eta\>\<leqslant\>\<sigma\>>
    and <math|K\<geqslant\>0>, depending only on <math|k,\<sigma\>>, such
    that every transverse periodic analytic <math|k>-leg Taylor kernel
    bounded by <math|A\<geqslant\>0> on the <math|\<sigma\>>-strip factors
    through curls, with plaquette kernel bounded by <math|K*A> on the
    <math|\<eta\>>-strip. Its Fourier coefficients decay exponentially. For
    two legs, the same holds; momentum order <math|s+2> gives plaquette
    order<nbsp><math|s> for every <math|s\<geqslant\>0>.
  </lemma>

  <\proof>
    We give the division for the Taylor differences of
    Definition<nbsp><reference|def:D23>. Scalar division requires vanishing
    when the divided leg has zero momentum; positive exterior degree requires
    only closedness. For one leg let <math|\<delta\>=\<iota\><rsub|q>> be
    contraction on exterior tensors. Split a <math|\<delta\>>-closed tensor
    as <math|f=e<rsub|a>\<wedge\>u+v>, with <math|u,v> containing no
    <math|e<rsub|a>>. Define

    <\equation*>
      D<rsub|a>*f<around|(|\<xi\>|)>=<frac|f<around|(|\<xi\>|)>-f<around|(|\<xi\>|)>\|<rsub|\<xi\><rsub|a>=0>|q<rsub|a><around|(|\<xi\>|)>>,<space|2em>h<rsub|a>*f=e<rsub|a>\<wedge\>D<rsub|a>*v,<space|2em>R<rsub|a>*f=v\|<rsub|\<xi\><rsub|a>=0><space|0.17em>.
    </equation*>

    The identity <math|\<delta\>*f=0> gives
    <math|\<delta\><rprime|'>*v=-q<rsub|a>*u>, where
    <math|\<delta\><rprime|'>> contracts the other axes. Consequently

    <\equation*>
      \<delta\>*h<rsub|a>*f=q<rsub|a>*D<rsub|a>*v-e<rsub|a>\<wedge\>D<rsub|a>*\<delta\><rprime|'>*v=v-v\|<rsub|\<xi\><rsub|a>=0>+e<rsub|a>\<wedge\>u=f-R<rsub|a>*f<space|0.17em>.
    </equation*>

    The remainder <math|R<rsub|a>*f> is again closed and has no component
    containing<nbsp><math|e<rsub|a>>. Applying this in the four axes gives
    the homotopy

    <\equation*>
      f=\<delta\><around*|(|<big|sum><rsub|a=1><rsup|4>h<rsub|a>*R<rsub|a-1>*\<cdots\>*R<rsub|1>*f|)>+R<rsub|4>*R<rsub|3>*R<rsub|2>*R<rsub|1>*f<space|0.17em>.
    </equation*>

    The final remainder vanishes in positive exterior degree because it
    contains none of the four axes. In degree zero it is the restriction to
    zero momentum of this leg, which must vanish for scalar division. In that
    case the formula reads <math|f=<big|sum><rsub|a>q<rsub|a>*D<rsub|a>*<around|(|R<rsub|a-1>*\<cdots\>*R<rsub|1>*f|)>>.

    The quotients are analytic even at the zeros of<nbsp><math|q<rsub|a>>. On
    a Fourier monomial the identity

    <\equation*>
      <frac|e<rsup|i*n*\<xi\><rsub|a>>-1|e<rsup|i*\<xi\><rsub|a>>-1>=<choice|<tformat|<table|<row|<cell|<big|sum><rsub|v=0><rsup|n-1>e<rsup|i*v*\<xi\><rsub|a>>,>|<cell|n\<gtr\>0,>>|<row|<cell|-<big|sum><rsub|v=n><rsup|-1>e<rsup|i*v*\<xi\><rsub|a>>,>|<cell|n\<less\>0,>>|<row|<cell|0,>|<cell|n=0>>>>>
    </equation*>

    bounds the quotient on a smaller strip by a constant times
    <math|<around|\||n|\|>> times its original exponential weight. The strip
    loss absorbs <math|<around|\||n|\|>>, so the Fourier series converges
    absolutely. Each division loses at most one momentum order.

    For independent legs, their remaining transverse subspaces do not depend
    on the divided momentum, so each restriction and division preserves them.
    For the dependent momentum <math|\<xi\><rsub|0>=-<big|sum><rsub|i=1><rsup|k-1>\<xi\><rsub|i>>,
    first shear the coordinates to replace <math|\<xi\><rsub|1>>
    by<nbsp><math|\<xi\><rsub|0>>. The other independent contractions remain
    unchanged. The one-leg formula gives <math|\<delta\><rsub|0>*X=f>,
    retaining the contractions in legs <math|2,\<ldots\>,k-1>. Write
    <math|c<rsub|1>> for contraction in leg<nbsp><math|1>. Its defect obeys
    <math|\<delta\><rsub|0>*<around|(|c<rsub|1>*X|)>=c<rsub|1>*f=0>. Solve
    <math|\<delta\><rsub|0>*Y=c<rsub|1>*X> by the same formula. After
    <math|c<rsub|1>>, leg<nbsp><math|1> has exterior degree zero, so
    restoring that leg will require only scalar division.

    On <math|\<xi\><rsub|1>=0>, the restriction <math|Y<rsub|0>> is
    <math|\<delta\><rsub|0>>-closed. Recursively solve
    <math|\<delta\><rsub|0>*Z=Y<rsub|0>> with one fewer independent momentum
    and extend<nbsp><math|Z> independently of<nbsp><math|\<xi\><rsub|1>>.
    Then <math|Y<rprime|'>=Y-\<delta\><rsub|0>*Z> vanishes on
    <math|\<xi\><rsub|1>=0>, and scalar division gives
    <math|c<rsub|1>*D=Y<rprime|'>>. Thus

    <\equation*>
      V=X-\<delta\><rsub|0>*D,<space|2em>\<delta\><rsub|0>*V=f,<space|2em>c<rsub|1>*V=c<rsub|1>*X-\<delta\><rsub|0>*Y<rprime|'>=0<space|0.17em>.
    </equation*>

    All corrections preserve the other independent contractions. The two
    successive solves <math|f\<mapsto\>X> and <math|c<rsub|1>*X\<mapsto\>Y>
    each raise the dependent exterior degree by one; contraction
    <math|c<rsub|1>> changes only leg<nbsp><math|1>. Thus the restricted
    problem for <math|Y<rsub|0>> has one fewer independent momentum and
    dependent degree two higher. For three or more legs it terminates above
    exterior degree four, where the tensor is zero. The independent-leg
    divisions then finish the factorization.

    For two legs, the restriction <math|Y<rsub|0>> is at zero external
    momentum. Starting from order <math|s+2>, the first division loses one
    order, contraction restores one, and the solve for<nbsp><math|Y> leaves
    order <math|s+1\<geqslant\>1>. Hence <math|Y<rsub|0>=0> directly. The
    correction and final division leave order<nbsp><math|s>. This verifies
    the scalar vanishing hypothesis where it is needed. For the Taylor
    differences of Definition<nbsp><reference|def:D23>, gauge invariance
    supplies transversality because all lower Taylor differences vanish.
  </proof>

  For <math|z=<around|(|z<rsub|1>,\<ldots\>,z<rsub|k-1>|)>>, contour
  displacement gives <math|<around|\||K<around|(|z|)>|\|>\<leqslant\>C*e<rsup|-\<zeta\>*<big|sum><rsub|\<nu\>><around|\||z<rsub|\<nu\>>|\|><rsub|1>>>.
  Choose the anchor at zero and coordinate paths
  to<nbsp><math|z<rsub|\<nu\>>>. Their total slot length is at most
  <math|4*k+<big|sum><rsub|\<nu\>><around|\||z<rsub|\<nu\>>|\|><rsub|1>>.
  Every path width below<nbsp><math|\<zeta\>> therefore gives a convergent
  weighted sum. Reality and simultaneous adjoint invariance pass to the
  coefficients by conjugation and invariant projection.

  At a step, let <math|v> be the coarse chart variable and <math|z> the fine
  axial variable. Let <math|S*<around|(|v,z|)>> be the fine leading action
  plus <math|<blockpenalty><big|sum><rsub|e><wilsonterm>> of the predictor
  discrepancy, without<nbsp><math|\<beta\><rprime|'>>. It excludes the
  inherited loop action. Lemma<nbsp><reference|lem:B3> supplies

  <\equation*>
    D<rsub|z>*S*<around|(|v,z<around|(|v|)>|)>=0,<space|2em>z<around|(|0|)>=0,<space|2em><math-ss|Q>=D<rsub|z><rsup|2>*S*<around|(|0,0|)>\<geqslant\>\<nu\><rsub|j>*I,<space|2em>\<nu\><rsub|j>\<gtr\>0<space|0.17em>.
  </equation*>

  Put <math|W*v=<around|(|v,D*z<around|(|0|)>*v|)>> and
  <math|<math-ss|B><around|(|v,v|)><around|[|u|]>=D<rsup|3>*S<around|(|0|)><around|[|W*v,W*v,<around|(|0,u|)>|]>>.
  Let <math|C<rsub|3>,C<rsub|4>> bound the kernels of
  <math|D<rsup|3>*S<around|(|0|)>[(W\<cdot\><around|)|<rsup|3>|]>> and
  <math|D<rsup|4>*S<around|(|0|)>[(W\<cdot\><around|)|<rsup|4>|]>> in the
  supremum norm of their block-scaled Fourier entries on the fixed smaller
  strip. The inverse and mixed-insertion bounds of
  Lemmas<nbsp><reference|lem:B3>, <reference|lem:B5> give <math|E>. The
  constants <math|a<rsub|3>,c<rsub|4>,E> depend only on preceding stage data;
  <math|a<rsub|3><rprime|'>,c<rsub|4><rprime|'>> may also depend on the input
  path bound.

  The next formula constructs the higher arrays while keeping their bound
  independent of the input amplitude after the block ratio has been enlarged.

  <\lemma>
    <dueto|Classical matching><label|lem:C4> For <math|\<ell\>> above a
    threshold depending on the input path data, the stationary action
    <math|<math-ss|S><rsub|<math-up|cl>><around|(|v|)>=S*<around|(|v,z<around|(|v|)>|)>>
    satisfies

    <\align*>
      <tformat|<table|<row|<cell|D<rsup|3><math-ss|S><rsub|<math-up|cl>><around|(|0|)><around|[|v<rsup|3>|]>>|<cell|=D<rsup|3>*S<around|(|0|)><around|[|<around|(|W*v|)><rsup|3>|]>,>>|<row|<cell|D<rsup|4><math-ss|S><rsub|<math-up|cl>><around|(|0|)><around|[|v<rsup|4>|]>>|<cell|=D<rsup|4>*S<around|(|0|)><around|[|<around|(|W*v|)><rsup|4>|]>-3<math-ss|B><around|(|v,v|)><math-ss|Q><rsup|-1><math-ss|B><around|(|v,v|)><space|0.17em>.>>>>
    </align*>

    Its factorial-normalized kernels have bounds <math|C<rsub|3>/6> and
    <math|<around|(|C<rsub|4>+3*C<rsub|3><rsup|2>*E|)>/24>, where

    <\equation*>
      C<rsub|3>\<leqslant\>a<rsub|3>+\<ell\><rsup|-1>*a<rsub|3><rprime|'>,<space|2em>C<rsub|4>\<leqslant\>c<rsub|4>+\<ell\><rsup|-1>*c<rsub|4><rprime|'><space|0.17em>.
    </equation*>

    The fine leading vertices of degrees <math|2,3,4> differ from Wilson by
    momentum orders <math|3,2,1>.
  </lemma>

  <\proof>
    Use the block map of Definition<nbsp><reference|def:D04> and
    Lemmas<nbsp><reference|lem:B3>, <reference|lem:B5>. Differentiating
    <math|D<rsub|z>*S=0> once gives <math|D<rsup|2>*S<around|(|0|)><around|[|W*v,<around|(|0,u|)>|]>=0>;
    differentiating twice gives <math|D<rsup|2>*z<around|(|0|)><around|[|v,v|]>=-<math-ss|Q><rsup|-1><math-ss|B><around|(|v,v|)>>.
    In the third derivative of <math|S*<around|(|v,z<around|(|v|)>|)>>, the
    terms containing <math|D<rsup|2>*z> or <math|D<rsup|3>*z> vanish by these
    two stationary identities. In the fourth derivative the surviving terms
    involving <math|w=D<rsup|2>*z<around|(|0|)><around|[|v,v|]>> are

    <\equation*>
      6<math-ss|B><around|(|v,v|)><around|[|w|]>+3*<around|\<langle\>|w,<math-ss|Q>w|\<rangle\>>=-3<math-ss|B><around|(|v,v|)><math-ss|Q><rsup|-1><math-ss|B><around|(|v,v|)><space|0.17em>.
    </equation*>

    The other term is <math|D<rsup|4>*S<around|(|0|)><around|[|<around|(|W*v|)><rsup|4>|]>>.
    The block-scaled inverse and interpolation bounds give the two displayed
    kernel estimates, after division by <math|3>! and<nbsp><math|4>!.

    The fine-minus-Wilson vertices have orders <math|3,2,1> by
    Lemma<nbsp><reference|lem:B5>. The quadratic order uses
    <math|<wide|<math-ss|H>|^><around|(|0|)>=I> and two curls. Differentiated
    gauge invariance then gives the higher orders, including nonlinear
    curvature transport. Wilson has orders <math|2,1,0>: the extra power
    becomes <math|\<ell\><rsup|-1>> under free interpolation and rescaling.
    The Wilson vertices and penalty give <math|a<rsub|3>,c<rsub|4>>,
    independently of the input atom bound; the differences give
    <math|a<rsub|3><rprime|'>,c<rsub|4><rprime|'>>.

    Increase <math|\<ell\>> until <math|\<ell\><rsup|-1>*a<rsub|3><rprime|'>,\<ell\><rsup|-1>*c<rsub|4><rprime|'>\<leqslant\>1>.
    Apply Lemma<nbsp><reference|lem:C3> to the cubic difference between
    <math|<math-ss|S><rsub|<math-up|cl>>> and the output row action. Subtract
    the resulting full nonlinear cubic atoms before treating degree four. The
    remaining quartic difference is transverse, and a second application
    gives quartic atoms with a fixed bound. This makes the two actions agree
    through degree four. At <math|m=N>, the free form acts as the identity on
    curls, so the same construction matches the Wilson energy through degree
    four and starts with zero loop atoms. Lemma<nbsp><reference|lem:D3>
    places the remaining top-level difference, including clipping and
    unhealthy configurations, in the initial activities.
  </proof>

  The common factor<nbsp><math|\<beta\><rprime|'>> in the penalty and fine
  leading action cancels from the stationary equation; hence the arrays are
  independent of<nbsp><math|\<beta\><rprime|'>>. In <math|log det
  <around|(|\<beta\><rprime|'>*M|)>>, the term <math|<around|(|dim M|)>*log
  \<beta\><rprime|'>> is independent of the field and contributes only to the
  vacuum scalar.

  <subsection*|The determinant comparison><label|subsec:C-determinant>

  The Gaussian change of coordinates in Lemma<nbsp><reference|lem:B4> gives
  the one-loop action

  <\equation*>
    <math-ss|T><around|(|v|)>=\<cal-L\><rsub|m+1><around|(|U<rsub|v>|)>+<tfrac|1|2>log
    det M<around|(|v|)>-log J<rsub|<math-up|ax>><around|(|v|)><space|0.17em>.
  </equation*>

  Here <math|U<rsub|v>> is the stationary fine configuration,
  <math|\<cal-L\><rsub|m+1>> is the inherited quadratic loop action, <math|M>
  is the axial Hessian without<nbsp><math|\<beta\><rprime|'>>, and
  <math|J<rsub|<math-up|ax>>> is the Haar chart ratio, normalized to one at
  zero.

  For a quadratic Taylor kernel <math|Y>, including the Taylor
  factor<nbsp><math|1/2>!, define

  <\equation*>
    <around|[|t<rsup|2>|]>*g<around|(|t|)>=<tfrac|1|2>g<rprime|''><around|(|0|)>,<space|2em>\<alpha\><rsub|b><around|(|Y|)>=2<math-up|Re><around|[|t<rsup|2>|]>*Y<rsub|<around|(|2,b|)>,<around|(|2,b|)>>*<around|(|t*e<rsub|1>|)>,<space|2em>\<alpha\><rsub|N,m>=\<alpha\><rsub|b><around|(|Y<rsup|<math-up|blk>><rsub|N,m>|)><space|0.17em>.
  </equation*>

  The kernel <math|Y<rsup|<math-up|blk>><rsub|N,m>> is the infinite-volume
  quadratic kernel of <math|<math-ss|T>>. Its periodic evaluation has a small
  finite-period error retained in the activities. The prescribed kinetic
  kernel has <math|\<alpha\><rsub|b>=1>. Simplicity makes
  <math|\<alpha\><rsub|N,m>> independent of<nbsp><math|b>, as shown in the
  proof of Lemma<nbsp><reference|lem:C2>; by construction it is independent
  of<nbsp><math|p> and<nbsp><math|\<beta\><rprime|'>>.

  Let <math|<math-ss|J>> be the left-coordinate Hessian of the joint fine
  action and block penalty, including the coarse frame. Let <math|R> insert
  infinitesimal gauge transformations and <math|Q> the axial slice. For
  <math|\<mu\>\<gtr\>0>, put

  <\equation*>
    <around|(|d<rsub|U>*\<phi\>|)><rsub|e>=\<phi\><around|(|e<rsup|->|)>-<math-up|Ad><around|(|U<rsub|e>|)>*\<phi\><around|(|e<rsup|+>|)>,<space|2em>\<Delta\><rsub|U>=d<rsub|U><rsup|\<ast\>>*d<rsub|U>,<space|2em>\<frak-m\><rsub|\<mu\>><around|(|U|)>=\<mu\><rsup|2>*<around|[|\<mu\><rsup|2>*<around|(|\<Delta\><rsub|U>+\<mu\><rsup|2>*I|)><rsup|-1>|]><rsup|9><space|0.17em>.
  </equation*>

  For the rooted frame <math|\<Psi\>> of Lemma<nbsp><reference|lem:B4>,
  define

  <\equation*>
    X=D<rsub|w=0>*<around*|[|-log <around*|(|\<Psi\><around|(|U,h<rsub|<math-up|fr>>|)><rsup|-1>*\<Psi\>*<around|(|e<rsup|w>*<around|(|U,h<rsub|<math-up|fr>>|)>|)>|)>|]><space|0.17em>.
  </equation*>

  Frame covariance gives <math|X*R=I>. With <math|P<rsub|f>> the projection
  to fine links, set

  <\equation*>
    F<rsub|\<mu\>>=d<rsub|U><rsup|\<ast\>>*P<rsub|f>+\<frak-m\><rsub|\<mu\>>*X,<space|2em><math-ss|C><rsub|\<mu\>>=<math-ss|J>+F<rsub|\<mu\>><rsup|\<ast\>>*F<rsub|\<mu\>>,<space|2em><math-ss|G><rsub|\<mu\>>=\<Delta\><rsub|U>+\<frak-m\><rsub|\<mu\>><space|0.17em>.
  </equation*>

  The completed Hessian has the following local determinant identity.

  <\lemma>
    <dueto|Gauge completion><label|lem:C5> For <math|v> in a neighbourhood of
    zero,

    <\equation>
      <label|eq:C-FP><math-ss|T><around|(|v|)>=\<cal-L\><rsub|m+1><around|(|U<rsub|v>|)>+<tfrac|1|2>log
      det <math-ss|C><rsub|\<mu\>><around|(|v|)>-log det
      <math-ss|G><rsub|\<mu\>><around|(|v|)><space|0.17em>.
    </equation>
  </lemma>

  <\proof>
    Use Definitions<nbsp><reference|def:D01>, <reference|def:D04> and
    Lemmas<nbsp><reference|lem:B3>\U<reference|lem:B4>. Gauge invariance and
    stationarity give <math|<math-ss|J>R=0>. Ordering the axial tree by
    height makes the gauge block triangular with diagonal entries
    <math|\<pm\>1>, while the slice block is the identity; hence <math|det
    <around|(|R,Q|)><rsup|2>=1>. Since <math|F<rsub|\<mu\>>*R=<math-ss|G><rsub|\<mu\>>>,
    in these columns the completed form is

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|<math-ss|G><rsub|\<mu\>>>|<cell|F<rsub|\<mu\>>*Q>>|<row|<cell|0>|<cell|I>>>>><rsup|<space|-0.17em>\<ast\>><matrix|<tformat|<table|<row|<cell|I>|<cell|0>>|<row|<cell|0>|<cell|Q<rsup|\<ast\>><math-ss|J>Q>>>>><matrix|<tformat|<table|<row|<cell|<math-ss|G><rsub|\<mu\>>>|<cell|F<rsub|\<mu\>>*Q>>|<row|<cell|0>|<cell|I>>>>><space|0.17em>.
    </equation*>

    Thus <math|det <math-ss|C><rsub|\<mu\>>=<around|(|det
    <math-ss|G><rsub|\<mu\>>|)><rsup|2>*det
    <around|(|Q<rsup|\<ast\>><math-ss|J>Q|)>>. If <math|s> changes axial
    coordinates to left increments at the stationary point, then

    <\equation*>
      det M=<around|(|det D*s|)><rsup|2>*det
      <around|(|Q<rsup|\<ast\>><math-ss|J>Q|)>,<space|2em>J<rsub|<math-up|ax>>=<around|\||det
      D*s|\|><space|0.17em>.
    </equation*>

    The second equality follows by comparing the two Haar densities.
    Positivity of <math|M>, <math|J<rsub|<math-up|ax>>> and
    <math|<math-ss|G><rsub|\<mu\>>> near zero permits logarithms and
    proves<nbsp><eqref|eq:C-FP>.
  </proof>

  The auxiliary fine determinant used for comparison is

  <\equation*>
    \<Pi\><rsub|\<mu\>><around|(|U|)>=<tfrac|1|2>log det
    <around|(|<math-ss|A><around|(|U|)>+d<rsub|U>*d<rsub|U><rsup|\<ast\>>+<math-ss|M><rsub|\<mu\>><around|(|U|)>|)>-log
    det <around|(|\<Delta\><rsub|U>+\<frak-m\><rsub|\<mu\>><around|(|U|)>|)><space|0.17em>.
  </equation*>

  Here <math|<math-ss|A>> is the left-coordinate Hessian of the fine leading
  action and <math|<math-ss|M><rsub|\<mu\>>> applies
  <math|\<frak-m\><rsub|\<mu\>>> to each link component. Let
  <math|Y<rsub|\<mu\>>> be its infinite-volume quadratic Taylor kernel. The
  following comparison controls the coupling coefficient. Enlarge the
  threshold <math|u<rsub|j>> of Lemma<nbsp><reference|lem:B7> to include that
  of Lemma<nbsp><reference|lem:B5>; rows<nbsp>5 and<nbsp>8 of
  Section<nbsp><reference|sec:constants> choose odd ratios above it.

  <\lemma>
    <dueto|Block-to-fine coefficient comparison><label|lem:C6> For every odd
    <math|\<ell\>\<geqslant\>u<rsub|j>> as in rows<nbsp>5 and<nbsp>8 of
    Section<nbsp><reference|sec:constants>, put
    <math|\<mu\>=\<ell\><rsup|-1>>. There is a constant
    <math|d<rsub|<math-up|cmp>>\<geqslant\>0>, depending only on the fixed
    stage bounds, such that

    <\equation*>
      <around|\||\<alpha\><rsub|N,m>-\<alpha\><rsub|b><around|(|Y<rsub|\<mu\>>|)>|\|>\<leqslant\>d<rsub|<math-up|cmp>><space|0.17em>.
    </equation*>

    The constant is independent of <math|N,p,\<ell\>>.
  </lemma>

  <\proof>
    Use Lemmas<nbsp><reference|lem:C2>, <reference|lem:C5> and
    Lemmas<nbsp><reference|lem:B3>, <reference|lem:B5>\U<reference|lem:B7>.
    Here Lemma<nbsp><reference|lem:C2> is used for the input arrays, in
    descending induction from <math|m=N>. The full completed Hessian contains
    a contact term: the second derivative of the predictor multiplied by the
    first derivative of the penalty. Along the free interpolation, write
    <math|<math-ss|a><around|(|\<xi\>|)>> for this penalty derivative and
    <math|<math-ss|b><around|(|\<xi\>|)>> for the mixed fine/frame trace.
    Lemma<nbsp><reference|lem:B6> gives <math|<math-ss|a><around|(|\<xi\>|)>=O<around|(|<around|\||\<xi\>|\|><rsup|2>|)>>
    and <math|<math-ss|b><around|(|\<xi\>|)>=O<around|(|<around|\||\<xi\>|\|>|)>>.
    The change in the tested entry on removing the contact term consists of
    <math|<math-ss|ab>>, its reflected counterpart, and a term quadratic
    in<nbsp><math|<math-ss|a>>, with bounded analytic factors. It is
    <math|O<around|(|<around|\||\<xi\>|\|><rsup|3>|)>+O<around|(|<around|\||\<xi\>|\|><rsup|4>|)>>
    and has zero<nbsp><math|\<alpha\><rsub|b>>.

    For the remaining comparison, let <math|D> denote external field
    differentiation. Differentiate the logarithm and use the resolvent
    identity:

    <\equation*>
      D<rsup|2>*log det A<rsub|0>=<tr><around|(|A<rsub|0><rsup|-1>*D<rsup|2>*A<rsub|0>-A<rsub|0><rsup|-1>*D*A<rsub|0>*<space|0.17em>A<rsub|0><rsup|-1>*D*A<rsub|0>|)>,<space|2em>A<rsub|0><rsup|-1>-A<rsub|1><rsup|-1>=A<rsub|0><rsup|-1>*<around|(|A<rsub|1>-A<rsub|0>|)>*A<rsub|1><rsup|-1><space|0.17em>.
    </equation*>

    The difference consists of the block penalty, coarse-frame terms and
    regulator terms. The block penalty factors through the coarse links and
    the frame terms through the coarse frame variables: their dimensions per
    block are <math|4<dimG>> and <math|<dimG>>. Lemma<nbsp><reference|lem:B7>
    bounds the resulting products in the block-scaled operator norms. Its
    trace is therefore bounded by that dimension times the norm,
    independently of<nbsp><math|\<ell\>>.

    For the regulator put <math|P<rsub|\<mu\>>=\<mu\><rsup|2>*<around|(|\<Delta\><rsub|U>+\<mu\><rsup|2>*I|)><rsup|-1>>.
    At zero background the aliases <math|k<rsub|z>=<around|(|\<xi\>+2*\<pi\>*z|)>/\<ell\>>,
    in centered representatives, obey

    <\equation*>
      <frac|\<mu\><rsup|2>|<around|\||q<around|(|k<rsub|z>|)>|\|><rsup|2>+\<mu\><rsup|2>>\<leqslant\><frac|C|1+<around|\||z|\|><rsup|2>>,<space|2em><tr><around|\||P<rsub|\<mu\>><rsup|3>|\|>\<leqslant\>C*<big|sum><rsub|z\<in\><Z><rsup|4>><around|(|1+<around|\||z|\|><rsup|2>|)><rsup|-3>\<less\>\<infty\><space|0.17em>.
    </equation*>

    The same bounds hold on a fixed smaller complex strip in coarse momentum.
    In <math|P<rsub|\<mu\>><rsup|9>=<around|(|P<rsub|\<mu\>><rsup|3>|)><rsup|3>>,
    two derivatives leave at least one undifferentiated cube. A regulator
    insertion has the prefactor<nbsp><math|\<mu\><rsup|2>>, paired with an
    inverse bounded in block units by <math|C*\<mu\><rsup|-2>>.
    Lemma<nbsp><reference|lem:B7> supplies these bounds through two field
    insertions for the inverse and <math|P<rsub|\<mu\>>>. Thus the two powers
    cancel before taking the trace. Put the undifferentiated cube in trace
    norm and all other factors in operator norm;
    <math|<around|\||<tr><space|0.17em>X*Y|\|>\<leqslant\><tr><around|\||X|\|><space|0.17em><around|\<\|\|\>|Y|\<\|\|\>>>
    gives a uniform bound<nbsp><math|C<rsub|\<ast\>>> for the analytic
    difference kernel on a strip of width<nbsp><math|\<zeta\><rsub|\<ast\>>\<gtr\>0>.

    To extract the coefficient, restrict its tested entry to
    <math|\<xi\>=t*e<rsub|1>>. On a circle
    <math|<around|\||t|\|>=\<zeta\><rsub|\<ast\>>/2>, the analytic bound
    gives <math|<around|\||<around|[|t<rsup|2>|]>*g|\|>\<leqslant\>4*C<rsub|\<ast\>>/\<zeta\><rsub|\<ast\>><rsup|2>>;
    hence <math|<around|\||\<alpha\><rsub|b><around|(|g|)>|\|>\<leqslant\>8*C<rsub|\<ast\>>/\<zeta\><rsub|\<ast\>><rsup|2>>.
    This gives <math|d<rsub|<math-up|cmp>>>. The estimate applies after the
    zero-coefficient contact term has been removed.

    Finally, folding the auxiliary operator into coarse momentum does not
    alter<nbsp><math|\<alpha\><rsub|b>>. The symbol of the weights
    <math|w<rsup|<math-up|av>>> in<nbsp><eqref|eq:I12-predictor> vanishes at
    every nonzero alias to order at least two in each external leg. These
    aliases contribute <math|O<around|(|<around|\||\<xi\>|\|><rsup|4>|)>>.
    The zero alias in the tested entry is

    <\equation*>
      \<ell\><rsup|4>*\<ell\><rsup|-2>*Y<rsub|\<mu\>>*<around|(|\<xi\>/\<ell\>|)>+O<around|(|<around|\||\<xi\>|\|><rsup|3>|)><space|0.17em>.
    </equation*>

    The factors are the cell volume and <math|\<ell\><rsup|-1>> per
    interpolated field. Extracting the quadratic coefficient supplies
    another<nbsp><math|\<ell\><rsup|-2>>, so
    <math|\<ell\><rsup|4>*\<ell\><rsup|-2>*\<ell\><rsup|-2>=1>. This proves
    the comparison. For a period of side<nbsp><math|n>, Fourier coefficients
    at nonzero multiples of<nbsp><math|n> give an error in each quadratic
    coefficient tested on Fourier basis modes bounded by
    <math|C<rsub|\<ell\>><around|\||\<Lambda\>|\|>*e<rsup|-c<rsub|\<ell\>>*n>>.
    The Fourier basis modes here have unit amplitude at every site, so the
    bound includes the volume factor; the preparatory expansion of
    Lemma<nbsp><reference|lem:D4> retains it in the activities.
  </proof>

  <subsection*|The logarithmic coefficient><label|subsec:C-coefficient>

  The vertex comparison in the proof of Lemma<nbsp><reference|lem:C4> gives
  momentum orders <math|3,2,1> for the quadratic, cubic and quartic
  differences from Wilson. We use it for the input arrays, in descending
  induction from <math|m=N>. The resulting logarithmic term is the part of
  the one-step drift which remains after the block ratio has been chosen.

  <\lemma>
    <dueto|One-loop coefficient><label|lem:C7> There is a constant
    <math|d<rsub|j>\<geqslant\>0>, depending only on the fixed stage data,
    such that, for every step <math|m+1\<to\>m> at stage<nbsp><math|j> with
    odd <math|\<ell\><rsub|m>\<geqslant\>u<rsub|j>> as in
    Section<nbsp><reference|sec:constants>,

    <\equation*>
      <around|\||\<alpha\><rsub|N,m>+<slope>log
      \<ell\><rsub|m>|\|>\<leqslant\>d<rsub|j><space|0.17em>.
    </equation*>

    It is independent of <math|N,p,\<ell\><rsub|m>> and the running coupling.
  </lemma>

  <\proof>
    Use Definition<nbsp><reference|def:D01>, Lemmas<nbsp><reference|lem:C2>,
    <reference|lem:C6> and the vertex orders just described. Choose a colour
    basis index <math|b>, external polarization<nbsp><math|e<rsub|2>> and
    external momentum <math|t*e<rsub|1>>. Signed permutations reduce other
    transverse axis pairs to this one. For nonzero loop momentum <math|k>,
    write <math|\<varkappa\>=<around|\||k|\|>>. The leading ghost vertex is
    <math|-2*i*k<rsub|2><math-up|ad><around|(|e<rsub|b><rsup|<g>>|)>>. The
    vector vertex has the same orbital term on its four components and the
    spin term

    <\equation*>
      2*i*t*<around|(|\<delta\><rsub|i*2>*\<delta\><rsub|j*1>-\<delta\><rsub|i*1>*\<delta\><rsub|j*2>|)><math-up|ad><around|(|e<rsub|b><rsup|<g>>|)><space|0.17em>.
    </equation*>

    Simplicity and the trace metric give <math|<tr><rsub|<g>><around|(|<math-up|ad><around|(|e<rsub|b><rsup|<g>>|)><rsup|2>|)>=-<casimir>>.
    The bubble pairs vertices at <math|t*e<rsub|1>> and <math|-t*e<rsub|1>>.
    The orbital factor <math|-2*i*k<rsub|2>> is unchanged when
    <math|k\<mapsto\>k+t*e<rsub|1>> and <math|t*e<rsub|1>\<mapsto\>-t*e<rsub|1>>.
    Put <math|S<rsub|<math-up|sp>>=E<rsub|21>-E<rsub|12>>. Since
    <math|<tr><space|0.17em>S<rsub|<math-up|sp>>=0>, the orbital\Uspin cross
    terms vanish; the spin product is <math|<around|(|2*i*t*S<rsub|<math-up|sp>>|)>*<around|(|-2*i*t*S<rsub|<math-up|sp>>|)>=4*t<rsup|2>*S<rsub|<math-up|sp>><rsup|2>>,
    with trace <math|-8*t<rsup|2>>. The directional traces of the paired
    vertices are therefore <math|4*<around|(|-2*i*k<rsub|2>|)><rsup|2>-8*t<rsup|2>>
    for the vector and <math|<around|(|-2*i*k<rsub|2>|)><rsup|2>> for the
    ghost. Divide both by <math|\<varkappa\><rsup|2>*<around|\||k+t*e<rsub|1>|\|><rsup|2>>
    and differentiate twice at zero. In <math|<tfrac|1|2>log det
    <math-ss|C><rsub|\<mu\>>-log det <math-ss|G><rsub|\<mu\>>>, the bubble
    terms have weights <math|-1/4> for the vector and <math|+1/2> for the
    ghost. The extraction of <math|\<alpha\><rsub|b>> supplies the
    factor<nbsp><math|2>. Thus ghost minus half vector, with the external
    Taylor factor included, gives

    <\equation>
      <label|eq:C-pole>h<around|(|k|)>=4<casimir><around*|(|<frac|k<rsub|2><rsup|2>|\<varkappa\><rsup|6>>-<frac|4*k<rsub|2><rsup|2>*k<rsub|1><rsup|2>|\<varkappa\><rsup|8>>-<frac|1|\<varkappa\><rsup|4>>|)><space|0.17em>.
    </equation>

    Expanding the denominator gives <math|\<varkappa\><rsup|-4>-2*t*k<rsub|1>*\<varkappa\><rsup|-6>+t<rsup|2>*<around|(|4*k<rsub|1><rsup|2>*\<varkappa\><rsup|-8>-\<varkappa\><rsup|-6>|)>+O<around|(|t<rsup|3>|)>>;
    substitution yields<nbsp><eqref|eq:C-pole> with its sign.

    Let <math|k<rsub|\<mu\>,b><around|(|k|)>> be the integrand of
    <math|\<alpha\><rsub|b><around|(|Y<rsub|\<mu\>>|)>>, obtained with these
    weights and Taylor factors. Then

    <\equation*>
      \<alpha\><rsub|b><around|(|Y<rsub|\<mu\>>|)>=<around|(|2*\<pi\>|)><rsup|-4>*<big|int><rsub|<around|[|-\<pi\>,\<pi\>|]><rsup|4>><math-up|Re><space|0.17em>k<rsub|\<mu\>,b><around|(|k|)>*<space|0.17em>d*k<space|0.17em>.
    </equation*>

    For constants <math|A<rsub|<math-up|int>>,D<rsub|<math-up|int>>\<geqslant\>0>
    depending only on the fixed fine-stage bounds, uniformly in
    <math|\<mu\>>,

    <\equation>
      <label|eq:C-integrand><around|\||k<rsub|\<mu\>,b><around|(|k|)>|\|>\<leqslant\><frac|A<rsub|<math-up|int>>|<around|(|\<varkappa\>+\<mu\>|)><rsup|4>>,<space|2em><around|\||k<rsub|\<mu\>,b><around|(|k|)>-h<around|(|k|)>|\|>\<leqslant\>D<rsub|<math-up|int>>*<around*|(|\<varkappa\><rsup|-3>+\<mu\><rsup|2>*\<varkappa\><rsup|-6>|)>*<space|1em><around|(|\<varkappa\>\<geqslant\>\<mu\>|)><space|0.17em>.
    </equation>

    To obtain them, use <math|q<rsub|a><around|(|k|)>=i*k<rsub|a>+O<around|(|\<varkappa\><rsup|2>|)>>
    and the vertex orders above. For the free inverse
    <math|R<rsub|\<mu\>><around|(|k|)>>, differentiation of
    <math|R<rsub|\<mu\>>*A<rsub|\<mu\>>=I> gives

    <\equation*>
      <around|\<\|\|\>|R<rsub|\<mu\>>|\<\|\|\>>\<leqslant\>C*<around|(|\<varkappa\>+\<mu\>|)><rsup|-2>,<space|1em><around|\<\|\|\>|\<partial\>*R<rsub|\<mu\>>|\<\|\|\>>\<leqslant\>C*<around|(|\<varkappa\>+\<mu\>|)><rsup|-3>,<space|1em><around|\<\|\|\>|\<partial\><rsup|2>*R<rsub|\<mu\>>|\<\|\|\>>\<leqslant\>C*<around|(|\<varkappa\>+\<mu\>|)><rsup|-4><space|0.17em>.
    </equation*>

    Each first-order vertex has order <math|\<varkappa\>>, with bounded first
    external derivative. In a bubble, two momentum derivatives on one inverse
    give <math|\<varkappa\><rsup|2>*<around|(|\<varkappa\>+\<mu\>|)><rsup|-2>*<around|(|\<varkappa\>+\<mu\>|)><rsup|-4>\<leqslant\><around|(|\<varkappa\>+\<mu\>|)><rsup|-4>>;
    moving derivatives to vertices gives the same bound. On
    <math|\<varkappa\>\<geqslant\>\<mu\>>, a lattice-to-leading replacement
    gains one power of<nbsp><math|\<varkappa\>>, giving
    <math|C*\<varkappa\><rsup|-3>>. A regulator insertion contributes at most
    <math|C*\<mu\><rsup|2>*\<varkappa\><rsup|-6>>. The terms with a single
    second-order vertex are bounded by <math|C*<around|(|\<varkappa\><rsup|-2>+\<mu\><rsup|2>*\<varkappa\><rsup|-6>|)>>
    and so satisfy the same bound on the bounded momentum cube. The product
    rule gives the same bounds for the ninth-power regulator. Summing
    proves<nbsp><eqref|eq:C-integrand>.

    On the spherical shell <math|\<mu\>\<less\>\<varkappa\>\<leqslant\>1>,
    rotational symmetry gives angular means
    <math|k<rsub|2><rsup|2>/\<varkappa\><rsup|2>=1/4> and
    <math|k<rsub|2><rsup|2>*k<rsub|1><rsup|2>/\<varkappa\><rsup|4>=1/24>. For
    the latter, write the fourth moments as
    <math|a=\<bbb-E\>*\<theta\><rsub|1><rsup|4>> and
    <math|b=\<bbb-E\>*\<theta\><rsub|1><rsup|2>*\<theta\><rsub|2><rsup|2>> on
    the unit sphere: rotation by <math|\<pi\>/4> gives <math|a=3*b>, and
    <math|<around|(|<big|sum><rsub|i>\<theta\><rsub|i><rsup|2>|)><rsup|2>=1>
    gives <math|4*a+12*b=1>. Since the sphere has area
    <math|2*\<pi\><rsup|2>>,

    <\align>
      <tformat|<table|<row|<cell|<around|(|2*\<pi\>|)><rsup|-4>*<big|int><rsub|\<mu\>\<less\>\<varkappa\>\<leqslant\>1>h<around|(|k|)>*<space|0.17em>d*k>|<cell|=<frac|8*\<pi\><rsup|2><casimir>|<around|(|2*\<pi\>|)><rsup|4>>*<around*|(|<frac|1|4>-<frac|1|6>-1|)>*log
      \<mu\><rsup|-1><eq-number><label|eq:C-slope>>>|<row|<cell|>|<cell|=-<frac|11<casimir>|24*\<pi\><rsup|2>>*log
      \<mu\><rsup|-1>=-<slope>log \<mu\><rsup|-1><space|0.17em>.>>>>
    </align>

    The errors in<nbsp><eqref|eq:C-integrand> have shell integrals at most
    <math|2*\<pi\><rsup|2>*D<rsub|<math-up|int>>> and
    <math|\<pi\><rsup|2>*D<rsub|<math-up|int>>>. On
    <math|\<varkappa\>\<leqslant\>\<mu\>> the bound is
    <math|A<rsub|<math-up|int>>*\<mu\><rsup|-4>> and the volume is
    <math|\<pi\><rsup|2>*\<mu\><rsup|4>/2>; outside
    <math|\<varkappa\>\<leqslant\>1> the bound is
    <math|A<rsub|<math-up|int>>>. Hence

    <\equation*>
      <around|\||\<alpha\><rsub|b><around|(|Y<rsub|\<mu\>>|)>+<slope>log
      \<mu\><rsup|-1>|\|>\<leqslant\><around|(|2*\<pi\>|)><rsup|-4>*<around|{|A<rsub|<math-up|int>>*\<pi\><rsup|2>/2+A<rsub|<math-up|int>>*<around|(|2*\<pi\>|)><rsup|4>+3*\<pi\><rsup|2>*D<rsub|<math-up|int>>|}><space|0.17em>.
    </equation*>

    Combine this bound with Lemma<nbsp><reference|lem:C6> and put
    <math|\<mu\>=\<ell\><rsup|-1>>. Their sum gives<nbsp><math|d<rsub|j>>.
    The computed slope is <math|<slope>=2*b<rsub|0>> of
    Definition<nbsp><reference|def:D01>, with its stated trace metric.
  </proof>

  <\render-proof|Proof of Lemmas<nbsp><reference|lem:C1>
  and<nbsp><reference|lem:C2>>
    Use Definitions<nbsp><reference|def:D01>, <reference|def:D04>,
    <reference|def:D22>\U<reference|def:D23>, the free forms of
    Lemma<nbsp><reference|lem:B2>, and Lemmas<nbsp><reference|lem:C3>,
    <reference|lem:C4>, <reference|lem:C7>. Start at <math|m=N> and descend.
    The condition <math|c<rsub|<math-up|dir>,k>\<leqslant\>\<gamma\><rsub|k>>
    supplies the positive row factor at every level. Its zero-momentum
    entries give

    <\equation*>
      <wide|<math-ss|H>|^><around|(|0|)><rsub|\<frak-q\>*\<frak-r\>>=c<rsub|<math-up|dir>,J<rsub|m>>*\<delta\><rsub|\<frak-q\>*\<frak-r\>>+<big|sum><rsub|\<frak-p\>>s<rsub|\<frak-p\>*\<frak-q\>>*s<rsub|\<frak-p\>*\<frak-r\>>=\<delta\><rsub|\<frak-q\>*\<frak-r\>><space|0.17em>.
    </equation*>

    This proves the first cancellation and also forces
    <math|c<rsub|<math-up|dir>,J<rsub|m>>\<leqslant\>1> by taking a diagonal
    entry.

    Subtract <math|\<alpha\><rsub|N,m>> times the kinetic kernel from the
    quadratic kernel of<nbsp><math|<math-ss|T>>. The residual is transverse.
    Its colour bilinear form is scalar: its self-adjoint representing
    operator commutes with the adjoint action, and its eigenspaces are
    ideals, so simplicity leaves one eigenvalue. Signed permutations identify
    the diagonal orientation coefficients. Reflection in an axis belonging to
    exactly one of two distinct orientations cancels the off-diagonal
    coefficient. Thus there is one degree-two coefficient, removed by the
    subtraction. Reflection through the origin removes degree three. The
    residual link kernel consequently vanishes to order four.

    Apply the two-leg part of Lemma<nbsp><reference|lem:C3>. Removing its two
    curl symbols leaves a plaquette kernel of order two. If its Fourier
    coefficients for a fixed orientation-colour pair are
    <math|a<rsub|<math-up|loop>><around|(|z|)>>, then

    <\equation*>
      <big|sum><rsub|z>a<rsub|<math-up|loop>><around|(|z|)>=0,<space|2em><big|sum><rsub|z>z<rsub|a>*a<rsub|<math-up|loop>><around|(|z|)>=0*<space|1em><around|(|a=1,\<ldots\>,4|)><space|0.17em>.
    </equation*>

    Exponential decay permits termwise differentiation. Put the coefficients
    on coordinate paths to obtain the quadratic atoms and their absolutely
    convergent moments. Inherited loop atoms already have these moments,
    hence a link kernel of order four. Pullback by the free interpolation
    preserves this order. Only the quadratic Taylor kernel
    of<nbsp><math|<math-ss|T>> is assigned to these atoms; its higher terms
    enter the preparatory expansion of Lemma<nbsp><reference|lem:D4>.

    For the bounds, contour displacement and the path-length estimate after
    Lemma<nbsp><reference|lem:C3> give a sufficiently small width
    <math|w<rsub|k><rsup|<math-up|path>>\<gtr\>0>. Choose
    <math|A<rsub|k><rsup|<math-up|path>>> to bound the top construction and
    the two possible incoming stages <math|k,k+1>.
    Lemma<nbsp><reference|lem:C4> permits this choice before the
    corresponding ratios, by making the input-dependent terms at most one.
    Choose the widths small enough for these same three constructions.

    The new loop contribution has a weighted bound
    <math|a<rsub|j>*\<ell\><rsup|4>+b<rsub|j>*log \<ell\>+c<rsub|j>>. Here
    <math|\<ell\><rsup|4>> bounds the trace dimension per coarse cell, and
    the logarithm comes from the subtracted coefficient. For an inherited
    order-four link kernel, rescaling gives

    <\equation*>
      \<ell\><rsup|4>*\<ell\><rsup|-2>*O<around|(|<around|\||\<xi\>/\<ell\>|\|><rsup|4>|)>=O<around|(|\<ell\><rsup|-2><around|\||\<xi\>|\|><rsup|4>|)><space|0.17em>.
    </equation*>

    Its weighted pullback is therefore bounded by
    <math|C<rsub|j><rsup|<math-up|pb>>*\<ell\><rsup|-2>*\<Lambda\><rsub|m+1><rsup|<math-up|loop>>>.
    Choose <math|\<ell\>> so that <math|C<rsub|j><rsup|<math-up|pb>>*\<ell\><rsup|-2>\<leqslant\>1/4>,
    then raise the coupling entry threshold until

    <\equation*>
      2*<around|(|a<rsub|j>*\<ell\><rsup|4>+b<rsub|j>*log
      \<ell\>+c<rsub|j>|)>\<leqslant\>\<Lambda\><rsub|m><rsup|<math-up|loop>>,<space|2em>\<Lambda\><rsub|m+1><rsup|<math-up|loop>>\<leqslant\>2*\<Lambda\><rsub|m><rsup|<math-up|loop>><space|0.17em>.
    </equation*>

    The sum is at most <math|<tfrac|1|2>\<Lambda\><rsub|m><rsup|<math-up|loop>>+<tfrac|1|4>\<cdot\>2*\<Lambda\><rsub|m><rsup|<math-up|loop>>=\<Lambda\><rsub|m><rsup|<math-up|loop>>>.
    These choices are in the order of Section<nbsp><reference|sec:constants>:
    widths and amplitudes, ratios, then entry thresholds. The first
    inequality is possible because <math|2<around|(|<cutoffsize><rsub|m>|)><rsup|\<theta\><rsub|J<rsub|m>>>\<to\>\<infty\>>
    as <math|<refbeta><rsub|m>\<to\>\<infty\>> with
    <math|\<ell\><rsub|m>,J<rsub|m>> fixed. For the second, antitonicity
    of<nbsp><math|\<theta\><rsub|k>>, <math|J<rsub|m>\<leqslant\>J<rsub|m+1>\<leqslant\>J<rsub|m>+1>,
    and <math|\<theta\><rsub|k>\<leqslant\>1> give, once
    <math|<cutoffsize><rsub|m>\<gtr\>1>,

    <\equation*>
      <frac|\<Lambda\><rsub|m+1><rsup|<math-up|loop>>|\<Lambda\><rsub|m><rsup|<math-up|loop>>>\<leqslant\><around*|(|<frac|<cutoffsize><rsub|m+1>|<cutoffsize><rsub|m>>|)><rsup|\<theta\><rsub|J<rsub|m>>>\<leqslant\><frac|<cutoffsize><rsub|m+1>|<cutoffsize><rsub|m>>\<longrightarrow\>1
    </equation*>

    as <math|<refbeta><rsub|m>\<to\>\<infty\>> with <math|\<ell\><rsub|m>>
    fixed. The descent starts with zero loops and the fourth-order Wilson
    matching of Lemma<nbsp><reference|lem:C4>. The kernels and paths are
    chosen once for all periods. Finally <math|<around|\||\<cal-F\><rsub|s>|\|>\<leqslant\>2>
    and <math|<around|\||\<frak-a\><rsub|i><rsup|<around|(|k|)>><around|(|U,x|)>|\|>\<leqslant\>2<rsup|k><around|\||\<frak-a\><rsub|i><rsup|<around|(|k|)>>|\|>>
    give absolute convergence of the action.
  </render-proof>

  <subsection*|The scalar reset><label|subsec:C-reset>

  Use Definitions<nbsp><reference|def:D06>,
  <reference|def:D05a>\U<reference|def:D05b> and
  Lemmas<nbsp><reference|lem:C1>\U<reference|lem:C2>. Write
  <math|<pathaction><rsub|N,m><around|(|\<beta\>,U|)>=\<beta\><math-ss|K><rsup|<math-up|kin>><rsub|m><around|(|U|)>+\<cal-L\><rsub|m><around|(|U|)>>.
  For an input curve <math|\<rho\><rprime|'><rsub|u>> of
  Theorem<nbsp><reference|prop:RG>, put <math|\<cal-H\><rsub|u>=<blockmap|m><rsub|\<beta\><rprime|'><rsub|u>><density><space|0.17em>\<rho\><rprime|'><rsub|u>>
  and <math|b<rsub|u>=\<beta\><rprime|'><rsub|u>+\<alpha\><rsub|N,m>>.
  Lemma<nbsp><reference|lem:D5> supplies regular and forced sums
  <math|E<rsub|u><rsup|<math-up|sum>>,\<cal-F\><rsub|u>>, independent of
  <math|d>, with trial density

  <\equation*>
    q<rsub|u,d><around|(|U|)>=e<rsup|-<around|(|b<rsub|u>+d|)><math-ss|K><rsup|<math-up|kin>><rsub|m><around|(|U|)>-\<cal-L\><rsub|m><around|(|U|)>-E<rsub|u><rsup|<math-up|sum>><around|(|U|)>>*\<cal-F\><rsub|u><around|(|U|)><space|0.17em>.
  </equation*>

  The flat-field normalizations give <math|q<rsub|u,d><around|(|1|)>=1>. Fix
  <math|r<rsub|<math-up|res>>=1> before <math|\<omega\><rsub|j><rsup|<math-up|RG>>\<geqslant\>d<rsub|j>+1>
  as in Section<nbsp><reference|sec:constants>.

  Lemma<nbsp><reference|lem:D4> gives a preparatory sum
  <math|E<rsub|u><rsup|<math-up|pre>>> with bound
  <math|c<rsub|<math-up|pre>>*\<epsilon\><rsub|m><rsup|<math-up|reg>>/4>, for
  a stage constant <math|c<rsub|<math-up|pre>>\<geqslant\>4>.
  Lemmas<nbsp><reference|lem:D1>, <reference|lem:D5> give the final
  bound<nbsp><eqref|eq:I12-activity-caps> and
  <math|q<rsub|u,\<Delta\><rsub|u>>=\<cal-H\><rsub|u>/\<cal-H\><rsub|u><around|(|1|)>>
  for some real <math|\<Delta\><rsub|u>>. The estimate below proves
  <math|<around|\||\<Delta\><rsub|u>|\|>\<leqslant\>1>; that bound is no
  input to the identity.

  The remaining scalar correction can be read from a single configuration
  with a definite kinetic energy.

  <\lemma>
    <dueto|Coupling reset><label|lem:C8> For each input curve of
    Theorem<nbsp><reference|prop:RG>, the coupling in the representation of
    Lemma<nbsp><reference|lem:D5> is continuous and satisfies

    <\equation*>
      \<beta\><rsub|u>=\<beta\><rprime|'><rsub|u>-<slope>log
      \<ell\><rsub|m>+e<rsub|u>,<space|2em><around|\||e<rsub|u>|\|>\<leqslant\>d<rsub|j>+1\<leqslant\>\<omega\><rsub|j><rsup|<math-up|RG>><space|0.17em>.
    </equation*>

    The bound is independent of <math|N,p,u> and the input curve.
  </lemma>

  <\proof>
    Use Definitions<nbsp><reference|def:D01>, <reference|def:D06>,
    Lemmas<nbsp><reference|lem:C1>, <reference|lem:C7>, and
    Lemmas<nbsp><reference|lem:D1>, <reference|lem:D4>\U<reference|lem:D6>.
    Recall <math|t=t<rsub|m>\<leqslant\>1> from row<nbsp>7 of
    Section<nbsp><reference|sec:constants>. Put a group element of chord
    <math|h<rsub|<math-up|pr>>=\<tau\>*t> on direction-<math|1> links whose
    second coordinate is even, and the identity elsewhere. Continuity along a
    nonconstant one-parameter subgroup gives
    <math|\<varepsilon\><rsub|G>\<gtr\>0> such that every chord in
    <math|<around|[|0,\<varepsilon\><rsub|G>|]>> occurs. Choose

    <\equation*>
      0\<less\>\<tau\>\<leqslant\>min <around*|(|\<varepsilon\><rsub|G>,<frac|1|4>,<frac|c<rsub|<math-up|dir>,J<rsub|m>>|512*<around|(|1+A<rsub|J<rsub|m>><rsup|<math-up|path>>|)>>|)><space|0.17em>.
    </equation*>

    Every <math|<around|(|1,2|)>> plaquette has chord
    <math|h<rsub|<math-up|pr>>> and all other plaquettes have chord zero.
    Thus this configuration<nbsp><math|V> is everywhere healthy. All periods
    here are even because <math|4\<mid\>L<rsub|p>>. Signed permutations
    preserve the sum of direct plaquette charges, so the direct contribution
    to <math|<math-ss|K><rsup|<math-up|kin>><rsub|m><around|(|V|)>> is at
    least <math|<around|\||\<Lambda\>|\|>*c<rsub|<math-up|dir>,J<rsub|m>>*h<rsub|<math-up|pr>><rsup|2>/2>.
    Row squares are nonnegative. Using the bound
    <math|4*h<rsub|<math-up|pr>>\<leqslant\>1> for the curvature factors, the
    cubic and quartic sums contribute at most

    <\equation*>
      <around|\||\<Lambda\>|\|>*A<rsub|J<rsub|m>><rsup|<math-up|path>>*<around|(|<around|(|4*h<rsub|<math-up|pr>>|)><rsup|3>+<around|(|4*h<rsub|<math-up|pr>>|)><rsup|4>|)>\<leqslant\><around|\||\<Lambda\>|\|>*c<rsub|<math-up|dir>,J<rsub|m>>*h<rsub|<math-up|pr>><rsup|2>/4<space|0.17em>.
    </equation*>

    The same estimate holds after averaging. Consequently

    <\equation*>
      K<rsub|<math-up|pr>>=<math-ss|K><rsup|<math-up|kin>><rsub|m><around|(|V|)>\<geqslant\><around|\||\<Lambda\>|\|>*\<chi\><rsub|<math-up|pr>>*t<rsup|2>,<space|2em>\<chi\><rsub|<math-up|pr>>=c<rsub|<math-up|dir>,J<rsub|m>>*\<tau\><rsup|2>/4\<gtr\>0<space|0.17em>.
    </equation*>

    Lemma<nbsp><reference|lem:D4> gives <math|\<cal-H\><rsub|u><around|(|1|)>,\<cal-H\><rsub|u><around|(|V|)>\<gtr\>0>.
    Put <math|v<rsub|u>=<around|\||\<Lambda\>|\|><rsup|-1>*log
    \<cal-H\><rsub|u><around|(|1|)>> and <math|\<varepsilon\>=\<epsilon\><rsub|m><rsup|<math-up|reg>>>.
    Its <math|<math-ss|K><rsup|<math-up|kin>><rsub|2,m>> is the nonlinear
    direct and row functional, omitting cubic and quartic atoms. Taking its
    logarithmic contrast gives

    <\equation>
      <label|eq:C-prereset>log <frac|\<cal-H\><rsub|u><around|(|1|)>|\<cal-H\><rsub|u><around|(|V|)>>=\<beta\><rprime|'><rsub|u><math-ss|K><rsup|<math-up|kin>><rsub|m><around|(|V|)>+\<alpha\><rsub|N,m><math-ss|K><rsup|<math-up|kin>><rsub|2,m><around|(|V|)>+\<cal-L\><rsub|m><around|(|V|)>+E<rsub|u><rsup|<math-up|pre>><around|(|V|)>-E<rsub|u><rsup|<math-up|pre>><around|(|1|)><space|0.17em>.
    </equation>

    The pre-reset bound of Lemma<nbsp><reference|lem:D4>, summed over anchors
    as in Definition<nbsp><reference|def:D05b>, bounds each of the last two
    values by <math|<around|\||\<Lambda\>|\|>*c<rsub|<math-up|pre>>*\<varepsilon\>/4>.
    No vanishing condition at<nbsp><math|1> is needed for this preparatory
    sum.

    On everywhere-healthy configurations every curvature slot has norm at
    most<nbsp><math|t>. Lemma<nbsp><reference|lem:C1> and
    <math|t\<leqslant\>1> therefore give

    <\equation*>
      <around|\||<math-ss|K><rsup|<math-up|kin>><rsub|m>-<math-ss|K><rsup|<math-up|kin>><rsub|2,m>|\|>\<leqslant\>2<around|\||\<Lambda\>|\|>*A<rsub|J<rsub|m>><rsup|<math-up|path>>*t<rsup|3><space|0.17em>.
    </equation*>

    After <math|\<ell\>> is fixed, Lemma<nbsp><reference|lem:C7> bounds
    <math|<around|\||\<alpha\><rsub|N,m>|\|>> by a stage constant. Raise the
    coupling entry threshold until <math|2<around|\||\<alpha\><rsub|N,m>|\|>*A<rsub|J<rsub|m>><rsup|<math-up|path>>*t<rsup|3>\<leqslant\>c<rsub|<math-up|pre>>*\<varepsilon\>/2>.
    This is possible since <math|t<rsup|3>/\<varepsilon\>=<refbeta><rsub|m><rsup|-2/5><around|(|<cutoffsize><rsub|m>|)><rsup|3>\<to\>0>.
    Together with<nbsp><eqref|eq:C-prereset> this yields

    <\equation*>
      <around*|\||b<rsub|u>*K<rsub|<math-up|pr>>+\<cal-L\><rsub|m><around|(|V|)>-log
      <frac|\<cal-H\><rsub|u><around|(|1|)>|\<cal-H\><rsub|u><around|(|V|)>>|\|>\<leqslant\><around|\||\<Lambda\>|\|>*c<rsub|<math-up|pre>>*\<varepsilon\><space|0.17em>.
    </equation*>

    For the final regular sum, Lemma<nbsp><reference|lem:D1>
    and<nbsp><eqref|eq:I12-activity-caps> give

    <\equation*>
      <around|\||E<rsub|u><rsup|<math-up|sum>><around|(|V|)>|\|>\<leqslant\><big|sum><rsub|x><big|sum><rsub|o<rsub|i>=x>e<rsub|i><rsup|<math-up|maj>>\<leqslant\><around|\||\<Lambda\>|\|>*\<cal-E\><rsub|m>\<leqslant\><around|\||\<Lambda\>|\|>*\<varepsilon\><space|0.17em>.
    </equation*>

    Since the activity families are fixed as <math|d> varies, the scalar
    discrepancy is affine:

    <\align*>
      <tformat|<table|<row|<cell|f*<around|(|u,d|)>>|<cell|=<around|(|b<rsub|u>+d|)>*K<rsub|<math-up|pr>>+\<cal-L\><rsub|m><around|(|V|)>+E<rsub|u><rsup|<math-up|sum>><around|(|V|)>-log
      <frac|\<cal-H\><rsub|u><around|(|1|)>|\<cal-H\><rsub|u><around|(|V|)>>>>|<row|<cell|>|<cell|=f*<around|(|u,0|)>+d*K<rsub|<math-up|pr>><space|0.17em>.>>>>
    </align*>

    Its unique root satisfies

    <\equation*>
      d<rsub|u>=-f*<around|(|u,0|)>/K<rsub|<math-up|pr>>,<space|2em><around|\||d<rsub|u>|\|>\<leqslant\><frac|<around|(|c<rsub|<math-up|pre>>+1|)>*\<epsilon\><rsub|m><rsup|<math-up|reg>>|\<chi\><rsub|<math-up|pr>>*t<rsub|m><rsup|2>>\<leqslant\>1<space|0.17em>.
    </equation*>

    Increase the entry threshold to obtain the final inequality, using
    <math|\<epsilon\><rsub|m><rsup|<math-up|reg>>/t<rsub|m><rsup|2>=<refbeta><rsub|m><rsup|-1/10><around|(|<cutoffsize><rsub|m>|)><rsup|-2>\<to\>0>.
    The block integral and activity sums are continuous in<nbsp><math|u> by
    Lemma<nbsp><reference|lem:D6>, so <math|d<rsub|u>> is continuous.

    Since <math|V> has no flagged sites, <math|\<cal-F\><rsub|u><around|(|V|)>=1>.
    Evaluating the identity of Lemma<nbsp><reference|lem:D5> at <math|V>
    therefore gives <math|f*<around|(|u,\<Delta\><rsub|u>|)>=0>. Uniqueness
    gives <math|\<Delta\><rsub|u>=d<rsub|u>>. Hence multiplication by
    <math|\<cal-H\><rsub|u><around|(|1|)>=e<rsup|v<rsub|u><around|\||\<Lambda\>|\|>>>
    gives the density identity at<nbsp><math|d<rsub|u>>. Its coupling is
    <math|\<beta\><rsub|u>=\<beta\><rprime|'><rsub|u>+\<alpha\><rsub|N,m>+d<rsub|u>>.
    Lemma<nbsp><reference|lem:C7> and <math|<around|\||d<rsub|u>|\|>\<leqslant\>1>
    prove the claimed drift.
  </proof>

  <section|Activities and the inductive step><label|sec:partII-D>

  <em|This section is under construction.>

  <\definition>
    <dueto|Regular activities><label|def:D24> To be stated here.
  </definition>

  <\definition>
    <dueto|Forced activities><label|def:D25> To be stated here.
  </definition>

  <\lemma>
    <dueto|Activity bounds and covariance><label|lem:D1> For every
    representation in the chosen classes, both activity families are
    countable and equivariant under translations and <math|<hypercubic>>,
    including supports, anchors, inventories and tests. The nonnegative
    majorants of Definitions<nbsp><reference|def:D05a>\U<reference|def:D05b>
    have convergent weighted series and satisfy

    <\equation*>
      \<cal-E\><rsub|m>\<leqslant\>\<epsilon\><rsub|m><rsup|<math-up|reg>>,<space|2em>\<cal-K\><rsub|m>\<leqslant\>\<epsilon\><rsub|m><rsup|<math-up|for>><space|0.17em>.
    </equation*>
  </lemma>

  The proof of Lemma<nbsp><reference|lem:D1> is deferred to this section's
  activity estimates.

  <\lemma>
    <dueto|Specified recursion><label|lem:D2> To be stated here.
  </lemma>

  <\definition>
    <dueto|Continuity of representations><label|def:D25a> A curve has fixed
    activity addresses and tests, and continuous coupling and vacuum scalar.
    At <math|u<rsub|0>>, the regular derivatives of
    <math|E<rsub|i><around|(|u|)>-E<rsub|i><around|(|u<rsub|0>|)>> and forced
    values of <math|K<rsub|i><around|(|u|)>-K<rsub|i><around|(|u<rsub|0>|)>>
    have nonnegative majorants <math|e<rsub|i><around|(|u|)>,k<rsub|i><around|(|u|)>>
    in the sense of Definition<nbsp><reference|def:D05a>, with

    <\equation*>
      <big|sum><rsub|i>e<rsup|\<sigma\><rsub|J<rsub|m>><cover><rsub|B<rsub|m>><around|(|X<rsub|i>|)>>*e<rsub|i><around|(|u|)>+<big|sum><rsub|i>e<rsup|\<sigma\><rsub|J<rsub|m>><cover><rsub|B<rsub|m>><around|(|Y<rsub|i>|)>>*k<rsub|i><around|(|u|)>\<longrightarrow\>0*<space|1em><around|(|u\<to\>u<rsub|0>|)><space|0.17em>.
    </equation*>

    Both sums run over all addresses. This gives continuity for coupling
    tuning without differentiating flag boundaries.
  </definition>

  The initial activities retain the difference between the Wilson energy and
  the clipped path action, including configurations with flagged plaquettes.

  <\lemma>
    <dueto|Wilson initialization><label|lem:D3> For every <math|N,p>, there
    is a continuous curve <math|\<beta\>\<mapsto\>\<rho\><rsup|<math-up|W>><rsub|\<beta\>>\<in\>\<cal-I\><rsub|N,p>>
    on <math|\<frak-B\><rsub|N>> with coupling <math|\<beta\>>, vacuum scalar
    zero, and

    <\equation*>
      <density><space|0.17em>\<rho\><rsup|<math-up|W>><rsub|\<beta\>>=e<rsup|-\<beta\>*E<rsup|<math-up|W>><rsub|L<rsub|p>*D<rsub|N>>><space|0.17em>.
    </equation*>

    Together with the same classes and relation, this curve satisfies
    Theorem<nbsp><reference|prop:RG>.
  </lemma>

  The proof of Lemma<nbsp><reference|lem:D3> is deferred to this section's
  Wilson initialization.

  Fix the constructed path arrays and an input curve
  <math|\<rho\><rprime|'><rsub|u>> of Theorem<nbsp><reference|prop:RG>. Use
  the regular and forced norms of Definitions<nbsp><reference|def:D05a>\U<reference|def:D05b>.
  Set

  <\equation*>
    \<cal-H\><rsub|u>=<blockmap|m><rsub|\<beta\><rprime|'><rsub|u>><density><space|0.17em>\<rho\><rprime|'><rsub|u>,<space|2em><pathaction><rsub|N,m><around|(|\<beta\>,U|)>=\<beta\><math-ss|K><rsub|m><rsup|<math-up|kin>><around|(|U|)>+\<cal-L\><rsub|m><around|(|U|)><space|0.17em>.
  </equation*>

  Let <math|<math-ss|K><rsub|2,m><rsup|<math-up|kin>>> be the direct and row
  part of <math|<math-ss|K><rsub|m><rsup|<math-up|kin>>>, with the cubic and
  quartic atoms omitted; this is a nonlinear function of the links. The next
  expansion is needed only when <math|<flags><rsub|m><around|(|U|)>=\<varnothing\>>.

  <\lemma>
    <dueto|Pre-reset expansion><label|lem:D4> There is a preparatory regular
    family with sum <math|E<rsub|u><rsup|<math-up|pre>>> and weighted bound
    <math|c<rsub|<math-up|pre>>*\<epsilon\><rsub|m><rsup|<math-up|reg>>/4>,
    such that

    <\equation*>
      \<cal-H\><rsub|u><around|(|U|)>=exp
      <around|{|\<tau\><rsub|u>\|\<Lambda\>\|-\<beta\><rprime|'><rsub|u><math-ss|K><rsub|m><rsup|<math-up|kin>><around|(|U|)>-\<alpha\><rsub|N,m><math-ss|K><rsub|2,m><rsup|<math-up|kin>><around|(|U|)>-\<cal-L\><rsub|m><around|(|U|)>-E<rsub|u><rsup|<math-up|pre>><around|(|U|)>|}>
    </equation*>

    whenever <math|<flags><rsub|m><around|(|U|)>=\<varnothing\>>. Here
    <math|c<rsub|<math-up|pre>>\<geqslant\>4> depends only on the fixed
    stage. In particular, <math|\<cal-H\><rsub|u><around|(|1|)>,\<cal-H\><rsub|u><around|(|U|)>\<gtr\>0>
    on this set; no vanishing at <math|1> is imposed on
    <math|E<rsub|u><rsup|<math-up|pre>>>.
  </lemma>

  The proof of Lemma<nbsp><reference|lem:D4> is deferred to this section's
  preparatory connected expansion.

  Write <math|E<rsub|u><rsup|<math-up|sum>>> for the final regular sum and
  <math|\<cal-F\><rsub|u>> for the final disjoint-support forced sum in
  Definition<nbsp><reference|def:D06>. They are held fixed as a trial
  correction <math|d> varies. Define

  <\equation*>
    q<rsub|u,d><around|(|U|)>=e<rsup|-<around|(|\<beta\><rprime|'><rsub|u>+\<alpha\><rsub|N,m>+d|)><math-ss|K><rsub|m><rsup|<math-up|kin>><around|(|U|)>-\<cal-L\><rsub|m><around|(|U|)>-E<rsub|u><rsup|<math-up|sum>><around|(|U|)>>*\<cal-F\><rsub|u><around|(|U|)><space|0.17em>.
  </equation*>

  The next identity fixes the entire density before the scalar estimate of
  Lemma<nbsp><reference|lem:C8> is used.

  <\lemma>
    <dueto|Exact density representation><label|lem:D5> The final activities
    satisfy Lemma<nbsp><reference|lem:D1>, vanish at the flat field in their
    regular part, and are independent of <math|d>. For every <math|u> there
    is <math|\<Delta\><rsub|u>\<in\><R>> such that

    <\equation*>
      q<rsub|u,\<Delta\><rsub|u>><around|(|U|)>=<frac|\<cal-H\><rsub|u><around|(|U|)>|\<cal-H\><rsub|u><around|(|1|)>><space|2em><text|for
      every >U<space|0.17em>.
    </equation*>

    Moreover, <math|\<cal-F\><rsub|u><around|(|U|)>=1> when
    <math|<flags><rsub|m><around|(|U|)>=\<varnothing\>>. No bound on
    <math|\<Delta\><rsub|u>> is assumed here.
  </lemma>

  The proof of Lemma<nbsp><reference|lem:D5> is deferred to this section's
  exact activity identities; it uses no conclusion of
  Lemma<nbsp><reference|lem:C8>.

  The scalar equation also uses continuity along the input curve, without
  differentiating a flag boundary.

  <\lemma>
    <dueto|Continuity of the activity sums><label|lem:D6> For the input
    curves of Theorem<nbsp><reference|prop:RG>, the final activity families
    have fixed addresses and are continuous in the weighted sense of
    Definition<nbsp><reference|def:D25a>. For every fixed configuration
    <math|U>,

    <\equation*>
      u\<longmapsto\>\<cal-H\><rsub|u><around|(|U|)>,<space|2em>u\<longmapsto\>E<rsub|u><rsup|<math-up|sum>><around|(|U|)>,<space|2em>u\<longmapsto\>\<cal-F\><rsub|u><around|(|U|)>
    </equation*>

    are continuous.
  </lemma>

  The proof of Lemma<nbsp><reference|lem:D6> is deferred to this section's
  continuity estimates.

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

  Write <math|<around|\<langle\>|F|\<rangle\>><rsub|N,p>=<big|int>F*<space|0.17em>d*\<mu\><rsub|N,p>>.
  A bond tiling has cell boundaries through link midpoints. The reflected
  copies below place one bounded gauge-invariant observable in every cell.

  <\definition>
    <dueto|Chessboard root><label|def:D27> For a tiling<nbsp><math|\<cal-T\>>
    into congruent reflected cells and an observable<nbsp><math|F> in its
    base cell, let<nbsp><math|<around|(|F|)><rsub|C>> be its reflected copy
    in<nbsp><math|C>, conjugated on odd reflections. Set

    <\equation*>
      <around|\<\|\|\>|F|\<\|\|\>><rsub|\<cal-T\>>=<around*|\||<around*|\<langle\>|<big|prod><rsub|C\<in\>\<cal-T\>><around|(|F|)><rsub|C>|\<rangle\>><rsub|N,p>|\|><rsup|1/<around|\||\<cal-T\>|\|>><space|0.17em>.
    </equation*>

    Interior means dependence only on links with both endpoints strictly
    inside the base cell. The centered tiling<nbsp><math|\<cal-T\><rsub|m><around|(|y|)>>
    has physical cell side<nbsp><math|a<rsub|m>> and base cell centered
    at<nbsp><math|y>. This quantity converts reflected-product estimates into
    bounds on one insertion.
  </definition>

  <\lemma>
    <dueto|Centered bound><label|lem:E2.3> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Difference estimate><label|lem:E2.4> To be stated here.
  </lemma>

  <paragraph|Corrections to marked insertions.> The following estimates
  concern the insertions of Definition<nbsp><reference|def:D08>, with the
  terminal maps<nbsp><math|<math-ss|Z><rsub|N,p,d>> of
  Lemma<nbsp><reference|lem:E2.1>. They will be used to identify the quotient
  fields in Section<nbsp><reference|sec:partII-F>. Fix strictly increasing
  spacing and volume subsequences<nbsp><math|N=<math-ss|n><around|(|j|)>>
  and<nbsp><math|p=P<around|(|k|)>>. All the estimates below hold for every
  such choice and survive further refinements. Write

  <\equation>
    <label|eq:E2-tails><math-up|olim><space|0.17em>X<rsub|N,p>=x<space|1em>\<Longleftrightarrow\><space|1em>\<forall\>\<varepsilon\>\<gtr\>0\<exists\>k<rsub|0>\<forall\>k\<geqslant\>k<rsub|0>\<exists\>j<rsub|0><around|(|k|)>\<forall\>j\<geqslant\>j<rsub|0><around|(|k|)>:<around|\||X<rsub|<math-ss|n><around|(|j|)>,P<around|(|k|)>>-x|\|>\<less\>\<varepsilon\><space|0.17em>.
  </equation>

  For vectors use their fixed coefficient norm. An assertion holds eventually
  in this order with the same quantifiers after<nbsp><math|\<varepsilon\>> is
  omitted. A family<nbsp><math|c<rsub|N,p>\<in\>V<rsub|d>> is admissible when

  <\equation>
    <label|eq:F-subpower>\<forall\>\<varepsilon\>\<gtr\>0\<exists\>k<rsub|0>\<forall\>k\<geqslant\>k<rsub|0>\<exists\>j<rsub|0><around|(|k|)>\<forall\>j\<geqslant\>j<rsub|0><around|(|k|)>:<around|\<\|\|\>|<math-ss|Z><rsub|<math-ss|n><around|(|j|)>,P<around|(|k|)>,d><rsup|-1>c<rsub|<math-ss|n><around|(|j|)>,P<around|(|k|)>>|\<\|\|\>><rsub|\<infty\>>\<leqslant\>a<rsub|<math-ss|n><around|(|j|)>><rsup|-\<varepsilon\>><space|0.17em>.
  </equation>

  This permits the coefficient growth needed to correct a positional
  difference.

  We use the chessboard root and interior condition of
  Definition<nbsp><reference|def:D27>. Translates of a bond tiling are by
  lattice vectors. An anchor is the lattice site at which an insertion is
  placed. In a base cell of side<nbsp><math|a<rsub|k>>,
  let<nbsp><math|z<rsup|a>> be its integer coordinate measured from the first
  site in direction<nbsp><math|a>, and put

  <\equation>
    <label|eq:E2-margin>M<rsub|q,k,N>=<around*|\<lfloor\>|<frac|a<rsub|k>|8*<around|(|q+1|)>*a<rsub|N>>|\<rfloor\>>,<space|2em>M<rsub|q,k,N>\<leqslant\>z<rsup|a>,<space|1em>z<rsup|a>+M<rsub|q,k,N>+1\<leqslant\>a<rsub|k>/a<rsub|N><space|0.17em>.
  </equation>

  These inequalities specify a relative interior margin.

  <\definition>
    <dueto|Small errors><label|def:E2-small> An observable
    family<nbsp><math|E<rsub|N,p><around|(|y|)>> is small if
    some<nbsp><math|\<eta\><rsub|N,p>\<geqslant\>0> with
    <math|<math-up|olim><space|0.17em>\<eta\><rsub|N,p>=0> satisfies the
    following condition. For every arity<nbsp><math|q> and lower
    level<nbsp><math|m>, there is <math|k\<geqslant\>m> such that, eventually
    in the order<nbsp><eqref|eq:E2-tails>, <math|k\<leqslant\>N> and every
    translated bond tiling<nbsp><math|\<cal-T\>> of
    side<nbsp><math|a<rsub|k>> and every base-cell anchor
    satisfying<nbsp><eqref|eq:E2-margin> obey

    <\equation*>
      E<rsub|N,p><around|(|y|)><text| is interior>,<space|2em><around|\<\|\|\>|E<rsub|N,p><around|(|y|)>|\<\|\|\>><rsub|\<cal-T\>>\<leqslant\>\<eta\><rsub|N,p><space|0.17em>.
    </equation*>
  </definition>

  The tolerance family is chosen before<nbsp><math|q,m,k>. This is stronger
  than smallness in just one centered cell.

  The equation projections separate the coefficient directions controlled by
  exact cutoff identities. The free equation space consists of polynomial
  labels that vanish on curvature jets satisfying the Maxwell equations. Its
  transported image is the kernel of the projections chosen below; the free
  quotient has dimension<nbsp><math|dim<rsub|<C>><maxwellspace|d>>. The
  projections and the equation observables in
  Lemmas<nbsp><reference|lem:E2.6>\U<reference|lem:E2.7> are chosen together,
  before the spacing and volume subsequences.

  <\lemma>
    <dueto|Equation projections><label|lem:E2.6> For every<nbsp><math|d>,
    there are complex linear idempotents <math|\<Pi\><rsub|d,N,p>:V<rsub|d>\<to\>V<rsub|d>>
    and <math|C<rsub|d>\<less\>\<infty\>> such that

    <\equation*>
      <around|\<\|\|\>|\<Pi\><rsub|d,N,p>|\<\|\|\>>\<leqslant\>C<rsub|d>,<space|2em>dim
      V<rsub|d>\<leqslant\>dim ker \<Pi\><rsub|d,N,p>+dim<rsub|<C>><maxwellspace|d><space|0.17em>.
    </equation*>

    These projections can be chosen so that Lemma<nbsp><reference|lem:E2.7>
    holds for every spacing and volume subsequence.
  </lemma>

  The proof is deferred to the marked-field estimates and the independent
  free equation count in this subsection.

  The next estimate converts a coefficient equation into an observable with
  exact separated moment identities.

  <\lemma>
    <dueto|Equation observables><label|lem:E2.7> For these same projections,
    every admissible family<nbsp><math|c<rsub|N,p>\<in\>ker
    \<Pi\><rsub|d,N,p>> admits a measurable observable
    family<nbsp><math|Z<rsub|N,p><around|(|y|)>>, bounded at each anchor and
    cutoff eventually in<nbsp><eqref|eq:E2-tails>, for which
    <math|O<rsup|<around|(|d|)>><rsub|N,p><around|(|c<rsub|N,p>,y|)>-Z<rsub|N,p><around|(|y|)>>
    is small. For every fixed spectator list
    and<nbsp><math|\<delta\>\<gtr\>0>, eventually in that order,

    <\equation*>
      <big|int>Z<rsub|N,p><around|(|y<rsub|i>|)>*<big|prod><rsub|h\<ne\>i>O<rsub|N,p><around|(|v<rsub|h>,y<rsub|h>|)>*<space|0.17em>d*\<mu\><rsub|N,p>=0*<space|2em><around|(|<math-up|sep><rsub|<math-up|tor>><around|(|y|)>\<geqslant\>\<delta\>|)><space|0.17em>.
    </equation*>
  </lemma>

  The proof is deferred to the local equation identities and marked
  comparison in this subsection; boundedness here is not uniform in the
  cutoffs. Each polynomial in the free equation space is a sum of terms with
  a linear equation factor. The local representatives are formed from
  combinations of Wilson action derivatives, with the remaining factors
  chosen independent of the varied link. Haar integration then gives zero
  against exterior spectators; linear combinations and gauge averaging retain
  that identity. At fixed positive separation, all spectator stencils
  eventually lie outside its fixed lattice neighbourhood.

  Changing the degree changes the insertion normalization. The next estimate
  corrects that change before taking limits.

  <\lemma>
    <dueto|Corrected inclusion><label|lem:E2.8> For every
    <math|d\<leqslant\>e> and <math|c\<in\>V<rsub|d>>, there is an admissible
    family<nbsp><math|b<rsub|N,p>\<in\>V<rsub|e>> such that

    <\equation*>
      O<rsup|<around|(|e|)>><rsub|N,p><around|(|b<rsub|N,p>,y|)>-O<rsup|<around|(|d|)>><rsub|N,p><around|(|c,y|)><space|1em><text|is
      small><space|0.17em>.
    </equation*>
  </lemma>

  The proof is deferred to the marked transport estimates in this subsection,
  including<nbsp><math|d=e>.

  The physical difference quotient requires a correction in the next degree.

  <\lemma>
    <dueto|Corrected difference><label|lem:E2.9> For every
    degree<nbsp><math|d>, <math|c\<in\>V<rsub|d>> and axis<nbsp><math|a>,
    there is an admissible family<nbsp><math|b<rsub|N,p>\<in\>V<rsub|d+1>>
    such that

    <\equation*>
      O<rsup|<around|(|d+1|)>><rsub|N,p><around|(|b<rsub|N,p>,y|)>-<frac|O<rsup|<around|(|d|)>><rsub|N,p><around|(|c,y+e<rsub|a>|)>-O<rsup|<around|(|d|)>><rsub|N,p><around|(|c,y|)>|a<rsub|N>><space|1em><text|is
      small><space|0.17em>.
    </equation*>
  </lemma>

  The proof is deferred to the marked difference estimates in this
  subsection.

  <paragraph|Short-distance rank tests.> Fix<nbsp><math|d> and a real basis
  <math|m<rsub|1>=1,m<rsub|2>,\<ldots\>,m<rsub|q<rsub|d>>>
  of<nbsp><math|<maxwellspace|d>>, where <math|q<rsub|d>=dim<rsub|<C>><maxwellspace|d>>.
  Choose finitely many one- or two-point tests. In row<nbsp><math|i>, the
  first label is the variable<nbsp><math|m<rsub|j>>; the optional second
  label is a fixed basis element. Let <math|y<rsup|i>\<in\><Gen|n<rsub|i>>>,
  <math|n<rsub|i>\<in\><around|{|1,2|}>>, be the row's configuration. The
  free test matrix is

  <\equation>
    <label|eq:E2-free-matrix>\<cal-G\><rsub|i*j>=<maxwellcorr><rsub|n<rsub|i>><around|(|m<rsub|j>,<text|
    row >i<text| spectator>;y<rsup|i>|)><space|0.17em>.
  </equation>

  The next lemma supplies a finite family that distinguishes every free field
  of degree at most<nbsp><math|d>.

  <\lemma>
    <dueto|Free test rows><label|lem:E2-free-tests> For every<nbsp><math|d>
    and real basis<nbsp><math|m<rsub|1>=1,m<rsub|2>,\<ldots\>,m<rsub|q<rsub|d>>>,
    there are finitely many one- or two-point rows at generic configurations,
    with every second label a basis element, for which the
    matrix<nbsp><eqref|eq:E2-free-matrix> has rank<nbsp><math|q<rsub|d>>.
  </lemma>

  The proof uses only the Maxwell correlations of
  Definition<nbsp><reference|def:D11> and the free positivity in
  Lemma<nbsp><reference|lem:G1.1>, independently of
  Section<nbsp><reference|sec:partII-F>.

  <\proof>
    Let<nbsp><math|c\<ne\>0> in<nbsp><math|<maxwellspace|d>>.
    Lemma<nbsp><reference|lem:G1.1> gives a strictly positive reflected
    two-point value for<nbsp><math|c> and the reflection
    of<nbsp><math|<wide|c|\<bar\>>>. Expand that second label in the
    basis<nbsp><math|<around|(|m<rsub|j>|)>>. At least one of the resulting
    two-point functionals is nonzero on<nbsp><math|c>. Smoothness of the free
    correlations, also in Lemma<nbsp><reference|lem:G1.1>, permits a
    perturbation of the pair to<nbsp><math|<Gen|2>> preserving this nonzero
    value. Thus the common kernel of all permitted row functionals is zero.
    Starting with<nbsp><math|<maxwellspace|d>>, choose a row nonzero on a
    nonzero vector in the current common kernel. Each choice strictly lowers
    its dimension. After finitely many choices the common kernel is zero,
    so<nbsp><math|\<cal-G\>> has rank<nbsp><math|q<rsub|d>>.
  </proof>

  Fix such a family for the rank comparison below.

  For a trial<nbsp><math|\<nu\>>, a common coefficient
  list<nbsp><math|b<rsup|\<nu\>><rsub|j,N,p>\<in\>V<rsub|d>> and
  lattice-compatible configuration <math|x<rsup|\<nu\>,i>=r<rsub|\<nu\>>*y<rsup|\<nu\>,i>>
  define the row insertions <math|I<rsub|h>=O<rsup|<around|(|d|)>><rsub|N,p><around|(|b<rsup|\<nu\>><rsub|j<rsub|h>,N,p>,x<rsub|h><rsup|\<nu\>,i>/a<rsub|N>|)>>,
  with<nbsp><math|j<rsub|1>=j> and the spectator index fixed by
  row<nbsp><math|i>. Physical points are read modulo the lattice period.
  Let<nbsp><math|\<cal-G\><rsub|J><rsup|\<nu\>>> be the Maxwell moment of the
  labels<nbsp><math|<around|(|m<rsub|j<rsub|h>>|)><rsub|h\<in\>J>>
  at<nbsp><math|<around|(|y<rsub|h><rsup|\<nu\>,i>|)><rsub|h\<in\>J>>, with
  <math|\<cal-G\><rsub|\<varnothing\>><rsup|\<nu\>>=1>. Define the relative
  errors by

  <\equation>
    <label|eq:F-relative>R<rsub|\<varnothing\>>=1,<space|2em>R<rsub|I>=<big|prod><rsub|h\<in\>I>I<rsub|h>-<big|sum><rsub|\<varnothing\>\<ne\>J\<subseteq\>I>\<cal-G\><rsub|J><rsup|\<nu\>>*R<rsub|I\<setminus\>J><space|0.17em>.
  </equation>

  Only singleton and pair errors occur. The lifts<nbsp><math|b<rsup|\<nu\>>>
  include the scale normalization, so<nbsp><math|I<rsub|h>> carries no
  additional power of<nbsp><math|r<rsub|\<nu\>>>.

  The following rank estimate is deferred to the short-distance analysis in
  this subsection. Each relative error is interior whenever its insertions
  are interior, since<nbsp><eqref|eq:F-relative> is a polynomial in those
  insertions.

  <\lemma>
    <dueto|Relative rank comparison><label|lem:E2.10> For every such finite
    test family, there are <math|r<rsub|\<nu\>>*\<downarrow\>*0>,
    <math|y<rsup|\<nu\>,i>\<to\>y<rsup|i>>, levels
    <math|k<rsub|\<nu\>>\<leqslant\>t<rsub|\<nu\>>> tending to infinity,
    <math|\<gamma\><rsub|\<nu\>>\<geqslant\>0> tending to zero, and real
    lifts<nbsp><math|b<rsup|\<nu\>><rsub|j,N,p>>, bounded in<nbsp><math|N,p>
    for fixed<nbsp><math|\<nu\>> and common to all rows. They satisfy
    <math|b<rsup|\<nu\>><rsub|1,N,p>=\<b-up-u\><rsub|d>>.
    Each<nbsp><math|x<rsup|\<nu\>,i>> is generic on the
    spacing-<math|a<rsub|t<rsub|\<nu\>>>> grid. Eventually in<nbsp><math|N>,
    uniformly in<nbsp><math|p>, all row insertions are interior
    to<nbsp><math|\<cal-T\><rsub|k<rsub|\<nu\>>><around|(|0|)>>, and, for
    every nonempty<nbsp><math|I>,

    <\equation*>
      <around|\<\|\|\>|R<rsub|I>|\<\|\|\>><rsub|\<cal-T\><rsub|k<rsub|\<nu\>>><around|(|0|)>>\<leqslant\>\<gamma\><rsub|\<nu\>><space|0.17em>.
    </equation*>
  </lemma>

  <subsection|Full ultraviolet convergence><label|sec:partII-E.3>

  <\lemma>
    <dueto|Lattice-point convergence><label|lem:E3.1> To be stated here.
  </lemma>

  <\lemma>
    <dueto|Interpolation and smearing><label|lem:E3.2> To be stated here.
  </lemma>

  <section|Infinite volume and field calculus><label|sec:partII-F>

  We pass from the fixed-volume kernels of Theorem<nbsp><reference|prop:UV>
  (UV) to correlations on<nbsp><math|<R><rsup|4>>. The order of limits
  matters: the lattice spacing tends to zero at every fixed admissible
  volume, and only then does the volume increase.
  Lemmas<nbsp><reference|lem:F1>\U<reference|lem:F3>, using the ultraviolet
  estimates of Lemmas<nbsp><reference|lem:E2.6>\U<reference|lem:E2.10>, prove
  Theorem<nbsp><reference|prop:IV> (IV). The same volume refinement supplies
  the coefficient maps needed for Proposition<nbsp><reference|prop:FC> (FC).
  Lemma<nbsp><reference|lem:F4> controls repeated insertions and will be used
  to construct the bounded slab operators in Lemma<nbsp><reference|lem:H1.1>.

  There are two compactness arguments. The bounds of
  Proposition<nbsp><reference|prop:UB> (UB), including one additional
  difference, make the ultraviolet kernels and their derivatives
  equicontinuous on compact separated sets. A countable diagonal extraction
  therefore chooses the volume limit for all polynomial fields.
  Finite-dimensional compactness also retains certain corrected coefficient
  maps. These maps are needed because a positional difference changes the
  degree and the insertion normalization; the polynomial embedding between
  two coefficient spaces need not preserve correlations.

  The identification of null coefficients is the additional difficulty. An
  approximation to a derivative may have unbounded coefficients. We normalize
  its projected part and use correlation tests to exclude a nonzero null
  vector in the range of the limiting projection. This produces one fixed
  coefficient vector that represents the derivative against every spectator.
  Finally, chessboard estimates give bounds uniform in the positions,
  including configurations of arbitrarily large diameter. For repeated words,
  two cell sizes keep the cost of the exterior independent of the number of
  repetitions.

  Throughout we use the Wilson family, tokens, differences and separated
  tests of Section<nbsp><reference|sec:continuum>. Write
  <math|f<rsub|p,v>=M<rsup|<math-up|UV>><rsub|p,v>> and
  <math|<around|\<langle\>|F|\<rangle\>><rsub|N,p>=<big|int>F*<space|0.17em>d*\<mu\><rsub|N,p>>.
  All constants below may depend on the fixed construction. Any further
  dependence is indicated.

  <subsection|Volume limits>

  Fix a strictly increasing<nbsp><math|<math-ss|p>:<N>\<to\><N>>. The next
  extraction chooses the table and the volume sequence together. The periodic
  generic restrictions retain the fixed-volume kernels required in IV.

  <\lemma>
    <dueto|Generic volume kernels><label|lem:F1> There are a strictly
    increasing<nbsp><math|<math-ss|q>> and a table<nbsp><math|S>. Put
    <math|P=<math-ss|p>\<circ\><math-ss|q>>. For every <math|p,n,v>, the
    restriction <math|S<rsub|v><rsup|<around|(|p|)>>=f<rsub|p,v>> to

    <\equation*>
      <around|{|x:x<rsub|i><rsup|a>-x<rsub|j><rsup|a>\<nin\>L<rsub|p><Z><space|1em><around|(|i\<ne\>j,a=1,\<ldots\>,4|)>|}>
    </equation*>

    is continuous. Every compact <math|K\<subset\><Gen|n>> eventually lies in
    these domains for <math|p=P<around|(|k|)>>, and
    <math|S<rsub|v><rsup|<around|(|P<around|(|k|)>|)>>\<to\>S<rsub|n>*<around|(|v;\<cdot\>|)>>
    uniformly on<nbsp><math|K>.
  </lemma>

  The same choice also gives, for every<nbsp><math|n,v,\<b-l\>>,

  <\equation>
    <label|eq:F-conf>S<rsub|n>*<around|(|v;\<cdot\>|)>\<in\>C<rsup|\<infty\>><around|(|<Conf|n>|)>,<space|2em>\<partial\><rsub|\<b-l\>>*f<rsub|P<around|(|k|)>,v>\<longrightarrow\>\<partial\><rsub|\<b-l\>>*S<rsub|n>*<around|(|v;\<cdummy\>|)><space|1em><text|locally
    uniformly on ><Conf|n><space|0.17em>.
  </equation>

  The proof establishes both assertions and ordered convergence against every
  separated test. After Lemma<nbsp><reference|lem:F2>, <math|P> denotes its
  final refinement.

  <\proof>
    Fix a compact <math|K\<subset\><Conf|n>> and a compact neighbourhood
    <math|K<rprime|'>> contained in<nbsp><math|<Conf|n>>. For all
    sufficiently large<nbsp><math|p>, <math|K<rprime|'>> lies
    in<nbsp><math|<NoHit|L<rsub|p>|n>>, and its torus separation has a
    positive lower bound <math|2*r> independent of<nbsp><math|p>. UB bounds
    <math|\<Delta\><rsub|\<b-l\>><latmoment><rsub|N,p>> by
    <math|B*<around|(|v,\<b-l\>,r|)>> on lattice tuples
    near<nbsp><math|K<rprime|'>>, for all sufficiently large<nbsp><math|N>,
    uniformly in<nbsp><math|p>. By Lemma<nbsp><reference|lem:E3.2>, the
    multilinear interpolants converge at each fixed<nbsp><math|p> to
    <math|\<partial\><rsub|\<b-l\>>*f<rsub|p,v>>. Consequently

    <\equation>
      <label|eq:F-local>sup<rsub|p\<geqslant\>p<rsub|0>>
      sup<rsub|x\<in\>K<rprime|'>><around|\||\<partial\><rsub|\<b-l\>>*f<rsub|p,v><around|(|x|)>|\|>\<leqslant\>B*<around|(|v,\<b-l\>,r|)>.
    </equation>

    The ultraviolet threshold for taking this limit may depend
    on<nbsp><math|p>. One more derivative bounds variation along short
    segments in<nbsp><math|K<rprime|'>>, giving equicontinuity
    on<nbsp><math|K>.

    Apply Arzelà\UAscoli, in the form for a pointwise bounded equicontinuous
    sequence of continuous complex functions on a compact metric
    space<nbsp><cite-detail|Rudin1976|Theorem<nbsp>7.25>. Diagonalize over
    compact exhaustions of<nbsp><math|<Conf|n>>, arities, degree lists, basis
    coefficient lists and derivative lists. These indices are countable.
    Starting from any prescribed strictly increasing<nbsp><math|<math-ss|p>>,
    we obtain a strictly increasing<nbsp><math|<math-ss|q>> and
    <math|P=<math-ss|p>\<circ\><math-ss|q>>. Multilinearity extends the
    limits from basis lists to every token list. Integration by parts against
    a compactly supported test identifies the limit of each first derivative
    with the derivative of the limiting kernel. Repeating this for all
    derivative lists gives a smooth multilinear table<nbsp><math|S>, with
    local convergence of every derivative.

    Restrict <math|f<rsub|p,v>> to the displayed domain to
    define<nbsp><math|S<rsub|v><rsup|<around|(|p|)>>>. A compact generic set
    has bounded diameter and a positive minimum coordinate separation, so it
    eventually lies in that domain. The asserted uniform convergence follows
    from the extraction. For every separated test<nbsp><math|f>, UV gives, at
    every admissible<nbsp><math|p>, the full inner limit
    <math|C<rsub|p><rsup|<math-up|UV>>*<around|(|v;f|)>=<big|int>f*f<rsub|p,v>>.
    Its support is eventually admissible along<nbsp><math|P>, and local
    uniform convergence gives

    <\equation>
      <label|eq:F-ordered>C<rsub|P<around|(|k|)>><rsup|<math-up|UV>>*<around|(|v;f|)>\<longrightarrow\><big|int>f<around|(|x|)>*S<rsub|n>*<around|(|v;x|)>*<space|0.17em>d*x.
    </equation>

    Thus Definition<nbsp><reference|def:D09> holds.
    Equation<nbsp><eqref|eq:F-conf> and ordered convergence persist on every
    further volume refinement.
  </proof>

  <paragraph|Symmetries of the limit.> We first prove E1\UE3 and E6, using
  Definition<nbsp><reference|def:D08>, Lemmas<nbsp><reference|lem:E2.1a>
  and<nbsp><reference|lem:E3.2> and<nbsp><eqref|eq:F-conf>. Permutation
  symmetry, the empty correlation, deletion of the distinguished unit,
  conjugation and signed-permutation covariance hold on the lattice
  once<nbsp><math|N> exceeds the finitely many reference levels. Approximate
  any fixed separated configuration by lattice points and use
  Lemma<nbsp><reference|lem:E3.2>, then<nbsp><eqref|eq:F-conf>. For
  translations, approximate the translation vector on the same lattice.
  Translation invariance and<nbsp><eqref|eq:F-local> pass the identity to
  arbitrary real translations. This proves E1\UE3 independently of the
  coefficient corrections. Equation<nbsp><eqref|eq:F-conf> gives E6;
  multilinearity was retained in the extraction.

  <subsection|Interior roots and errors>

  We use the chessboard root of Definition<nbsp><reference|def:D27>. A signed
  image means the image under<nbsp><math|<hypercubic>>; conjugation is also
  allowed. Bond tilings, anchors, margins and small errors are specified
  before Definition<nbsp><reference|def:E2-small>. We consider tilings at the
  construction levels. Two such tilings are aligned when their cells have the
  same coordinate axes and every coarse boundary is a fine boundary. Their
  side ratio is an odd integer, since the block ratios are odd.

  For interior functions in the base cell of a bond
  tiling<nbsp><math|\<cal-T\>>, the chessboard inequality reads

  <\equation>
    <label|eq:F-chess><around*|\||<around*|\<langle\>|<big|prod><rsub|C\<in\>\<cal-T\>><around|(|F<rsub|C>|)><rsub|C>|\<rangle\>><rsub|N,p>|\|>\<leqslant\><big|prod><rsub|C\<in\>\<cal-T\>><around|\<\|\|\>|F<rsub|C>|\<\|\|\>><rsub|\<cal-T\>><space|0.17em>.
  </equation>

  Apply the abstract chessboard theorem<nbsp><cite-detail|FrohlichIsraelLiebSimon1978|Theorem<nbsp>4.1>
  axis by axis, on real vector spaces of complex observables, with reflection
  followed by conjugation. The functional has<nbsp><math|L<rsub|p>*D<rsub|k>>
  factors in each axis, an even number since<nbsp><math|4\<mid\>L<rsub|p>>.
  Lattice translation invariance gives cyclicity. Reflection positivity
  across every translated band cut gives the required Schwarz inequality. For
  the Wilson action this is Osterwalder\USchrader positivity on the periodic
  lattice<nbsp><cite-detail|Seiler1982|Theorem<nbsp>2.1, pp.<nbsp>14--15>,
  applied to a compact matrix gauge group, positive coupling, and observables
  supported on one side of the bond planes. Their boundaries pass through
  link midpoints, as required there.

  The centered root estimate must also control anchors near arbitrary,
  separated configurations. Write <math|v=<around|(|d,c|)>> for the insertion
  token.

  <\lemma>
    <dueto|Interior root bound><label|lem:F1a> Fix
    <math|m\<leqslant\>k\<leqslant\>N>, <math|N\<geqslant\><reflevel|d>>,
    and<nbsp><math|A\<geqslant\>0>. Suppose, for every
    anchor<nbsp><math|y<rprime|'>>, every signed image or image under
    conjugation of<nbsp><math|O<rsub|N,p><around|(|v,y<rprime|'>|)>> has root
    at most<nbsp><math|A> in<nbsp><math|\<cal-T\><rsub|k><around|(|y<rprime|'>|)>>
    and stencil within<nbsp><math|a<rsub|k>> of<nbsp><math|y<rprime|'>>. In
    every translated bond tiling<nbsp><math|\<cal-T\>> of
    side<nbsp><math|a<rsub|m>>, an anchor at distance at
    least<nbsp><math|3*a<rsub|k>> from its cell boundary satisfies

    <\equation>
      <label|eq:F-uncentered>O<rsub|N,p><around|(|v,y|)><text| is
      interior>,<space|2em><around|\<\|\|\>|O<rsub|N,p><around|(|v,y|)>|\<\|\|\>><rsub|\<cal-T\>>\<leqslant\>A<space|0.17em>.
    </equation>
  </lemma>

  The proof transfers the centered bound first at aligned cell centers, then
  between them.

  <\proof>
    Use Definition<nbsp><reference|def:D08>, its symmetry in
    Lemma<nbsp><reference|lem:E2.1a>, the cell interior condition of
    Definition<nbsp><reference|def:D27>, and<nbsp><eqref|eq:F-chess>. At an
    aligned fine-cell center, reflect all coarse copies into distinct fine
    cells. Their signs and conjugations are among the assumed images.
    Apply<nbsp><eqref|eq:F-chess> with<nbsp><math|1> in every unoccupied fine
    cell. Taking the coarse root bounds it by<nbsp><math|A>.

    For intermediate anchors, let<nbsp><math|H<around|(|z|)>> be the coarse
    root after<nbsp><math|z> lattice translations in one axis, with the other
    coordinates fixed. Translation invariance and reflection give

    <\equation>
      <label|eq:F-logconvex>H<around|(|z|)><rsup|2>\<leqslant\>H*<around|(|z-1|)>*H*<around|(|z+1|)><space|0.17em>.
    </equation>

    Indeed, translate the reflected product by one lattice step. Alternate
    cells then contain shifts<nbsp><math|z-1> and<nbsp><math|z+1>;
    apply<nbsp><eqref|eq:F-chess>. On a finite interval a nonnegative
    sequence satisfying this inequality cannot exceed its endpoint maximum:
    an interior positive maximum extends to both neighbours and hence to an
    endpoint. This includes zero endpoints. Apply this argument in each axis
    between the surrounding fine-cell centers. A
    margin<nbsp><math|3*a<rsub|k>> keeps these centers and every intermediate
    stencil inside the coarse cell. Interior follows from the stencil
    radius<nbsp><math|a<rsub|k>>. Thus<nbsp><eqref|eq:F-uncentered> holds.
  </proof>

  Small errors are defined by a root tolerance chosen before the cell scale.
  This order makes them negligible against each fixed spectator test.

  <\lemma>
    <dueto|Vanishing errors><label|lem:F1b> For every small
    error<nbsp><math|E> of Definition<nbsp><reference|def:E2-small>, fixed
    token list<nbsp><math|v>, distinguished slot<nbsp><math|i>,
    and<nbsp><math|\<delta\>\<gtr\>0>, there is
    <math|C*<around|(|v,\<delta\>|)>\<less\>\<infty\>> such that, eventually
    in<nbsp><eqref|eq:E2-tails>,

    <\equation>
      <label|eq:F-small><around*|\||<around*|\<langle\>|E<rsub|N,p><around|(|y<rsub|i>|)>*<big|prod><rsub|h\<ne\>i>O<rsub|N,p><around|(|v<rsub|h>,y<rsub|h>|)>|\<rangle\>><rsub|N,p>|\|>\<leqslant\>C*<around|(|v,\<delta\>|)>*\<eta\><rsub|N,p>*<space|2em><around|(|<math-up|sep><rsub|<math-up|tor>><around|(|y|)>\<geqslant\>\<delta\>|)><space|0.17em>.
    </equation>

    Consequently its smear against any fixed separated test tends to zero in
    that order.
  </lemma>

  The proof uses distinct cells for the error and each spectator.

  <\proof>
    Use Definition<nbsp><reference|def:D08>, the centered estimate of
    Lemma<nbsp><reference|lem:E2.3>, Definition<nbsp><reference|def:E2-small>,
    Lemma<nbsp><reference|lem:F1a> and<nbsp><eqref|eq:F-chess>.
    Let<nbsp><math|n> be the arity. Take<nbsp><math|m>
    with<nbsp><math|a<rsub|m>\<less\>\<delta\>>; the small-error condition
    gives<nbsp><math|k\<geqslant\>m>. Choose a finer spectator
    level<nbsp><math|k<rsub|<math-up|sp>>>
    with<nbsp><math|3*a<rsub|k<rsub|<math-up|sp>>>\<leqslant\>a<rsub|k>/<around|[|8*<around|(|n+1|)>|]>>.
    Lemma<nbsp><reference|lem:E2.3> bounds all signed spectator roots and
    their images under conjugation there by a fixed constant.

    In each axis choose the translation of the level-<math|k> tiling so that
    no boundary meets a strip of half-width<nbsp><math|a<rsub|k>/<around|[|4*<around|(|n+1|)>|]>>
    around any anchor. The excluded length is at
    most<nbsp><math|n*a<rsub|k>/<around|[|2*<around|(|n+1|)>|]>\<less\>a<rsub|k>>,
    so such a lattice translation exists for sufficiently
    large<nbsp><math|N>. It supplies the integer
    margins<nbsp><eqref|eq:E2-margin>, including their extra lattice unit,
    and margin<nbsp><math|3*a<rsub|k<rsub|<math-up|sp>>>> for spectators. Any
    pair of anchors differs in some coordinate by at
    least<nbsp><math|\<delta\>\<gtr\>a<rsub|k>>, so they occupy distinct
    cells. Lemma<nbsp><reference|lem:F1a> and<nbsp><eqref|eq:F-chess>
    give<nbsp><eqref|eq:F-small>. On a compact test support, the number of
    lattice tuples multiplied by<nbsp><math|a<rsub|N><rsup|4*n>> is bounded
    independently of<nbsp><math|N,p>. Multiplication by the test supremum
    therefore proves the smeared assertion.
  </proof>

  <subsection|Corrected coefficients>

  We now use the equation projections and corrections of
  Lemmas<nbsp><reference|lem:E2.6>\U<reference|lem:E2.9>, and the relative
  rank comparison of Lemma<nbsp><reference|lem:E2.10>. The other inputs are
  Proposition<nbsp><reference|prop:UB>, Definitions<nbsp><reference|def:D08>,
  <reference|def:D10> and<nbsp><reference|def:D11>,
  Lemmas<nbsp><reference|lem:E2.1a>\U<reference|lem:E2.3>,
  Lemma<nbsp><reference|lem:E3.2>, Lemmas<nbsp><reference|lem:F1>,
  <reference|lem:F1a> and<nbsp><reference|lem:F1b>, and E1\UE3 established
  above. Lemma<nbsp><reference|lem:E2-free-tests> supplies the free test rows
  independently of the interacting arguments here. Auxiliary coefficient
  limits may use a common spacing subsequence<nbsp><math|<math-ss|n>> at
  every<nbsp><math|p>; the full ultraviolet kernel limits remain those of UV.

  These estimates distinguish coefficients that vanish in every separated
  correlation. The inclusions and derivatives in the next statement are the
  maps asserted in FC; the following proof constructs them and proves their
  defining correlation identities.

  <\lemma>
    <dueto|Quotient compatibility><label|lem:F2> For every
    <math|d\<leqslant\>e>, the inclusions of FC preserve correlations and
    units and compose compatibly. Inclusions and derivatives commute with
    conjugation, and

    <\equation*>
      h*\<partial\><rsub|a>=<big|sum><rsub|b>h<rsub|b*a>*\<partial\><rsub|b>*h*<space|2em><around|(|h\<in\><hypercubic>|)>.
    </equation*>

    Each response map is injective; every response lies in one
    <math|\<iota\><rsub|d>*F<rsub|d>>; every field has a token
    representative. The unit is <math|<unitfield|d>=<around|[|a<rsub|<reflevel|d>><rsup|d>*\<b-1\>|]>>.
  </lemma>

  The proof below constructs the inclusions and derivatives asserted in FC,
  proves its dimension equality, and then derives the compatibility
  properties. E1\UE3 are already available.

  <\proof>
    We use the inputs listed above. Bounded coefficient families
    satisfy<nbsp><eqref|eq:F-subpower>. In fact
    Lemma<nbsp><reference|lem:E2.2> bounds their inverse terminal coordinates
    by a fixed norm factor times <math|<big|prod><rsub|m\<less\>N>C<rsub|J<rsub|m+1>>>,
    and row<nbsp>5 of Section<nbsp><reference|sec:constants> gives <math|log
    C<rsub|J<rsub|m+1>>\<leqslant\>J<rsub|m+1><rsup|-2>*log \<ell\><rsub|m>>.
    Split the sum at a fixed level. Its finite initial part
    is<nbsp><math|o<around|(|s<rsub|N>|)>>, while its tail divided
    by<nbsp><math|s<rsub|N>=<big|sum><rsub|m\<less\>N>log \<ell\><rsub|m>> is
    bounded by the largest<nbsp><math|J<rsub|m+1><rsup|-2>> in that tail.
    Sending the splitting level to infinity gives
    <math|<big|sum><rsub|m\<less\>N>log C<rsub|J<rsub|m+1>>=o<around|(|s<rsub|N>|)>>.
    There are countably many projection matrices and comparison coefficient
    lists. The uniform bound in Lemma<nbsp><reference|lem:E2.6> gives
    convergent subsequences by finite-dimensional compactness. The same
    countable diagonal extraction retains every projection and each
    comparison lift, first in<nbsp><math|N> at every<nbsp><math|p>, then in
    volume, retaining<nbsp><eqref|eq:F-conf>. Thus, in operator norm,

    <\equation>
      <label|eq:F-projections>\<Pi\><rsub|d,<math-ss|n><around|(|j|)>,p>\<longrightarrow\>\<Pi\><rsub|d><rsup|<around|(|p|)>>,<space|2em>\<Pi\><rsub|d><rsup|<around|(|P<around|(|k|)>|)>>\<longrightarrow\>\<Pi\><rsub|d>,<space|2em>\<Pi\><rsub|d><rsup|2>=\<Pi\><rsub|d><space|0.17em>.
    </equation>

    Continuity of composition gives idempotence at both stages. For later
    use, the convergence also holds in the order<nbsp><eqref|eq:E2-tails>.

    Let <math|L<rsub|N,p>:V<rsub|d>\<to\><C>> be any fixed one-slot smeared
    correlation map, with arbitrary fixed spectators and test. Its
    operator-norm limit is<nbsp><math|L>, by finite dimensionality
    and<nbsp><eqref|eq:F-ordered>. Apply Lemma<nbsp><reference|lem:E2.7>
    and<nbsp><eqref|eq:F-small> to <math|c-\<Pi\><rsub|d,N,p>*c>. This gives
    <math|L*<around|(|<around|(|1-\<Pi\><rsub|d>|)>*c|)>=0> for
    every<nbsp><math|L>. Since<nbsp><math|S> is smooth
    by<nbsp><eqref|eq:F-conf>,

    <\equation>
      <label|eq:F-null>ker \<Pi\><rsub|d>\<subset\><nullspace|d><around|(|S|)>.
    </equation>

    For the reverse dimension inequality, use the rank-<math|q<rsub|d>> free
    matrix<nbsp><math|\<cal-G\>> of Lemma<nbsp><reference|lem:E2-free-tests>
    and the common lifts of Lemma<nbsp><reference|lem:E2.10>.
    Rearrange<nbsp><eqref|eq:F-relative> to
    isolate<nbsp><math|\<cal-G\><rsup|\<nu\>><rsub|I>>. Every remaining term
    contains a nonempty<nbsp><math|R<rsub|J>>; its expectation is bounded
    by<nbsp><math|\<gamma\><rsub|\<nu\>>> using<nbsp><eqref|eq:F-chess>. Thus

    <\equation>
      <label|eq:F-rank><around*|\||<around*|\<langle\>|<big|prod><rsub|h\<in\>I>I<rsub|h>|\<rangle\>>-\<cal-G\><rsup|\<nu\>><rsub|I>|\|>\<leqslant\>\<gamma\><rsub|\<nu\>>*<big|sum><rsub|J\<subsetneq\>I><around|\||\<cal-G\><rsup|\<nu\>><rsub|J>|\|>.
    </equation>

    The finite sum stays bounded as <math|y<rsup|\<nu\>,i>\<to\>y<rsup|i>>.
    Pass through both coefficient and kernel limits. Each matrix entry is a
    fixed spectator functional on<nbsp><math|V<rsub|d>>, applied to the
    limiting lift of<nbsp><math|m<rsub|j>>. That functional vanishes
    on<nbsp><math|<nullspace|d><around|(|S|)>>, so each matrix factors
    through<nbsp><math|F<rsub|d>> and has rank at most<nbsp><math|dim
    F<rsub|d>>. The matrices tend to<nbsp><math|\<cal-G\>>. A nonzero
    <math|q<rsub|d>>-minor therefore gives <math|dim
    F<rsub|d>\<geqslant\>q<rsub|d>>. Ranks of converging idempotents are
    eventually constant: if <math|<around|\<\|\|\>|P-Q|\<\|\|\>>\<less\>1>,
    <math|P> is injective on<nbsp><math|<math-up|ran><space|0.17em>Q>, and
    conversely. Passing the dimension inequality in
    Lemma<nbsp><reference|lem:E2.6> to<nbsp><math|\<Pi\><rsub|d>>
    using<nbsp><eqref|eq:F-projections> and using<nbsp><eqref|eq:F-null> now
    gives

    <\equation>
      <label|eq:F-dimension><nullspace|d><around|(|S|)>=ker
      \<Pi\><rsub|d>,<space|2em>dim<rsub|<C>> F<rsub|d>=q<rsub|d>.
    </equation>

    For inclusion, Lemma<nbsp><reference|lem:E2.8> gives a corrected family
    that has target smeared limit<nbsp><math|<big|int>f*S*<around|(|c,\<ldots\>|)>>.
    For the corrected difference of Lemma<nbsp><reference|lem:E2.9>, torus
    summation by parts gives exactly

    <\equation>
      <label|eq:F-parts>a<rsub|N><rsup|4*n>*<big|sum><rsub|y>f<around|(|<wide|y|^>|)>*\<Delta\><rsub|i,a><latmoment><rsub|N,p><around|(|v;y|)>=a<rsub|N><rsup|4*n>*<big|sum><rsub|y><frac|f*<around|(|<wide|y|^>-a<rsub|N>*e<rsub|i,a>|)>-f<around|(|<wide|y|^>|)>|a<rsub|N>><latmoment><rsub|N,p><around|(|v;y|)>.
    </equation>

    Here <math|e<rsub|i,a>> is the coordinate vector in slot<nbsp><math|i>,
    axis<nbsp><math|a>. The backward quotient tends uniformly
    to<nbsp><math|-\<partial\><rsub|i,a>*f>; its residual is bounded by
    <math|a<rsub|N>*<around|\<\|\|\>|\<partial\><rsub|i,a><rsup|2>*f|\<\|\|\>><rsub|\<infty\>>/2>.
    UB at order zero controls the residual sum on a fixed compact
    neighbourhood. Thus the derivative target is
    <math|-<big|int><around|(|\<partial\><rsub|i,a>*f|)>*S*<around|(|c,\<ldots\>|)>>.

    For either corrected family<nbsp><math|w<rsub|N,p>> in its representing
    degree<nbsp><math|e>, write <math|\<Pi\>=\<Pi\><rsub|e,N,p>>. The
    normalized remainder <math|<around|(|w-\<Pi\>*w|)>/<around|(|1+<around|\<\|\|\>|\<Pi\>*w|\<\|\|\>>|)>>
    is admissible and belongs to<nbsp><math|ker \<Pi\>>: its first term is a
    bounded scalar multiple of an admissible family, and its second term is
    bounded. Lemma<nbsp><reference|lem:E2.7> and
    Lemma<nbsp><reference|lem:F1b> give

    <\equation>
      <label|eq:F-normalized>L<rsub|N,p>*<around*|(|<around|(|w-\<Pi\>*w|)>/<around|(|1+<around|\<\|\|\>|\<Pi\>*w|\<\|\|\>>|)>|)>\<longrightarrow\>0.
    </equation>

    Take a cluster point <math|<around|(|\<lambda\>,z|)>> of
    <math|<around|(|<around|(|1+<around|\<\|\|\>|\<Pi\>*w|\<\|\|\>>|)><rsup|-1>,\<Pi\>*w/<around|(|1+<around|\<\|\|\>|\<Pi\>*w|\<\|\|\>>|)>|)>>
    along one ultrafilter containing every ordered tail

    <\equation*>
      <around|{|<around|(|k,j|)>:k\<geqslant\>k<rsub|0>,j\<geqslant\>j<rsub|0><around|(|k|)>|}><space|0.17em>.
    </equation*>

    These tails form a filter base; bounded finite-dimensional data have a
    cluster point along such an ultrafilter. All spectator limits hold on
    this same filter. Then <math|\<Pi\><rsub|e>*z=z>,
    <math|\<lambda\>+<around|\<\|\|\>|z|\<\|\|\>>=1>, and for every spectator
    test<nbsp><math|L>, <math|L<around|(|z|)>=\<lambda\>*t<rsub|L>>,
    where<nbsp><math|t<rsub|L>> is its target. If <math|\<lambda\>=0>,
    <eqref|eq:F-dimension> puts<nbsp><math|z> in<nbsp><math|ker
    \<Pi\><rsub|e>>, contradicting<nbsp><math|<around|\<\|\|\>|z|\<\|\|\>>=1>.
    Hence <math|z/\<lambda\>> represents the target for all spectators
    simultaneously. Choose these representatives on a basis and extend
    linearly, obtaining <math|\<kappa\><rsub|d,e>>
    and<nbsp><math|\<tau\><rsub|d,a>> with

    <\equation>
      <label|eq:F-calculus>S*<around|(|\<kappa\><rsub|d,e>*c,\<ldots\>|)>=S*<around|(|c,\<ldots\>|)>,<space|2em>S*<around|(|\<tau\><rsub|d,a>*c,\<ldots\>|)>=\<partial\><rsub|x<rsub|0><rsup|a>>*S*<around|(|c,\<ldots\>|)>.
    </equation>

    Equation<nbsp><eqref|eq:F-conf> converts the distributional identities to
    pointwise identities.

    These maps preserve null coefficients, so they descend
    to<nbsp><math|\<jmath\><rsub|d,e>> and<nbsp><math|\<partial\><rsub|a>>. A
    response vanishes precisely on<nbsp><math|<nullspace|d><around|(|S|)>>;
    hence<nbsp><math|\<iota\><rsub|d>> is injective. Equality of responses
    gives injectivity, composition and uniqueness of inclusions. E1 and
    Lemma<nbsp><reference|lem:E2.1a> give preservation
    of<nbsp><math|<around|[|a<rsub|<reflevel|d>><rsup|d>*\<b-1\>|]>>. Any
    finite sum of responses lies in the largest degree involved; quotient
    surjectivity gives token representatives. Finally E2, conjugation and the
    chain rule applied to <math|S*<around|(|h*c;h*x|)>=S*<around|(|c;x|)>>
    give the asserted symmetry identities by injectivity of the response
    maps. The same comparison without differentiation gives
    <math|h*\<jmath\><rsub|d,e>=\<jmath\><rsub|d,e>*h>. Permuting the
    distinguished slot proves FC's positional identity in every slot. This
    proves FC and the lemma using Lemmas<nbsp><reference|lem:E2.6>\U<reference|lem:E2.10>.
  </proof>

  <subsection|Euclidean properties>

  The lattice symmetries and positivity pass through the ordered limits. The
  centered root estimate gives the additional control as separated points
  approach one another.

  <\lemma>
    <dueto|Euclidean properties><label|lem:F3> The table supplied by IV is
    complex multilinear and satisfies E1\UE7, including joint-test reflection
    positivity, absolute integrability of its pairings, and bounds for every
    derivative order:

    <\equation*>
      <around|\<\|\|\>|D<rsub|x><rsup|k>*S<rsub|n>*<around|(|c;x|)>|\<\|\|\>>\<leqslant\>C*<around|(|n,d,c,k|)>*r<rsup|-A*<around|(|n,d,c,k|)>>*<space|1em><around|(|0\<less\>r\<leqslant\>1,<sepinf><around|(|x|)>\<geqslant\>r|)>.
    </equation*>
  </lemma>

  The proof below passes reflection positivity to the limit and proves the
  power bound; its positive derivative orders use<nbsp><eqref|eq:F-calculus>.

  <\proof>
    We use Definitions<nbsp><reference|def:D08> and<nbsp><reference|def:D10>,
    Lemmas<nbsp><reference|lem:E2.1a>, <reference|lem:E2.3>
    and<nbsp><reference|lem:E3.2>, equations<nbsp><eqref|eq:F-conf>
    and<nbsp><eqref|eq:F-chess>, Lemma<nbsp><reference|lem:F1a>, and the
    derivative maps<nbsp><eqref|eq:F-calculus> from
    Lemma<nbsp><reference|lem:F2>. E1\UE3 and E6 were proved after
    Lemma<nbsp><reference|lem:F1>; only the positive derivative orders of E7
    use the corrected maps.

    For E5, fix finitely many joint smooth tests<nbsp><math|f<rsub|i>> with
    compact support on positive-side separated configurations in one axis.
    Their lattice smears<nbsp><math|F<rsub|i>> are supported strictly inside
    the positive half-torus for large<nbsp><math|p,N>: the support has
    positive distance from the reflection plane, and the physical radius of
    each fixed stencil tends to zero. Use the bond
    reflection<nbsp><math|x<rsup|a>\<mapsto\>a<rsub|N>-x<rsup|a>>, with
    planes<nbsp><math|x<rsup|a>=a<rsub|N>/2>
    and<nbsp><math|x<rsup|a>=<around|(|a<rsub|N>+L<rsub|p>|)>/2>. It is a
    lattice symmetry at every cutoff. The odd block ratios preserve the
    midpoint boundaries of the bond tilings. For large<nbsp><math|p>, the
    supports also avoid a neighbourhood of the second
    plane<nbsp><math|x<rsup|a>=L<rsub|p>/2>; for large<nbsp><math|N> their
    stencils avoid both actual bond planes. The periodic Wilson reflection
    positivity cited before<nbsp><eqref|eq:F-chess> gives

    <\equation*>
      <big|sum><rsub|i,j><wide|z|\<bar\>><rsub|i>*z<rsub|j><around|\<langle\>|<wide|F<rsub|i>\<circ\><math-ss|r><rsub|a,N>|\<bar\>>F<rsub|j>|\<rangle\>><rsub|N,p>\<geqslant\>0.
    </equation*>

    Here<nbsp><math|<math-ss|r><rsub|a,N>> maps a configuration to its
    reflected configuration. Insertion covariance reflects the positions and
    applies<nbsp><math|<math-ss|s><rsub|a><rsup|<math-up|refl>>> to their
    labels; conjugation acts on the labels in the first word. The reflected
    joint test converges, with all derivatives,
    to<nbsp><math|<wide|f|\<bar\>><rsub|i>\<otimes\>f<rsub|j>> with its first
    group reflected through<nbsp><math|x<rsup|a>=0>. Its support is compact
    and separated, including across the reflection plane. All these supports
    lie in one compact separated set. UB at order zero bounds the difference
    between the moving tests and their limiting test by their uniform
    difference times a bounded weighted site count. It tends to zero. Apply
    Lemma<nbsp><reference|lem:E3.2> and<nbsp><eqref|eq:F-ordered> to the
    fixed limiting test in each entry. Smoothness bounds the kernel on the
    support, so every pairing is absolutely integrable. The limiting matrix
    is positive semidefinite. Concentrating normalized smooth bumps at
    prescribed positive-side words gives E4 by continuity. This works in
    every axis with its corresponding reflection.

    For the power bound first consider order zero and a nonempty token list.
    Put <math|d<rsub|<math-up|pow>>=1+max<rsub|i> d<rsub|i>>.
    Lemma<nbsp><reference|lem:E2.3> with <math|\<varepsilon\>=1>, for all the
    finitely many signed images and images under conjugation, bounds their
    centered roots by <math|C<rsub|<math-up|ctr>>*a<rsub|k><rsup|-d<rsub|<math-up|pow>>>>
    for <math|k\<geqslant\>k<rsub|0>>. The constants
    <math|k<rsub|0>,C<rsub|<math-up|ctr>>> precede the choice of separation.
    The scale condition <math|log \<ell\><rsub|u>/s<rsub|u>\<to\>0> in
    Lemma<nbsp><reference|lem:E1.1> gives

    <\equation>
      <label|eq:F-thickness>a<rsub|u+1>\<geqslant\>c*a<rsub|u><rsup|2>.
    </equation>

    Indeed <math|log \<ell\><rsub|u>/log a<rsub|u><rsup|-1>\<to\>0> implies
    <math|\<ell\><rsub|u>\<leqslant\>a<rsub|u><rsup|-1>> eventually;
    decrease<nbsp><math|c\<gtr\>0> for the remaining levels. The first
    <math|u\<geqslant\>k<rsub|0>> with <math|a<rsub|u>\<less\>\<delta\>\<leqslant\>1>
    consequently satisfies <math|a<rsub|u>\<geqslant\>c<rsub|k<rsub|0>>*\<delta\><rsup|2>>,
    including <math|u=k<rsub|0>>.

    Choose the first <math|m\<geqslant\>k<rsub|0>> with
    <math|a<rsub|m>\<less\>r/2>, then the first <math|k\<geqslant\>k<rsub|0>>
    with <math|a<rsub|k>\<less\>a<rsub|m>/<around|[|6*<around|(|n+1|)>|]>>.
    Thus <math|k\<geqslant\>m> and <math|a<rsub|k>\<geqslant\>c<rprime|'>*r<rsup|4>>.
    In each coordinate the boundary strips of
    half-width<nbsp><math|3*a<rsub|k>> excluded by the<nbsp><math|n> anchors
    have total length less than<nbsp><math|a<rsub|m>>. Choose a translated
    tiling outside them. All anchors occupy distinct cells.
    Lemma<nbsp><reference|lem:F1a>, followed by<nbsp><eqref|eq:F-chess>,
    gives the lattice bound <math|<around|(|C<rsub|<math-up|ctr>>*a<rsub|k><rsup|-d<rsub|<math-up|pow>>>|)><rsup|n>>.
    Passing to the limits by Lemma<nbsp><reference|lem:E3.2>
    and<nbsp><eqref|eq:F-conf>, with slightly smaller separation to
    accommodate lattice approximation, gives

    <\equation>
      <label|eq:F-power><around|\||S<rsub|n>*<around|(|v;x|)>|\|>\<leqslant\>C*r<rsup|-4*d<rsub|<math-up|pow>>*n>.
    </equation>

    All constants are independent of the positions and the volume.

    For higher orders use<nbsp><eqref|eq:F-calculus>: every coordinate
    derivative is a correlation with fixed, degree-raised tokens. At a fixed
    order there are finitely many such lists. Apply<nbsp><eqref|eq:F-power>
    to each, take the largest exponent, and bound the Fréchet operator norm
    by the sum of its coordinate coefficients in an orthonormal basis
    of<nbsp><math|<R><rsup|4*n>>. This proves E7 using
    Lemma<nbsp><reference|lem:F2> and hence
    Lemmas<nbsp><reference|lem:E2.6>\U<reference|lem:E2.10>. For arity zero,
    <math|S<rsub|0>=1> and all positive-order derivatives vanish.
  </proof>

  <\render-proof|Proof of Theorem<nbsp><reference|prop:IV>>
    Compose the volume refinements in Lemmas<nbsp><reference|lem:F1>
    and<nbsp><reference|lem:F2>. Equation<nbsp><eqref|eq:F-ordered> proves
    ordered convergence, retaining UV's full inner limit at every admissible
    volume. Lemma<nbsp><reference|lem:F3> proves E1\UE7. The coefficient
    corrections do not change any kernel limit already obtained.
  </render-proof>

  <subsection|Repeated reflected words>

  Use the OS space of Definition<nbsp><reference|def:D14>. For any
  <math|s\<gtr\>0> and word<nbsp><math|w> with times in
  <math|<around|(|0,s|)>>, set

  <\equation*>
    A<rsub|w>*v=w*<space|0.17em>\<tau\><rsub|s*e<rsub|4>>*v,<space|2em>w<rsup|\<dagger\>>=\<tau\><rsub|s*e<rsub|4>><math-ss|s><rsub|4><rsup|<math-up|refl>>w<rsup|\<ast\>>.
  </equation*>

  Here <math|A<rsub|w>> initially acts on words; boundedness on OS classes is
  not assumed. A buffer<nbsp><math|r> means pairwise sup-distance at
  least<nbsp><math|r> and times in <math|<around|[|r,h<rsub|<math-up|sl>>-r|]>>
  for a slab of width<nbsp><math|h<rsub|<math-up|sl>>>.

  The next estimate bounds the growth of repeated insertion before taking any
  operator extension.

  <\lemma>
    <dueto|Repeated reflected words><label|lem:F4> For every degree
    bound<nbsp><math|d> and coefficient bound<nbsp><math|R\<geqslant\>0>,
    there are <math|C<rsub|0>*<around|(|d,R|)>\<gtr\>0>,
    <math|Q*<around|(|d,R|)>\<in\><N>>. For each nonempty length-<math|n>
    word<nbsp><math|w> with these bounds, slab
    width<nbsp><math|h<rsub|<math-up|sl>>\<gtr\>0> and
    buffer<nbsp><math|0\<less\>r\<leqslant\>1>, some
    <math|0\<less\>s\<leqslant\>h<rsub|<math-up|sl>>>,
    <math|k,n<rsub|<math-up|lat>>\<in\><N>> satisfy
    <math|s=n<rsub|<math-up|lat>>*a<rsub|k>>, and the slab of
    width<nbsp><math|s> contains<nbsp><math|w>. For every separated exterior
    word<nbsp><math|v> with positive times, some
    <math|B<rsub|v>\<less\>\<infty\>> gives

    <\equation*>
      <around|\<\|\|\>|<around|[|<around|(|A<rsub|w<rsup|\<dagger\>>>*A<rsub|w>|)><rsup|j>*v|]>|\<\|\|\>><rsub|<math-up|OS>><rsup|2>\<leqslant\>B<rsub|v>*<around|[|C<rsub|0><rsup|n>*<around|(|n/r|)><rsup|Q*n>|]><rsup|4*j>*<space|2em><around|(|j\<geqslant\>0|)>.
    </equation*>
  </lemma>

  The operators in the statement use the chosen width<nbsp><math|s>. Its
  choice and the constants <math|C<rsub|0>,Q> precede<nbsp><math|v>;
  <math|B<rsub|v>> may also depend on<nbsp><math|w,n,r> and<nbsp><math|s>.

  <\proof>
    We use Definitions<nbsp><reference|def:D08> and<nbsp><reference|def:D14>,
    Lemmas<nbsp><reference|lem:E2.3> and<nbsp><reference|lem:E3.2>,
    Lemmas<nbsp><reference|lem:F1a> and<nbsp><reference|lem:F3>,
    and<nbsp><eqref|eq:F-chess>, <eqref|eq:F-conf>
    and<nbsp><eqref|eq:F-thickness>. Enlarge the coefficient ball to contain
    every signed image and image under conjugation in degrees at
    most<nbsp><math|d>. Lemma<nbsp><reference|lem:E2.3>, with
    <math|\<varepsilon\>=1>, gives <math|k<rsub|\<ast\>>\<in\><N>> and
    <math|B<rsub|\<ast\>>\<gtr\>0> such that all these centered roots at
    levels <math|k<rsub|<math-up|w>>\<geqslant\>k<rsub|\<ast\>>> are bounded
    by <math|B<rsub|\<ast\>>*a<rsub|k<rsub|<math-up|w>>><rsup|-d<rsub|<math-up|pow>>>>,
    where <math|d<rsub|<math-up|pow>>=d+1>. This choice
    precedes<nbsp><math|n,r,w>.

    Choose the first <math|m\<geqslant\>k<rsub|\<ast\>>> with
    <math|a<rsub|m>\<less\>r/32>, and put
    <math|s=a<rsub|m>*<around|\<lfloor\>|h<rsub|<math-up|sl>>/a<rsub|m>|\<rfloor\>>>.
    The word is nonempty with buffer<nbsp><math|r>, so <math|s\<gtr\>0>,
    <math|s\<leqslant\>h<rsub|<math-up|sl>>>, and it still
    contains<nbsp><math|w> with buffer at least<nbsp><math|r/2>.
    Equation<nbsp><eqref|eq:F-thickness> gives
    <math|a<rsub|m>\<geqslant\>c<rsub|1>*r<rsup|2>>. Fix
    <math|0\<less\>\<alpha\>\<leqslant\>1> with
    <math|20*\<alpha\>\<less\>c<rsub|1>>, and choose the first
    <math|k<rsub|<math-up|w>>\<geqslant\>k<rsub|\<ast\>>> with
    <math|a<rsub|k<rsub|<math-up|w>>>\<less\>\<alpha\>*<around|(|r/n|)><rsup|2>>.
    Then

    <\equation>
      <label|eq:F-repeat-scales>20*n*a<rsub|k<rsub|<math-up|w>>>\<less\>a<rsub|m>,<space|2em>a<rsub|k<rsub|<math-up|w>>>\<geqslant\>c<rsub|2>*<around|(|r/n|)><rsup|4>,<space|2em><around|(|B<rsub|\<ast\>>*a<rsub|k<rsub|<math-up|w>>><rsup|-d<rsub|<math-up|pow>>>|)><rsup|n>\<leqslant\><around|(|B<rsub|\<ast\>>*c<rsub|2><rsup|-d<rsub|<math-up|pow>>>|)><rsup|n>*<around|(|n/r|)><rsup|4*d<rsub|<math-up|pow>>*n>.
    </equation>

    These choices precede the exterior. In the statement take <math|k=m> and
    <math|n<rsub|<math-up|lat>>=<around|\<lfloor\>|h<rsub|<math-up|sl>>/a<rsub|m>|\<rfloor\>>>.

    Expanding the OS norm gives a correlation of <math|4*j*n> main insertions
    and two copies of<nbsp><math|v>. The main insertions are mutually
    separated, and separated from the exterior, by at least<nbsp><math|r/2>.
    Translations by multiples of<nbsp><math|s> do not change residues
    modulo<nbsp><math|a<rsub|m><Z><rsup|4>>. Thus the main anchors have at
    most<nbsp><math|2*n> residue patterns, those of<nbsp><math|w> and its
    reflection with conjugation, independently of<nbsp><math|j>.

    For nonempty<nbsp><math|v>, choose <math|m<rsub|<math-up|v>>\<geqslant\>k<rsub|<math-up|w>>>
    with <math|a<rsub|m<rsub|<math-up|v>>>> smaller than its internal
    separation and twice its minimum positive time. This separates the two
    exterior copies for every<nbsp><math|j>. Next choose
    <math|k<rsub|<math-up|v>>\<geqslant\>m<rsub|<math-up|v>>>, beyond the
    exterior reference levels, with <math|12<around|\||v|\|>*a<rsub|k<rsub|<math-up|v>>>\<less\>a<rsub|m<rsub|<math-up|v>>>>.
    Lemma<nbsp><reference|lem:E2.3> gives a common finite
    bound<nbsp><math|X\<geqslant\>0> for all exterior roots and their images
    at level<nbsp><math|k<rsub|<math-up|v>>>.
    Both<nbsp><math|m<rsub|<math-up|v>>,k<rsub|<math-up|v>>> are independent
    of<nbsp><math|j>.

    We apply the chessboard estimate at two cell sizes. In each axis, avoid
    strips of half-width<nbsp><math|5*a<rsub|k<rsub|<math-up|w>>>> around
    the<nbsp><math|2*n> main residues modulo<nbsp><math|a<rsub|m>>. This is
    possible by<nbsp><eqref|eq:F-repeat-scales>. Then change the translation
    by less than<nbsp><math|a<rsub|m<rsub|<math-up|v>>>> to place
    all<nbsp><math|2<around|\||v|\|>> exterior anchors at distance at
    least<nbsp><math|3*a<rsub|k<rsub|<math-up|v>>>> from the finer
    boundaries; <math|12<around|\||v|\|>*a<rsub|k<rsub|<math-up|v>>>\<less\>a<rsub|m<rsub|<math-up|v>>>>
    permits this. Since <math|a<rsub|m<rsub|<math-up|v>>>\<leqslant\>a<rsub|k<rsub|<math-up|w>>>>,
    the main anchors retain margin at least<nbsp><math|3*a<rsub|k<rsub|<math-up|w>>>>.
    Main insertions occupy distinct coarse cells, none containing an exterior
    anchor.

    Several exterior factors may occupy one coarse cell. Reflect their
    product into every coarse cell, and apply<nbsp><eqref|eq:F-chess> to the
    aligned tiling of side<nbsp><math|a<rsub|m<rsub|<math-up|v>>>>. The fine
    and coarse tilings share an origin and have an odd integer side ratio.
    Coarse reflections preserve the fine grid and its interior margins.
    Within each reflected coarse cell, exterior anchors are separated by more
    than<nbsp><math|a<rsub|m<rsub|<math-up|v>>>> and so occupy distinct fine
    cells; across coarse boundaries their fine cells are disjoint. The
    uncentered estimate of Lemma<nbsp><reference|lem:F1a> bounds every factor
    by<nbsp><math|X>. If the coarse cell contains <math|n<rsub|C>> exterior
    factors, its root is therefore at most<nbsp><math|X<rsup|n<rsub|C>>>.
    Applying the coarse chessboard estimate now gives

    <\equation*>
      <around|\<\|\|\>|<around|[|<around|(|A<rsub|w<rsup|\<dagger\>>>*A<rsub|w>|)><rsup|j>*v|]>|\<\|\|\>><rsub|<math-up|OS>><rsup|2>\<leqslant\>X<rsup|2<around|\||v|\|>>*<around|(|B<rsub|\<ast\>>*a<rsub|k<rsub|<math-up|w>>><rsup|-d<rsub|<math-up|pow>>>|)><rsup|4*j*n>.
    </equation*>

    For each fixed<nbsp><math|j>, take lattice approximations of all anchors,
    preserving these strict margins and separations, then apply
    Lemma<nbsp><reference|lem:E3.2> and<nbsp><eqref|eq:F-conf>. No cutoff
    threshold uniform in<nbsp><math|j> is needed. The constants on the right
    are already independent of<nbsp><math|j>. Choose <math|B<rsub|v>=max
    <around|(|1,X<rsup|2<around|\||v|\|>>|)>>,
    <math|C<rsub|0>=B<rsub|\<ast\>>*c<rsub|2><rsup|-d<rsub|<math-up|pow>>>>,
    and <math|Q=4*d<rsub|<math-up|pow>>>.
    Equation<nbsp><eqref|eq:F-repeat-scales> proves the assertion. For
    empty<nbsp><math|v> omit its factors and take <math|B<rsub|v>=1>.
  </proof>

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

  <\bibliography|bib|tm-plain|references>
    <\bib-list|3>
      <bibitem*|1><label|bib-FrohlichIsraelLiebSimon1978>Jürg Fröhlich,
      Robert Israel, E.<nbsp>H.<nbsp>Lieb<localize|, and >Barry Simon.
      <newblock>Phase transitions and reflection positivity. I. General
      theory and long range lattice models.
      <newblock><with|font-shape|italic|Communications in Mathematical
      Physics>, 62(1):1\U34, 1978.<newblock>

      <bibitem*|2><label|bib-Rudin1976>Walter Rudin.
      <newblock><with|font-shape|italic|Principles of Mathematical Analysis>.
      <newblock>McGraw-Hill, New York, 3<localize| edition>, 1976.<newblock>

      <bibitem*|3><label|bib-Seiler1982>Erhard Seiler. <newblock>Lattice
      gauge theories. <newblock><localize|In ><with|font-shape|italic|Gauge
      Theories as a Problem of Constructive Quantum Field Theory and
      Statistical Mechanics>, <localize|volume> 159<localize| of
      ><with|font-shape|italic|Lecture Notes in Physics>, <localize|pages
      >3\U98. Springer, Berlin, Heidelberg, 1982.<newblock>
    </bib-list>
  </bibliography>
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
    <associate|auto-10|<tuple|4|12>>
    <associate|auto-11|<tuple|5|17>>
    <associate|auto-12|<tuple|6|20>>
    <associate|auto-13|<tuple|7|23>>
    <associate|auto-14|<tuple|8|26>>
    <associate|auto-15|<tuple|9|30>>
    <associate|auto-16|<tuple|1|31>>
    <associate|auto-17|<tuple|II|32>>
    <associate|auto-18|<tuple|10|32>>
    <associate|auto-19|<tuple|11|32>>
    <associate|auto-2|<tuple|1|3>>
    <associate|auto-20|<tuple|12|35>>
    <associate|auto-21|<tuple|12|36>>
    <associate|auto-22|<tuple|12.4|37>>
    <associate|auto-23|<tuple|12.6|40>>
    <associate|auto-24|<tuple|12.8|43>>
    <associate|auto-25|<tuple|12.4|45>>
    <associate|auto-26|<tuple|13|47>>
    <associate|auto-27|<tuple|14|49>>
    <associate|auto-28|<tuple|14.1|49>>
    <associate|auto-29|<tuple|14.2|49>>
    <associate|auto-3|<tuple|2|3>>
    <associate|auto-30|<tuple|1|50>>
    <associate|auto-31|<tuple|2|52>>
    <associate|auto-32|<tuple|14.3|53>>
    <associate|auto-33|<tuple|15|53>>
    <associate|auto-34|<tuple|15.1|54>>
    <associate|auto-35|<tuple|3|55>>
    <associate|auto-36|<tuple|15.2|55>>
    <associate|auto-37|<tuple|15.3|57>>
    <associate|auto-38|<tuple|15.4|59>>
    <associate|auto-39|<tuple|15.5|60>>
    <associate|auto-4|<tuple|3|5>>
    <associate|auto-40|<tuple|16|62>>
    <associate|auto-41|<tuple|16.1|62>>
    <associate|auto-42|<tuple|16.2|62>>
    <associate|auto-43|<tuple|16.3|62>>
    <associate|auto-44|<tuple|17|62>>
    <associate|auto-45|<tuple|17.1|62>>
    <associate|auto-46|<tuple|17.2|62>>
    <associate|auto-47|<tuple|18|63>>
    <associate|auto-48|<tuple|18.1|63>>
    <associate|auto-49|<tuple|18.2|63>>
    <associate|auto-5|<tuple|3.1|5>>
    <associate|auto-50|<tuple|19|63>>
    <associate|auto-51|<tuple|19.1|63>>
    <associate|auto-52|<tuple|19.2|64>>
    <associate|auto-53|<tuple|19.2.6|64>>
    <associate|auto-6|<tuple|3.2|6>>
    <associate|auto-7|<tuple|3.3|9>>
    <associate|auto-8|<tuple|3.4|9>>
    <associate|auto-9|<tuple|3.5|10>>
    <associate|bib-FrohlichIsraelLiebSimon1978|<tuple|1|64>>
    <associate|bib-Rudin1976|<tuple|2|64>>
    <associate|bib-Seiler1982|<tuple|3|64>>
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
    <associate|def:D19|<tuple|10.1|32>>
    <associate|def:D20a|<tuple|11.1|32>>
    <associate|def:D20b|<tuple|11.2|32>>
    <associate|def:D21|<tuple|11.3|32>>
    <associate|def:D22|<tuple|12.1|36>>
    <associate|def:D23|<tuple|12.2|36>>
    <associate|def:D24|<tuple|13.1|47>>
    <associate|def:D25|<tuple|13.2|47>>
    <associate|def:D25a|<tuple|13.5|48>>
    <associate|def:D26|<tuple|14.2.1|49>>
    <associate|def:D27|<tuple|14.2.6|50>>
    <associate|def:D28|<tuple|18.2.2|63>>
    <associate|def:D29|<tuple|18.2.4|63>>
    <associate|def:D30|<tuple|18.2.5|63>>
    <associate|def:D31|<tuple|19.1.1|63>>
    <associate|def:D32|<tuple|19.1.2|64>>
    <associate|def:D33|<tuple|19.1.3|64>>
    <associate|def:D34|<tuple|19.1.7|64>>
    <associate|def:D35|<tuple|19.1.8|64>>
    <associate|def:D36|<tuple|19.2.1|64>>
    <associate|def:D37|<tuple|19.2.2|64>>
    <associate|def:D38|<tuple|19.2.3|64>>
    <associate|def:E1-E3|<tuple|4.4|14>>
    <associate|def:E2-small|<tuple|14.2.9|50>>
    <associate|def:E4-E5|<tuple|4.5|14>>
    <associate|def:E6-E7|<tuple|4.6|15>>
    <associate|def:Q0|<tuple|8.1|26>>
    <associate|def:Q1|<tuple|8.2|27>>
    <associate|def:Q2|<tuple|6.9|21>>
    <associate|def:Q3|<tuple|8.3|27>>
    <associate|def:Q4|<tuple|8.4|27>>
    <associate|def:Q5|<tuple|8.5|27>>
    <associate|def:Q6|<tuple|8.6|27>>
    <associate|def:W0|<tuple|6.5|21>>
    <associate|def:W1|<tuple|6.6|21>>
    <associate|def:W2|<tuple|6.7|21>>
    <associate|def:W3|<tuple|6.8|21>>
    <associate|eq:C-FP|<tuple|12.1|41>>
    <associate|eq:C-integrand|<tuple|12.3|44>>
    <associate|eq:C-pole|<tuple|12.2|43>>
    <associate|eq:C-prereset|<tuple|12.5|46>>
    <associate|eq:C-slope|<tuple|12.4|44>>
    <associate|eq:E2-free-matrix|<tuple|14.4|52>>
    <associate|eq:E2-margin|<tuple|14.3|50>>
    <associate|eq:E2-tails|<tuple|14.1|50>>
    <associate|eq:F-calculus|<tuple|15.14|58>>
    <associate|eq:F-chess|<tuple|15.4|55>>
    <associate|eq:F-conf|<tuple|15.1|54>>
    <associate|eq:F-dimension|<tuple|15.11|58>>
    <associate|eq:F-local|<tuple|15.2|54>>
    <associate|eq:F-logconvex|<tuple|15.6|56>>
    <associate|eq:F-normalized|<tuple|15.13|58>>
    <associate|eq:F-null|<tuple|15.9|57>>
    <associate|eq:F-ordered|<tuple|15.3|54>>
    <associate|eq:F-parts|<tuple|15.12|58>>
    <associate|eq:F-power|<tuple|15.16|60>>
    <associate|eq:F-projections|<tuple|15.8|57>>
    <associate|eq:F-rank|<tuple|15.10|58>>
    <associate|eq:F-relative|<tuple|14.5|52>>
    <associate|eq:F-repeat-scales|<tuple|15.17|61>>
    <associate|eq:F-small|<tuple|15.7|56>>
    <associate|eq:F-subpower|<tuple|14.2|50>>
    <associate|eq:F-thickness|<tuple|15.15|60>>
    <associate|eq:F-uncentered|<tuple|15.5|55>>
    <associate|eq:I12-Wilson-initialization|<tuple|3.13|9>>
    <associate|eq:I12-activity-caps|<tuple|3.12|8>>
    <associate|eq:I12-bare-slope|<tuple|2.3|4>>
    <associate|eq:I12-clipping|<tuple|3.8|7>>
    <associate|eq:I12-drift-sum|<tuple|3.14|10>>
    <associate|eq:I12-endpoint-tuning|<tuple|3.15|10>>
    <associate|eq:I12-forced-eligibility|<tuple|3.8|6>>
    <associate|eq:I12-framed-connector|<tuple|3.4|5>>
    <associate|eq:I12-levels|<tuple|3.1|5>>
    <associate|eq:I12-marked-evolution|<tuple|3.17|11>>
    <associate|eq:I12-marked-remainders|<tuple|3.18|11>>
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
    <associate|lem:A1|<tuple|10.2|32>>
    <associate|lem:B1|<tuple|11.4|33>>
    <associate|lem:B2|<tuple|11.5|33>>
    <associate|lem:B3|<tuple|11.6|34>>
    <associate|lem:B4|<tuple|11.7|34>>
    <associate|lem:B5|<tuple|11.8|34>>
    <associate|lem:B6|<tuple|11.9|35>>
    <associate|lem:B7|<tuple|11.10|35>>
    <associate|lem:C1|<tuple|12.3|37>>
    <associate|lem:C2|<tuple|12.4|37>>
    <associate|lem:C3|<tuple|12.5|38>>
    <associate|lem:C4|<tuple|12.6|39>>
    <associate|lem:C5|<tuple|12.7|41>>
    <associate|lem:C6|<tuple|12.8|42>>
    <associate|lem:C7|<tuple|12.9|43>>
    <associate|lem:C8|<tuple|12.10|46>>
    <associate|lem:D1|<tuple|13.3|47>>
    <associate|lem:D2|<tuple|13.4|48>>
    <associate|lem:D3|<tuple|13.6|48>>
    <associate|lem:D4|<tuple|13.7|48>>
    <associate|lem:D5|<tuple|13.8|49>>
    <associate|lem:D6|<tuple|13.9|49>>
    <associate|lem:E1.1|<tuple|14.1.1|49>>
    <associate|lem:E1.2|<tuple|14.1.2|49>>
    <associate|lem:E1.3|<tuple|14.1.3|49>>
    <associate|lem:E2-free-tests|<tuple|14.2.14|52>>
    <associate|lem:E2.1|<tuple|14.2.2|49>>
    <associate|lem:E2.10|<tuple|14.2.15|53>>
    <associate|lem:E2.1a|<tuple|14.2.3|49>>
    <associate|lem:E2.2|<tuple|14.2.4|49>>
    <associate|lem:E2.2a|<tuple|14.2.5|50>>
    <associate|lem:E2.3|<tuple|14.2.7|50>>
    <associate|lem:E2.4|<tuple|14.2.8|50>>
    <associate|lem:E2.6|<tuple|14.2.10|51>>
    <associate|lem:E2.7|<tuple|14.2.11|51>>
    <associate|lem:E2.8|<tuple|14.2.12|51>>
    <associate|lem:E2.9|<tuple|14.2.13|52>>
    <associate|lem:E3.1|<tuple|14.3.1|53>>
    <associate|lem:E3.2|<tuple|14.3.2|53>>
    <associate|lem:F1|<tuple|15.1.1|54>>
    <associate|lem:F1a|<tuple|15.2.1|55>>
    <associate|lem:F1b|<tuple|15.2.2|56>>
    <associate|lem:F2|<tuple|15.3.1|57>>
    <associate|lem:F3|<tuple|15.4.1|59>>
    <associate|lem:F4|<tuple|15.5.1|60>>
    <associate|lem:G1.1|<tuple|16.1.1|62>>
    <associate|lem:G2.1|<tuple|16.2.1|62>>
    <associate|lem:G2.2|<tuple|16.2.2|62>>
    <associate|lem:G2.3|<tuple|16.2.3|62>>
    <associate|lem:G3.1|<tuple|16.3.1|62>>
    <associate|lem:G3.2|<tuple|16.3.2|62>>
    <associate|lem:G3.3|<tuple|16.3.3|62>>
    <associate|lem:H1.1|<tuple|17.1.1|62>>
    <associate|lem:H1.2|<tuple|17.1.2|62>>
    <associate|lem:H1.3|<tuple|17.1.3|62>>
    <associate|lem:H2.1|<tuple|17.2.1|62>>
    <associate|lem:H2.2|<tuple|17.2.2|63>>
    <associate|lem:H2.3|<tuple|17.2.3|63>>
    <associate|lem:H2.4|<tuple|17.2.4|63>>
    <associate|lem:I1.1|<tuple|18.1.1|63>>
    <associate|lem:I1.2|<tuple|18.1.2|63>>
    <associate|lem:I1.3|<tuple|18.1.3|63>>
    <associate|lem:I2.1|<tuple|18.2.1|63>>
    <associate|lem:I2.2|<tuple|18.2.3|63>>
    <associate|lem:I2.3|<tuple|18.2.6|63>>
    <associate|lem:I2.4|<tuple|18.2.7|63>>
    <associate|lem:J1.1|<tuple|19.1.4|64>>
    <associate|lem:J1.2|<tuple|19.1.5|64>>
    <associate|lem:J1.3|<tuple|19.1.6|64>>
    <associate|lem:J1.4|<tuple|19.1.9|64>>
    <associate|lem:J1.5|<tuple|19.1.10|64>>
    <associate|lem:J1.6|<tuple|19.1.11|64>>
    <associate|lem:J2.1|<tuple|19.2.4|64>>
    <associate|lem:J2.2|<tuple|19.2.5|64>>
    <associate|lem:J2.3|<tuple|19.2.6|64>>
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
    <associate|prop:UV|<tuple|4.2|13>>
    <associate|sec:constants|<tuple|9|30>>
    <associate|sec:continuum|<tuple|4|12>>
    <associate|sec:introduction|<tuple|1|3>>
    <associate|sec:main-theorems|<tuple|8|26>>
    <associate|sec:partII-A|<tuple|10|32>>
    <associate|sec:partII-B|<tuple|11|32>>
    <associate|sec:partII-C|<tuple|12|35>>
    <associate|sec:partII-D|<tuple|13|47>>
    <associate|sec:partII-E|<tuple|14|49>>
    <associate|sec:partII-E.1|<tuple|14.1|49>>
    <associate|sec:partII-E.2|<tuple|14.2|49>>
    <associate|sec:partII-E.3|<tuple|14.3|53>>
    <associate|sec:partII-F|<tuple|15|53>>
    <associate|sec:partII-G|<tuple|16|62>>
    <associate|sec:partII-G.1|<tuple|16.1|62>>
    <associate|sec:partII-G.2|<tuple|16.2|62>>
    <associate|sec:partII-G.3|<tuple|16.3|62>>
    <associate|sec:partII-H|<tuple|17|62>>
    <associate|sec:partII-H.1|<tuple|17.1|62>>
    <associate|sec:partII-H.2|<tuple|17.2|62>>
    <associate|sec:partII-I|<tuple|18|63>>
    <associate|sec:partII-I.1|<tuple|18.1|63>>
    <associate|sec:partII-I.2|<tuple|18.2|63>>
    <associate|sec:partII-J|<tuple|19|63>>
    <associate|sec:partII-J.1|<tuple|19.1|63>>
    <associate|sec:partII-J.2|<tuple|19.2|64>>
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
    <associate|subsec:C-coefficient|<tuple|12.8|43>>
    <associate|subsec:C-determinant|<tuple|12.6|40>>
    <associate|subsec:C-matching|<tuple|12.4|37>>
    <associate|subsec:C-reset|<tuple|12.4|45>>
    <associate|tab:constant-choices|<tuple|1|31>>
    <associate|thm:A|<tuple|A|28>>
    <associate|thm:B|<tuple|B|29>>
    <associate|thm:IV|<tuple|4.7|15>>
    <associate|thm:ST|<tuple|5.4|19>>
    <associate|thm:UV|<tuple|4.2|13>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      Rudin1976

      FrohlichIsraelLiebSimon1978

      Seiler1982
    </associate>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Local
      polynomial fields> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Gauges
      and block integration> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Path
      actions and the coupling reset> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Curvature coordinates
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|Fourth-order matching
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|The determinant comparison
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|The logarithmic coefficient
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|The scalar reset
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>Activities
      and the inductive step> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>Trajectories,
      marked fields and ultraviolet convergence>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27><vspace|0.5fn>

      <with|par-left|<quote|1tab>|14.1<space|2spc>Trajectories and tuning
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|14.2<space|2spc>Marked fields and
      volume-uniform estimates <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|3tab>|<with|font-size|<quote|0.92>|Corrections to
      marked insertions. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>>

      <with|par-left|<quote|3tab>|<with|font-size|<quote|0.92>|Short-distance
      rank tests. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>>

      <with|par-left|<quote|1tab>|14.3<space|2spc>Full ultraviolet
      convergence <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|15<space|2spc>Infinite
      volume and field calculus> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33><vspace|0.5fn>

      <with|par-left|<quote|1tab>|15.1<space|2spc>Volume limits
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|3tab>|<with|font-size|<quote|0.92>|Symmetries of
      the limit. <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>>

      <with|par-left|<quote|1tab>|15.2<space|2spc>Interior roots and errors
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|15.3<space|2spc>Corrected coefficients
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|15.4<space|2spc>Euclidean properties
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|15.5<space|2spc>Repeated reflected words
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Free
      fields, Ward identities and rotations>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40><vspace|0.5fn>

      <with|par-left|<quote|1tab>|16.1<space|2spc>Free fields
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|1tab>|16.2<space|2spc>Free comparison and the
      conserved line <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1tab>|16.3<space|2spc>Ward identities and
      rotations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|17<space|2spc>Slabs,
      phases and reconstruction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44><vspace|0.5fn>

      <with|par-left|<quote|1tab>|17.1<space|2spc>Slabs and phases
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|1tab>|17.2<space|2spc>Reconstruction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|18<space|2spc>The
      trace law and non-free comparisons>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47><vspace|0.5fn>

      <with|par-left|<quote|1tab>|18.1<space|2spc>Trace and spectrum
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1tab>|18.2<space|2spc>Precise non-free
      comparisons <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|19<space|2spc>Products
      and contact subtractions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50><vspace|0.5fn>

      <with|par-left|<quote|1tab>|19.1<space|2spc>Products and nested
      clusters <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|1tab>|19.2<space|2spc>Contact subtractions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
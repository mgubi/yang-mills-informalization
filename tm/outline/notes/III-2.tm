<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.1 The block-spin step and the
  symmetric gauge fixing (notes)|III-1.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-2.tm>|<hlink|III.3 Free lattice kernels and
  covariances (notes) \<rightarrow\>|III-3.tm>>

  <ym-title|III.2. Choosing the constants: the order of choice, the level
  schedule and the shooting argument \V detailed
  notes><label|iii2-choosing-the-constants-the-order-of-choice-the-level-schedule-and-the-shooting-argument--detailed-notes>

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

    <with|par-left|1tab|4.1 Numerical existence lemmas
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The level schedule
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Shooting <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Persistent purchases and their composition
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The analytic lemmas
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit III.2: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-2.tm>.
  </quotation>

  <hlink|Unit page|../units/III-2.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> <hlink|<verbatim|YM/Price/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price>
  (the constants and the level schedule, 406 lines),
  <hlink|<verbatim|YM/Shoot/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot>
  (shooting, 228 lines), <hlink|<verbatim|YM/Integration/RG05Preconstruction/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction>,
  <hlink|<verbatim|YM/Integration/NativeSelection/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection>
  and other files of <hlink|<verbatim|YM/Integration/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration>,
  <hlink|<verbatim|YM/RG08/Calendar/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar>,
  and parts of <hlink|<verbatim|YM/RG08/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08>,
  <hlink|<verbatim|YM/RG12/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12>,
  <hlink|<verbatim|YM/FullVolume/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume>
  (in particular <verbatim|Roll/>) and <hlink|<verbatim|YM/TraceExtension/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension>.
  <strong|Size:> 18,156 lines in the main-theorem closure:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|part>>|<cell|<strong|lines>>>|<row|<cell|proof
  of the plentiful construction (III.2.5)>|<cell|about
  6,250>>|<row|<cell|proof of the joint same-factor purchase
  (III.2.4)>|<cell|about 4,700>>|<row|<cell|proof of the final run
  (III.2.7)>|<cell|about 4,000>>|<row|<cell|proof of the sheet and radar
  purchase>|<cell|about 2,400>>|<row|<cell|the two directories that carry the
  mathematics of the schedule (<verbatim|YM/Price/>,
  <verbatim|YM/Shoot/>)>|<cell|634>>>>>

  <strong|Conventions.> These are those of III.9.

  <\itemize-minus>
    <item><strong|Levels.> Levels <math|m=0,1,\<ldots\>,N> run from the
    coarsest (<math|m=0>, unit spacing) to the finest (<math|m=N>, the Wilson
    lattice).

    <item><strong|Steps and scales.> The step <math|m+1\<to\>m> blocks by an
    odd factor <math|L<rsub|m>\<geqslant\>3>. The scale is
    <math|s<rsub|m>=<big|sum><rsub|i\<less\>m>log L<rsub|i>>. The
    level-<math|m> torus at volume index <math|p> has side
    <math|n<rsub|p>*e<rsup|s<rsub|m>>>, where <math|n<rsub|p>> is the side of
    the level-0 torus. III.9 writes <math|L<rsub|p>> for <math|n<rsub|p>>;
    the letter <math|L> is kept here for block factors.

    <item><strong|Slope.> <math|\<kappa\>=11*C<rsub|G>/<around|(|24*\<pi\><rsup|2>|)>>
    (III.9.1), and <math|\<kappa\>\<gtr\>0> for simple <math|G>.

    <item><strong|Reference quantities (III.9.2).>
    <math|<wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+\<kappa\>*s<rsub|m>>,
    <math|M<rsub|m>=e<rsup|<around|(|log log
    <wide|\<beta\>|^><rsub|m>|)><rsup|2>>>, the threshold
    <math|t<rsub|m>=<wide|\<beta\>|^><rsub|m><rsup|-1/2>*M<rsub|m>>, the
    cover size <math|B<rsub|m>=<around|\<lceil\>|<around|(|log
    <wide|\<beta\>|^><rsub|m>|)><rsup|2>|\<rceil\>>> and the band
    <math|\<frak-B\><rsub|m>=<around|[|<wide|\<beta\>|^><rsub|m>/2,<space|0.17em>2*<wide|\<beta\>|^><rsub|m>|]>>.

    <item><strong|Patch radius.> <math|R<rsub|m>=<around|(|J<rsub|m+1>+3|)>*L<rsub|m>>
    (<hlink|<verbatim|Patch.radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51>).
  </itemize-minus>

  The main results concern numerical choices and a conditional shooting
  construction:

  <\enumerate>
    <item>A long list of requirements can be met simultaneously by choosing
    the constants in one fixed order. Each requirement has the form "this
    inequality holds once the block factor, the coupling or the lattice is
    large enough, given the constants chosen before".

    <item>There is a level schedule meeting every entrance condition.

    <item>Given the one-step construction as a hypothesis, there is a
    trajectory of effective actions with <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>
    (shooting).
  </enumerate>

  The terminology of sheets, prices and purchases records numerical bounds
  and their order of choice (glossary, family 1). The unit also contains a
  group of analytic lemmas of the Gaussian step, filed here by the dependency
  assignment (III.2.9).

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Proposition III.2.1 (the constants, in the order in which they are
  chosen).> Let <math|G> be simple. The construction fixes the following
  data, in this order.

  <\enumerate>
    <item><em|Sheet (data chosen before the block factors).> It consists of
    the following.

    <\itemize-minus>
      <item>A kernel choice <math|K> with branches on every patch.

      <item>For every stage <math|j\<in\>\<bbb-N\>>, a stage record
      <math|X<rsub|j>> with:

      <\itemize-minus>
        <item>a clip with relaxation <math|r<rsub|j>>;

        <item>derivative order <math|k<rsub|j>\<geqslant\>6> and spatial
        power <math|q<rsub|j>\<geqslant\>2>;

        <item>support exponent <math|a<rsub|j>\<gtr\>0>, width
        <math|w<rsub|j>\<gtr\>0> and path count
        <math|\<varpi\><rsub|j>\<gtr\>0>;

        <item>drift allowance <math|\<omega\><rsub|j>\<geqslant\>0> and
        column bound <math|\<gamma\><rsub|j>\<geqslant\>1>;

        <item>the constraint <math|r<rsub|j>*w<rsub|j>\<geqslant\>12>.
      </itemize-minus>

      <item>A first stage <math|j<rsub|0>\<geqslant\>4>.

      <item>Floors <math|f<rsub|j>\<in\>\<bbb-N\>>.
    </itemize-minus>

    The sequences <math|k<rsub|j>>, <math|q<rsub|j>>, <math|a<rsub|j>> are
    nondecreasing.

    <item><em|Stage block factors> <math|\<ell\><rsub|j>>. They are odd,
    satisfy <math|\<ell\><rsub|j>\<geqslant\>max <around|(|3,f<rsub|j>|)>>,
    are nondecreasing in <math|j>, and for <math|j\<geqslant\>j<rsub|0>>

    <\equation*>
      <frac|\<omega\><rsub|j>|log \<ell\><rsub|j>>\<leqslant\>min
      <around*|(|<frac|\<kappa\>|4>,<frac|1|j<rsup|2>>|)>,<space|2em><frac|log
      \<cal-C\><rsub|j>|log \<ell\><rsub|j>>\<leqslant\><frac|1|j<rsup|2>>,<space|2em>\<cal-C\><rsub|j>\<assign\>1+\<varpi\><rsub|j>+w<rsub|j><rsup|-1>+\<gamma\><rsub|j>+r<rsub|j>+a<rsub|j>.
    </equation*>

    <item><em|Smallness exponents> <math|\<theta\><rsub|j>\<gtr\>0>. They are
    nonincreasing, with <math|\<theta\><rsub|j>\<leqslant\>1/j> for
    <math|j\<geqslant\>j<rsub|0>>.

    <item><em|Delays.> These are the following.

    <\itemize-minus>
      <item>Entry couplings <math|\<beta\><rsup|<math-up|ent>><rsub|j>\<in\>\<bbb-R\>>.

      <item>Entry scales <math|\<sigma\><rsup|<math-up|ent>><rsub|j><around|(|<wide|\<beta\>|\<bar\>>|)>>.
      These are functions of the stage <em|and of the barrier> still to be
      chosen.

      <item>Volume shells <math|S<rsub|j>\<in\>\<bbb-N\>> and growth
      exponents <math|g<rsub|j>\<in\>\<bbb-N\>>.
    </itemize-minus>

    Delays are ordered componentwise.

    <item><em|Barrier> <math|<wide|\<beta\>|\<bar\>>\<gtr\>1>. It satisfies
    <math|\<beta\><rsup|<math-up|ent>><rsub|j<rsub|0>>\<leqslant\><wide|\<beta\>|\<bar\>>>
    and <math|x<rsup|-1/2>*e<rsup|<around|(|log log
    x|)><rsup|2>>\<leqslant\>1> for all <math|x\<geqslant\><wide|\<beta\>|\<bar\>>>.

    <item><em|Wait.> This consists of:

    <\itemize-minus>
      <item>readiness scales <math|\<sigma\><rsup|<math-up|rdy>><rsub|j>>;

      <item>windows <math|h<rsub|j>:\<bbb-R\>\<to\>\<bbb-N\>> with
      <math|h<rsub|j><around|(|s|)>/s\<to\>0> as <math|s\<to\>\<infty\>> (for
      each fixed <math|j>, not uniformly);

      <item>a minimal period <math|n<rsub|min>>.
    </itemize-minus>

    Waits are ordered componentwise by readiness scales, windows and minimal
    period.
  </enumerate>

  Items 2, 3 and 5 always exist:

  <\itemize-minus>
    <item>item 2 exists for every sheet;

    <item>in item 3, <math|\<theta\>> can be chosen below any prescribed
    positive sequence;

    <item>in item 5, <math|<wide|\<beta\>|\<bar\>>> can be chosen above any
    prescribed real number.
  </itemize-minus>

  Item 4 has no further conditions. In item 6, only the stated sublinearity
  is required; the readiness scales are real and
  <math|n<rsub|min>\<in\>\<bbb-N\>>.

  <em|Status:> items 1\U6 are definitions (specifications). There are three
  existence theorems. The existence of item 2 uses <math|\<kappa\>\<gtr\>0>,
  hence the simplicity of <math|G>. The later existence theorems
  III.2.4\UIII.2.7 meet specified requirements in this order. <em|Lean:>
  <hlink|<verbatim|Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>,
  <hlink|<verbatim|Stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61>,
  <hlink|<verbatim|Large>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48>,
  <hlink|<verbatim|Rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50-L53>,
  <hlink|<verbatim|Rolls.exists_rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L79-L84>,
  <hlink|<verbatim|Protection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88-L92>,
  <hlink|<verbatim|Protection.exists_margin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L98-L111>,
  <hlink|<verbatim|Delays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L115-L120>,
  <hlink|<verbatim|DelayLe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38>,
  <hlink|<verbatim|Bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L123-L127>,
  <hlink|<verbatim|Bar.exists_above>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L19-L37>,
  <hlink|<verbatim|Wait>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L134-L139>.

  <strong|Proposition III.2.2 (a level schedule meeting all entrance
  conditions).> Let <math|G> be simple and let data 1\U6 of III.2.1 be given.
  Then there is a level system with the following data:

  <\itemize-minus>
    <item>a stage index <math|J<rsub|m>>;

    <item>step block factors <math|L<rsub|m>=\<ell\><rsub|J<rsub|m+1>>>;

    <item>level-0 sides <math|n<rsub|p>=4*<around|(|M+p+1|)>> for some
    <math|M\<in\>\<bbb-N\>>;

    <item>reference couplings <math|<wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+\<kappa\>*s<rsub|m>>.
  </itemize-minus>

  It satisfies:

  <\itemize-minus>
    <item>(a) <em|identification:> the kernel, stage records, <math|\<ell\>>,
    <math|\<theta\>> and <math|<wide|\<beta\>|\<bar\>>> are those of III.2.1,
    and <math|J<rsub|0>=J<rsub|1>=j<rsub|0>>;

    <item>(b) <em|entry:> <math|\<beta\><rsup|<math-up|ent>><rsub|J<rsub|m+1>>\<leqslant\><wide|\<beta\>|^><rsub|m>>
    for all <math|m>, and <math|\<sigma\><rsup|<math-up|ent>><rsub|J<rsub|m+1>><around|(|<wide|\<beta\>|\<bar\>>|)>\<leqslant\>s<rsub|m>>
    whenever <math|J<rsub|m+1>\<gtr\>j<rsub|0>>;

    <item>(c) <em|volume:> <math|n<rsub|p>\<geqslant\>n<rsub|min>>, and
    <math|S<rsub|j>*<around|(|1+B<rsub|m>+B<rsub|m+1>|)><rsup|g<rsub|j>>\<leqslant\>n<rsub|p>*e<rsup|s<rsub|m>>>
    for all <math|m,p>, with <math|j=J<rsub|m+1>>;

    <item>(d) <em|windows:> for every <math|j\<geqslant\>j<rsub|0>> there is
    a level <math|k> with <math|\<sigma\><rsup|<math-up|rdy>><rsub|j>\<leqslant\>s<rsub|k>>,
    <math|h<rsub|j><around|(|s<rsub|k>|)>\<leqslant\>k>, and
    <math|J<rsub|i>=j> for <math|<around|\||i-k|\|>\<leqslant\>h<rsub|j><around|(|s<rsub|k>|)>>;

    <item>(e) <em|the scale conditions of III.9.2:>

    <\itemize-minus>
      <item><math|J> is nondecreasing, <math|J<rsub|m+1>\<leqslant\>J<rsub|m>+1>
      and <math|J<rsub|m>\<to\>\<infty\>>;

      <item><math|k<rsub|J<rsub|m>>>, <math|q<rsub|J<rsub|m>>>,
      <math|a<rsub|J<rsub|m>>> are nondecreasing in <math|m>;

      <item><math|<wide|\<beta\>|^><rsub|m>\<gtr\>1> and
      <math|t<rsub|m>\<leqslant\>1>;

      <item><math|100*<around|(|B<rsub|m>+1|)>\<leqslant\>n<rsub|p>*e<rsup|s<rsub|m>>>
      and <math|100*<around|(|R<rsub|m>+1|)>\<leqslant\>n<rsub|p>*e<rsup|s<rsub|m+1>>>;

      <item><math|0\<less\>\<theta\><rsub|J<rsub|m>>\<leqslant\>1/J<rsub|m>>,
      and <math|\<theta\>> is nonincreasing;

      <item><math|\<omega\><rsub|J<rsub|m+1>>/log
      L<rsub|m>\<leqslant\>J<rsub|m+1><rsup|-2>> and <math|log
      \<cal-C\><rsub|J<rsub|m+1>>/log L<rsub|m>\<leqslant\>J<rsub|m+1><rsup|-2>>;

      <item><math|log L<rsub|m>/s<rsub|m>\<to\>0>;
    </itemize-minus>

    <item>(f) <em|block control:> at every step the kernel is well posed,
    symmetric under the lattice symmetries and gauge covariant.
  </itemize-minus>

  The same construction also ensures that every positive integer divides
  <math|n<rsub|p>> for infinitely many <math|p>.

  <em|Status:> theorem. The divisibility variant is filed in III.10 and is
  the one used in the final assembly (III.2.7). Note that (d) asserts the
  existence of one level <math|k> per stage. Taking
  <math|\<sigma\><rsup|<math-up|rdy>><rsub|j>> large forces <math|k> to be
  large. <em|Lean:> <hlink|<verbatim|Wait.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239>,
  <hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>,
  <hlink|<verbatim|Calendar.Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118>,
  <hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>,
  <hlink|<verbatim|Schedule.Gentle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L129-L130>,
  <hlink|<verbatim|Calendar.blocks_go>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72>;
  variant <hlink|<verbatim|Wait.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135>,
  <hlink|<verbatim|AsDivisors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L21>.

  <strong|Proposition III.2.3 (shooting: a selected history from a recipe).>
  Let <math|G> be simple. Fix a level system with

  <\equation*>
    \<omega\><rsub|J<rsub|m+1>>\<leqslant\><tfrac|\<kappa\>|4>log
    L<rsub|m><space|2em><text|for all >m.
  </equation*>

  This holds for every level system of III.2.2, by III.2.1(2).

  <em|Recipe.> Let a recipe be given: path data
  <math|P<rsup|\<cal-R\>><rsub|N,m>> and three predicates (a start test, a
  retention test at each level, a transition test for consecutive levels).

  <em|Admissible representations.> A level-<math|m> representation
  <math|\<rho\>> (III.9: path data, clip, activities, budget point,
  <math|\<beta\>>, <math|v>) is <em|admissible for <math|<around|(|N,p|)>>>
  if:

  <\itemize-minus>
    <item>its path data are <math|P<rsup|\<cal-R\>><rsub|N,m>>;

    <item>its budget point, clip and polymer bounds are those of level
    <math|m>: width <math|w<rsub|J<rsub|m>>>, path count
    <math|\<varpi\><rsub|J<rsub|m>>>, loop cap
    <math|2*M<rsub|m><rsup|\<theta\><rsub|J<rsub|m>>>>, allowances
    <math|<wide|\<beta\>|^><rsub|m><rsup|-11/10>> and
    <math|e<rsup|-M<rsub|m><rsup|1/5>>>;

    <item>it passes the retention test.
  </itemize-minus>

  <em|Continuous families.> A family <math|x\<mapsto\>\<rho\><rsub|x>> on an
  interval is <em|continuous> if:

  <\itemize-minus>
    <item><math|\<beta\>> and <math|v> are continuous in <math|x>;

    <item>the address sets of the regular and forced activities do not depend
    on <math|x>;

    <item>differences of regular activities tend to zero in the sum of budget
    masses of their derivative bounds, up to the budget order on the healthy
    domain; differences of forced activities tend to zero in the sum of
    budget masses of their uniform bounds over all configurations.
  </itemize-minus>

  <em|Hypotheses.> Assume that for every <math|N> and <math|p>:

  <\itemize-minus>
    <item><strong|(start)> There is a continuous family
    <math|\<beta\>\<mapsto\>\<rho\><rsub|\<beta\>>>,
    <math|\<beta\>\<in\>\<frak-B\><rsub|N>>, of admissible level-<math|N>
    representations. Each <math|\<rho\><rsub|\<beta\>>> has coupling
    <math|\<beta\>>, <math|v=0>, density equal to the Wilson weight at
    <math|\<beta\>>, and passes the start test.

    <item><strong|(advance)> Let <math|m\<less\>N> and <math|l\<leqslant\>u>,
    and let <math|x\<mapsto\>\<rho\><rprime|'><rsub|x>>,
    <math|x\<in\><around|[|l,u|]>>, be a continuous family of admissible
    level-<math|<around|(|m+1|)>> representations with
    <math|\<beta\><around|(|\<rho\><rprime|'><rsub|x>|)>\<in\>\<frak-B\><rsub|m+1>>
    for all <math|x>. Then there is a continuous family
    <math|x\<mapsto\>\<rho\><rsub|x>> of admissible level-<math|m>
    representations such that, for every <math|x>:

    <\itemize-minus>
      <item>the density of <math|\<rho\><rsub|x>> is the block-spin
      push-forward of the density of <math|\<rho\><rprime|'><rsub|x>> at
      coupling <math|\<beta\><around|(|\<rho\><rprime|'><rsub|x>|)>>;

      <item><math|<around|\||\<beta\><around|(|\<rho\><rprime|'><rsub|x>|)>-\<beta\><around|(|\<rho\><rsub|x>|)>-\<kappa\>*log
      L<rsub|m>|\|>\<leqslant\>\<omega\><rsub|J<rsub|m+1>>>;

      <item>the transition test holds.
    </itemize-minus>
  </itemize-minus>

  <em|Conclusion.> There are representations <math|\<rho\><rsub|N,p,m>>,
  <math|0\<leqslant\>m\<leqslant\>N>, for all <math|N,p>, such that:

  <\itemize-minus>
    <item>every <math|\<rho\><rsub|N,p,m>> is admissible with
    <math|\<beta\><rsub|N,p,m>\<in\>\<frak-B\><rsub|m>>;

    <item><math|\<rho\><rsub|N,p,N>> is the Wilson weight with <math|v=0>;

    <item>consecutive levels are related as in (advance);

    <item><math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>;

    <item>the path data at <math|<around|(|N,m|)>> do not depend on <math|p>.
  </itemize-minus>

  The resulting history is <em|selected> in the sense of III.9.3. In
  particular it obeys the running law: for every
  <math|\<varepsilon\>\<gtr\>0> there is <math|m<rsub|0>> such that
  <math|<around|\||\<beta\><rsub|N,p,m>-<wide|\<beta\>|^><rsub|m>|\|>\<leqslant\>\<varepsilon\>*s<rsub|m>>
  for all <math|m\<geqslant\>m<rsub|0>>, <math|N\<geqslant\>m> and all
  <math|p>.

  <em|Status:> theorem, conditional on (start) and (advance).

  <\itemize-minus>
    <item>In the main chain both are verified in III.10
    (<hlink|<verbatim|Graces.winnow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50>):

    <\itemize-minus>
      <item>(start) from the Wilson start-up curves of III.9
      (<hlink|<verbatim|hops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L21-L27>);

      <item>(advance) from the one-step construction with coupling reset
      (<hlink|<verbatim|Mallow.faces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Mallow/Pediment.lean#L41-L45>).
    </itemize-minus>

    <item>The drift hypothesis is derived from III.2.2 by
    <hlink|<verbatim|Drifting.pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79>.

    <item>A second route, through the step program of III.1/III.9
    (<hlink|<verbatim|Directed.Program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72>),
    is not used by the main theorem.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Recipe.races>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82>,
  <hlink|<verbatim|Recipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L67-L71>,
  <hlink|<verbatim|Lives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L74-L79>,
  <hlink|<verbatim|Curve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L51-L57>,
  <hlink|<verbatim|Recipe.Relays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L88-L91>,
  <hlink|<verbatim|Recipe.Starter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L93-L96>,
  <hlink|<verbatim|Recipe.Issues>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L99-L106>,
  <hlink|<verbatim|Drifting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L70-L71>,
  <hlink|<verbatim|History.Selected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240>.

  <strong|Proposition III.2.4 (the joint purchase on one emitted factor).>

  <em|Hypotheses.> Assume:

  <\itemize-minus>
    <item><math|G> is simple;

    <item><math|K> is a kernel choice with branches at every patch;

    <item>order data <math|v> are given:

    <\itemize-minus>
      <item>a first stage <math|\<geqslant\>4>;

      <item>derivative orders <math|k<rsub|j>\<geqslant\>max
      <around|(|6,j|)>> and powers <math|q<rsub|j>\<geqslant\>max
      <around|(|2,j|)>>, both nondecreasing;

      <item>support exponents <math|a<rsub|j>>, nondecreasing and
      <math|\<geqslant\>100>;
    </itemize-minus>

    <item><math|Q:\<bbb-N\>\<to\>\<bbb-N\>> is nondecreasing with
    <math|Q\<geqslant\>1>;

    <item>the records <math|\<Omega\>> (<hlink|<verbatim|Contemple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L68-L71>)
    and <math|\<Delta\>> (<hlink|<verbatim|Decal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L18-L20>)
    are given, together with parameters <math|<around|(|\<xi\>,\<omega\><rsub|v>,\<omega\><rsub|t>|)>>
    and a degree-<math|300> interpolation tableau <math|\<theta\><rsub|1>> at
    parameter <math|\<xi\>> (<hlink|<verbatim|Tableau>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Cuts.lean#L18-L24>),
    and the contraction condition <hlink|<verbatim|sphere>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Purse.lean#L29>
    at these parameters; in particular <math|\<xi\>\<geqslant\>2>,
    <math|0\<less\>\<omega\><rsub|v>\<leqslant\>1> and
    <math|\<omega\><rsub|t>\<gtr\>0>;

    <item><math|\<pi\>> is a predicate on emitted factors (a <em|prediction>)
    that is prepaid at every sheet and price map.
  </itemize-minus>

  <em|Conclusion.> There exist:

  <\itemize-minus>
    <item>a sheet <math|s> with kernel <math|K> and the first stage, orders,
    powers and support exponents prescribed by <math|v>;

    <item>a price map <math|T>;

    <item>a real sequence <math|Y> and a nondecreasing real sequence
    <math|K<rprime|'>\<geqslant\>1>;

    <item>a floor <math|\<tau\>\<geqslant\>f<rsup|s>>.
  </itemize-minus>

  These are followed by the alternation below:

  <\quotation>
    for every floor sequence <math|k\<geqslant\>\<tau\>> (block factors exist
    for the sheet <math|s<rsub|k>>, which is <math|s> with floors <math|k>),
    and every choice of stage block factors <math|\<ell\>> for
    <math|s<rsub|k>>, there is a wage threshold <math|U> such that for every
    wage <math|w\<geqslant\>U> and every prescribed postage rate and exchange
    datum, there are post-<math|L> cost constants <math|F> such that for
    every positive sequence <math|\<theta\><rsup|0>> there is a smallness
    exponent <math|\<theta\>\<leqslant\>\<theta\><rsup|0>> such that for
    every prescribed menu, auxiliary record and delay <math|T<rsub|0>> there
    is a delay <math|V\<geqslant\>T<rsub|0>> such that for every delay
    <math|V<rprime|'>\<geqslant\>V>, every barrier
    <math|<wide|\<beta\>|\<bar\>>> for <math|V<rprime|'>> and every wait
    <math|W>, there is a wait <math|Z\<geqslant\>W> such that for every wait
    <math|W<rprime|'>\<geqslant\>Z> and every level system <math|a> that
    meets the entrance conditions of <math|W<rprime|'>> (III.2.2(a)\U(d),
    with (e)\U(f)) and whose periods have the divisibility property, there
    exist a directed datum <math|B> on <math|a> (kinetic data and a recipe on
    the level system <math|a>) and an emitted factor <math|X> such that:

    <\itemize-minus>
      <item><math|X> records all these choices;

      <item><math|\<pi\><around|(|X|)>> holds;

      <item>all requirements listed below hold.
    </itemize-minus>
  </quotation>

  The requirements (with the unit that defines each predicate) are:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|requirement>>|<cell|<strong|owner>>>|<row|<cell|wages,
  exchanges, menus and auxiliary records equal the prescribed data; postage
  rates do not exceed the prescribed rates>|<cell|III.10
  (<hlink|<verbatim|Factor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50>)>>|<row|<cell|<hlink|<verbatim|Degree>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Prices.lean#L84>,
  <hlink|<verbatim|Savvy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Shorn.lean#L32-L35>,
  <hlink|<verbatim|Roofing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/C/Ribbon.lean#L29>,
  <hlink|<verbatim|PaysW>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Ready.lean#L56>,
  <hlink|<verbatim|Spire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Hours.lean#L43>,
  <hlink|<verbatim|Wild>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Auvi/Entries.lean#L31>,
  tower bound <hlink|<verbatim|Tower.Sav>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Rent.lean#L25-L27>
  with <hlink|<verbatim|Canyon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Query.lean#L45>,
  <hlink|<verbatim|Cadre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes/Events.lean#L34-L39>>|<cell|III.12>>|<row|<cell|<hlink|<verbatim|AccordV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Tibetan.lean#L60>
  (with the sequence <math|Q>)>|<cell|III.11>>|<row|<cell|kinetic data at the
  top level (<hlink|<verbatim|AtTop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L43>)>|<cell|III.9>>|<row|<cell|amplification
  (<hlink|<verbatim|Amplify>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train/Miracles.lean#L21-L26>)>|<cell|III.1>>|<row|<cell|support
  exponents <math|\<geqslant\>100> at every level>|<cell|this
  unit>>|<row|<cell|<math|exp <around|(|<around|(|a<rsub|j>+2|)>*<around|(|2<space|0.17em><math-up|span><rsub|i*j>+13|)><rsup|4>|)>\<leqslant\>\<ell\><rsub|i>>
  for all <math|i,j\<in\>\<bbb-N\>> with <math|j\<leqslant\>i\<leqslant\>j+1>>|<cell|this
  unit>>|<row|<cell|a bandage <math|b> (<hlink|<verbatim|Bandage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Stage/Iris.lean#L21-L35>,
  III.10) with the extras <math|<around|(|\<Omega\>,\<Delta\>,b|)>>
  (<hlink|<verbatim|Extras>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L45-L48>)>|<cell|III.15>>>>>

  Here <math|<math-up|span><rsub|i*j>\<in\>\<bbb-N\>> is the factor's
  transition support parameter; the exponent is given by
  <hlink|<verbatim|base>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L58>
  and <hlink|<verbatim|toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE/Geometry.lean#L50>.

  The bandage also supplies the conditional family package of
  <hlink|<verbatim|Unlatched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L25-L34>
  with a vacuous additional conclusion; the family hypotheses are those
  stated in III.2.5.

  <em|Status:> theorem. The estimates hold on the same emitted factor, with
  the displayed order of choice. The hypotheses <math|\<Omega\>>,
  <math|\<Delta\>>, <math|\<theta\><rsub|1>>,
  <math|<around|(|\<xi\>,\<omega\><rsub|v>,\<omega\><rsub|t>|)>> and <math|v>
  are constructed in the final assembly III.2.7, or supplied there by III.14.
  The version without a prediction is <hlink|<verbatim|richFares>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L88-L91>.
  <em|Lean:> <hlink|<verbatim|richFaresWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85>,
  built on <hlink|<verbatim|joinRadarsShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L133-L144>
  and <hlink|<verbatim|joinExpensesShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119>.

  <strong|Proposition III.2.5 (the plentiful construction).> Assume the
  hypotheses of III.2.4 and <math|Q<rsub|i>\<geqslant\>2>. Then its
  conclusion holds with the following additional clause. Consider any
  trajectory compatible with the emitted factor, any reference levels
  <math|t<around|(|d|)>> with <math|d+3\<leqslant\>J<rsub|t<around|(|d|)>>>,
  any section-transfer data and any gauge-door data between consecutive
  levels. Assume that the resulting family satisfies the family-consistency
  conditions, that its gauge doors satisfy the step compatibility conditions,
  and that its section transfers satisfy the prescribed bounds from level
  <math|t<around|(|d|)>> whenever <math|t<around|(|d|)>\<leqslant\>N>. Then,
  for every extraction order <math|f>, the family satisfies the complete
  weak-continuum requirement (<hlink|<verbatim|CompleteWeak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35>,
  III.11) and the trace gallery (<hlink|<verbatim|Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44>,
  VII.2). These are the hypotheses and additional conclusion of
  <hlink|<verbatim|Unlatched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L25-L34>.
  The floors, delays and waits may increase, and the prediction is retained.
  <em|Status:> theorem. This is where the requirements of the trace test
  (Part VII) are bought on the same constants as the ultraviolet estimates.
  <em|Lean:> <hlink|<verbatim|plentifulWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81>,
  <hlink|<verbatim|plentiful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L84-L87>
  (vacuous prediction).

  <strong|Proposition III.2.6 (a prediction on the same factor).> Let
  <math|G> be simple, let <math|s> carry the estimate package of Lemma 4.16
  for fixed tariff and scope, and let <math|\<tau\>\<gtr\>0>. Let
  <math|\<pi\>> be a prediction that is <em|prepaid> at the price map of
  <math|s>, in the following sense.

  <\itemize-minus>
    <item>For every choice of targets with the canonical chart, expenses with
    prescribed deficit <math|-7/16>, programs, initial wages and baton, there
    is a length floor <math|u>.

    <item>For every floor <math|l\<geqslant\>u>, every choice of block
    factors, wages, duration bounds, register, postage, scouts, protection,
    step records and post-<math|L> costs, and every delay <math|V>, there is
    a delay <math|W\<geqslant\>V>. The step records must have
    <math|\<varepsilon\>\<leqslant\>1/4> on transitions whose output stage is
    at least the first stage.

    <item>For every delay <math|W<rprime|'>\<geqslant\>W>, every barrier,
    wait, pricing record and directed datum, and every choice of the
    remaining factor data, <math|\<pi\>> holds on the assembled factor if its
    shelter and step conditions hold and its periods have the divisibility
    property.
  </itemize-minus>

  Then the complete native purchase of Lemma 4.17 can be carried out so that,
  on level systems with divisible periods, <math|\<pi\>> holds on the factor
  it emits. The original floor is replaced by its maximum with <math|u>. The
  delay <math|W> is chosen before the original booth and final delay.
  <em|Status:> theorem. In the main-theorem closure it is used only with the
  vacuous prediction (<hlink|<verbatim|Always>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedPredictionSupply.lean#L16>):
  the only caller of III.2.7 passes it. <em|Lean:>
  <hlink|<verbatim|company>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106>,
  <hlink|<verbatim|Prepaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L30-L42>,
  <hlink|<verbatim|Prediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L23-L24>,
  <hlink|<verbatim|AllPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedPredictionSupply.lean#L13-L14>.

  <strong|Proposition III.2.7 (the complete run).>

  <em|Inputs.> Let <math|G> be simple and <math|b\<gtr\>0> (the kernel
  penalty). Let the following records be given: <math|\<Omega\>>,
  <math|\<Delta\>> and a custody request <math|\<cal-H\>>. Let
  <math|\<Lambda\>> be a property of level systems that is <em|eventually
  paid> (III.2.8(a)). Let a <em|demand> be given:

  <\itemize-minus>
    <item>for every sheet <math|s> and price map <math|q>, a nonempty set of
    choices <math|c>;

    <item>for each choice <math|c>, a floor
    <math|e<rsub|c>:\<bbb-N\>\<to\>\<bbb-N\>>;

    <item>a real array <math|F<rsub|c><around|(|n,i|)>>;

    <item>a real array <math|F<rprime|'><rsub|c><around|[|\<ell\>|]><around|(|n,i|)>>,
    which may depend on the block-factor sequence <math|\<ell\>>.
  </itemize-minus>

  <em|Conclusion.> There is a run <math|\<cal-R\>> (the record of the whole
  construction, III.12) with a campaign such that:

  <\itemize-minus>
    <item>(a) the kernel penalty is <math|b>;

    <item>(b) <em|preselection:> there are <math|s,q,c> and a floor
    <math|n\<geqslant\>max <around|(|f<rsup|s>,e<rsub|c>|)>> such that:

    <\itemize-minus>
      <item><math|\<cal-R\>> uses the sheet <math|s> with floors <math|n> and
      the price map derived from <math|q>;

      <item>both arrays are paid in the sense of III.2.8(b) on the level
      system of <math|\<cal-R\>>, with <math|F<rprime|'>> evaluated at the
      actual block factors <math|\<ell\><rsup|\<cal-R\>>>;

      <item><math|F<rprime|'><rsub|c><around|[|\<ell\><rsup|\<cal-R\>>|]><around|(|0,J<rsub|m+1>|)>\<leqslant\><wide|\<beta\>|^><rsub|m>>
      for all <math|m>;
    </itemize-minus>

    <item>(c) <math|k<rsub|j>\<geqslant\>j> and <math|q<rsub|j>\<geqslant\>j>
    at every stage;

    <item>(d) <math|\<Lambda\>> holds;

    <item>(e) the treasury of III.2.8(d) is funded;

    <item>(f) the common-period purchase is funded;

    <item>(g) the campaign has pillars, the funded, news and read-out records
    hold, and the custody and sky clauses hold.
  </itemize-minus>

  There is also a version in which any prediction prepaid at every sheet and
  price map holds on the factor of the run; the intermediate factor theorem
  below supplies it. <em|Status:> theorem. Its only caller in the main
  closure is III.14 (<hlink|<verbatim|constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>),
  which passes:

  <\itemize-minus>
    <item><math|\<Lambda\>\<equiv\>> true;

    <item>the demand of its native component recipe: a floor and the
    pre-<math|L> and post-<math|L> arrays;

    <item>concrete <math|\<Omega\>,\<cal-H\>,\<Delta\>>;

    <item>the vacuous prediction.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114>,
  <hlink|<verbatim|PostnumericPreselection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L31-L46>,
  <hlink|<verbatim|allFactorWithTreasuryPeriod_preselected_quote_orders_postnumeric_of_prediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L44-L179>.

  <strong|Proposition III.2.8 (purchases that persist under all later
  choices).>

  <em|(a) Eventually paid properties.> A property <math|U> of level systems
  is <em|eventually paid> if the following holds. For every sheet, block
  factors, smallness exponent and delay <math|V> there is a delay
  <math|X\<geqslant\>V> such that every level system meeting the entrance
  conditions of any delay <math|W\<geqslant\>X> (with any barrier and wait)
  satisfies <math|U>. A conjunction of two eventually paid properties is
  eventually paid.

  <em|(b) Diagonal payment of constants.> For every real array
  <math|F<around|(|n,i|)>>, the following property is eventually paid. At
  every level <math|m>, <math|1\<leqslant\>1+log log
  <wide|\<beta\>|^><rsub|m>>. For every <math|n> there is <math|m<rsub|n>>
  such that

  <\equation*>
    <around|\||F<around|(|n,i|)>|\|>\<leqslant\>1+log log
    <wide|\<beta\>|^><rsub|m><space|2em><text|for all
    >m\<geqslant\>m<rsub|n><text| and all >i\<leqslant\>J<rsub|m+1>.
  </equation*>

  Likewise, for every <math|F:\<bbb-N\>\<to\>\<bbb-R\>>, the property
  "<math|F<around|(|J<rsub|m+1>|)>\<leqslant\><wide|\<beta\>|^><rsub|m>> for
  all <math|m>" is eventually paid.

  <em|(c) Countably many step requests.> Fix a countable index set with an
  encoding in <math|\<bbb-N\>>, and let <math|<around|(|w<rsub|\<alpha\>>|)>>
  be a family of requests indexed by it. Each request consists of a floor
  <math|<math-up|pre><rsub|\<alpha\>>:\<bbb-N\>\<to\>\<bbb-N\>> and a cost
  function of a stage transition <math|<around|(|j,i|)>>, its block geometry
  and a stage record; at step <math|m> the record is
  <math|X<rsub|J<rsub|m>>>. Then there is a single floor
  <math|<math-up|pre>>, depending only on the family, with the following
  property. If <math|\<ell\><rsub|j>\<geqslant\><math-up|pre><around|(|j|)>>
  for all <math|j>, then every delay can be raised so that every later level
  system satisfying the entrance conditions for the enlarged delay, with any
  barrier and wait, satisfies, for all <math|\<alpha\>> and <math|n> with
  <math|<math-up|code><around|(|\<alpha\>|)>\<leqslant\>J<rsub|n>> and all
  <math|m\<geqslant\>n>:

  <\itemize-minus>
    <item><math|<math-up|pre><rsub|\<alpha\>><around|(|J<rsub|m+1>|)>\<leqslant\>L<rsub|m>>;

    <item>the cost of step <math|m> is at most <math|1+log <around|(|2+log
    <wide|\<beta\>|^><rsub|m>|)>>.
  </itemize-minus>

  <em|(d) The treasury.> For simple <math|G> and every kernel choice there is
  a <em|plan>. A plan fixes a naming of charges and, for every request, a
  dictionary of finite words and spectra. If the block factors exceed the
  plan's floor, then every delay can be raised so that every later level
  system satisfying its entrance conditions is <em|treasury funded>: it meets
  the step requests of the plan (as in (c)) and the inverse charge from level
  0 on.

  <em|Status:> theorems. Dictionaries are chosen once, before the block
  factors, and never reselected. <em|Lean:>
  <hlink|<verbatim|EventuallyPaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Clock.lean#L36-L38>,
  <hlink|<verbatim|postnumeric_quote_diagonal_pair_requests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L31-L39>,
  <hlink|<verbatim|eventuallyPaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79>,
  <hlink|<verbatim|PaidRequests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L45-L48>,
  <hlink|<verbatim|StagePaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePostLengthPayment.lean#L19-L20>,
  <hlink|<verbatim|minDelay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L68-L77>,
  <hlink|<verbatim|Need>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L33-L35>,
  <hlink|<verbatim|Affords>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L43-L45>,
  <hlink|<verbatim|Plan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L18-L20>,
  <hlink|<verbatim|plan_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L28-L31>,
  <hlink|<verbatim|buy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L42-L64>,
  <hlink|<verbatim|TreasuryFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L35-L38>.

  <strong|Proposition III.2.9 (analytic estimates used by the purchases).>
  The row and cross norms are componentwise exponentially weighted
  <math|\<ell\><rsup|1>> bounds on displacement kernels. Multilinear kernels
  use the corresponding sum over displacements and colour indices. The colour
  spaces are fixed and finite; constants may depend on them. A cross maps
  coarse fields to fine fields at block size <math|L>. All vanishing orders
  refer to the Fourier symbol at zero momentum.

  <\itemize-minus>
    <item><em|Pullback gain.> For <math|\<sigma\>,\<tau\>\<gtr\>0>,
    <math|C\<in\>\<bbb-R\>> and <math|d\<in\>\<bbb-N\>>, there are
    <math|0\<less\>\<eta\>\<leqslant\>\<sigma\>> and <math|K\<geqslant\>0>
    such that, for every positive odd integer <math|L> with
    <math|\<tau\>\<leqslant\>L*\<eta\>>, the following holds. If
    <math|<around|\<\|\|\>|A|\<\|\|\>><rsub|\<tau\>>\<leqslant\>C/L>,
    <math|<around|\<\|\|\>|\<nabla\><rsup|s>*B|\<\|\|\>><rsub|\<tau\>>\<leqslant\>C/L<rsup|1+<around|\||s|\|>>>
    for every list of coordinate differences with
    <math|<around|\||s|\|>\<leqslant\>d>, and <math|R> has
    <math|<around|\<\|\|\>|R|\<\|\|\>><rsub|\<sigma\>>\<leqslant\>M> with
    <math|M\<geqslant\>0> and vanishes to order <math|d>, then
    <math|<around|\<\|\|\>|A<rsup|<math-ss|T>>*R*B|\<\|\|\>><rsub|\<tau\>>\<leqslant\>K*M*L<rsup|2-d>>.
    <hlink|<verbatim|pullback_gain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Pullback.lean#L56-L110>

    <item><em|Contraction of Hessian differences.> For
    <math|\<sigma\>,\<tau\>\<gtr\>0> and <math|C\<in\>\<bbb-R\>>, there is
    <math|N\<in\>\<bbb-N\>> such that, for every positive odd
    <math|L\<geqslant\>N>, crosses <math|A,B> obeying the preceding bounds
    through order <math|3>, and a row <math|R> on one-form components with
    <math|M\<geqslant\>0>, <math|<around|\<\|\|\>|R|\<\|\|\>><rsub|\<sigma\>>\<leqslant\>M>
    and vanishing order <math|3>, one has
    <math|<around|\<\|\|\>|A<rsup|<math-ss|T>>*R*B|\<\|\|\>><rsub|\<tau\>>\<leqslant\>M*L<rsup|-1/2>>.
    <hlink|<verbatim|large_contraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/KStep.lean#L130-L146>

    <item><em|Soft transfer of multilinear kernels.> For
    <math|r,d\<in\>\<bbb-N\>>, <math|\<sigma\>,w\<gtr\>0> and
    <math|C\<geqslant\>0>, there are <math|0\<less\>\<eta\>\<leqslant\>\<sigma\>>
    and <math|K\<geqslant\>0>, fixed before <math|L>, with the following
    property. Let <math|F> be a real <math|<around|(|r+1|)>>-linear
    coefficient kernel with width <math|\<sigma\>> and bound <math|B>,
    supported on tuples whose first site is the origin, and vanishing to
    order <math|d> in the independent momenta. Let <math|L> be positive and
    odd with <math|<around|(|r+2|)>*w\<leqslant\>L*\<eta\>>, and let <math|Q>
    satisfy <math|<around|\<\|\|\>|\<nabla\><rsup|i>*Q|\<\|\|\>><rsub|<around|(|r+2|)>*w>\<leqslant\>C/L<rsup|1+<around|\||i|\|>>>
    for every list <math|<around|\||i|\|>\<leqslant\>d>. The transfer through
    <math|r+1> copies of <math|Q>, followed by symmetrization and
    recentering, has width <math|w> and bound
    <math|K*B*L<rsup|4>/L<rsup|r+1+d>>. <hlink|<verbatim|flow_soft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ballast/Slide.lean#L44-L90>

    <item><em|Division by differences.> Fix a finite coordinate set <math|I>,
    <math|n\<in\>\<bbb-N\>> and <math|\<sigma\>\<gtr\>0>. There are
    <math|0\<less\>\<eta\>\<leqslant\>\<sigma\>> and <math|K\<geqslant\>0>
    such that, for every <math|A\<geqslant\>0> and real kernel
    <math|f:\<bbb-Z\><rsup|I>\<to\>\<bbb-R\>> with
    <math|<big|sum><rsub|x>e<rsup|\<sigma\><around|\||x|\|><rsub|1>><around|\||f<around|(|x|)>|\|>\<leqslant\>A>
    whose symbol vanishes to order <math|n>, there are real kernels
    <math|g<rsub|b>>, indexed by <math|b:<around|{|1,\<ldots\>,n|}>\<to\>I>,
    with <math|<big|sum><rsub|x>e<rsup|\<eta\><around|\||x|\|><rsub|1>><around|\||g<rsub|b><around|(|x|)>|\|>\<leqslant\>K*A>
    and

    <\equation*>
      <wide|f|^><around|(|p|)>=<big|sum><rsub|b><around*|(|<big|prod><rsub|a=1><rsup|n><around|(|e<rsup|i*p<rsub|b<around|(|a|)>>>-1|)>|)>*<wide|g|^><rsub|b><around|(|p|)>
    </equation*>

    for every real momentum <math|p>. <hlink|<verbatim|real_difference_division>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Differences.lean#L46-L92>

    <item><em|Odd-part cancellation.> Fix a sequence of step scenes whose
    input coupling tends to infinity, leaves <math|M<rsub|i>>, a cutoff
    parameter <math|\<chi\>>, chart radii satisfying the logarithm-chart
    conditions, and fluctuation data <math|z<rsub|i>>. Let
    <math|H<rsub|i>=<frac|1|2>*log \<beta\><rsub|i><rsup|<math-up|out>>> and
    <math|\<eta\><rsub|\<ast\>,i>=e<rsup|-H<rsub|i>>>. Assume that the
    fluctuation bounds, the leaf weights and the third-derivative bounds
    <math|D<rsub|i>> have upper exponential rate <math|0> relative to
    <math|H<rsub|i>>; that eventually each leaf is a logarithmic term given
    by a masked regular activity whose expression in logarithmic coordinates,
    multiplied by the square of its threshold, has zero first derivative at
    <math|0> and derivatives through order <math|3> bounded by
    <math|D<rsub|i>> on the unit ball; that both <math|z<rsub|i>> and
    <math|-z<rsub|i>> lie in the healthy domain; and that both cutoffs equal
    <math|1> near the origin in the two deformation parameters. If
    <math|P<rsub|i><around|(|z<rsub|i>;y|)>> denotes the paved expansion,
    then, for every <math|\<varepsilon\>\<gtr\>0>, eventually

    <\equation*>
      <mid|\|>D<rsub|y><rsup|2>*<around*|(|P<rsub|i><around|(|z<rsub|i>;y|)>+P<rsub|i><around|(|-z<rsub|i>;y|)>|)><mid|\|><rsub|y=0><mid|\|>\<leqslant\>\<eta\><rsub|\<ast\>,i><rsup|<space|0.17em>2-\<varepsilon\>>.
    </equation*>

    Here an upper rate <math|a> means an eventual bound
    <math|e<rsup|r*H<rsub|i>>> for every <math|r\<gtr\>a>.
    <hlink|<verbatim|mirror_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Shape.lean#L54-L70>

    <item><em|Uniqueness of local read-out.> Fix a representation <math|R>, a
    degree-<math|d> frame and a section readable at the origin for the budget
    of <math|R>. Let <math|P,Q> be coefficient presentations in the
    prescribed format for the same <math|R>: their regular terms have
    supports containing the origin, vanish at the identity and have zero
    local degree-<math|d> projection on nonwrapping supports; their nonzero
    forced terms have supports containing the origin and satisfy the
    eligibility, support, gauge-invariance and measurability conditions.
    Suppose they have equal densities for this section and remainder bounds
    <math|a,b> with the same positive forced-term parameter. For every
    <math|m\<in\>\<bbb-N\>> with <math|10*<around|(|m*<around|(|4*B+2|)>+2*B|)>\<less\>n>,
    their coefficient vectors satisfy

    <\equation*>
      <around|\<\|\|\>|x<rsub|P>-x<rsub|Q>|\<\|\|\>><rsub|<math-up|coeff>>\<leqslant\>K<rsub|F,H>*e<rsup|-a<rsub|\<ast\>>*m>*<around|(|a+b|)>,
    </equation*>

    where <math|n> is the torus side, <math|B> and <math|a<rsub|\<ast\>>> are
    the cover size and support exponent of <math|R>, and <math|K<rsub|F,H>>
    depends on the frame and holonomy tests.
    <hlink|<verbatim|unique_part>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince/Unum.lean#L11-L42>
  </itemize-minus>

  Further linked estimates concern a post-block Hessian bound
  (<hlink|<verbatim|design>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Muse.lean#L35-L59>),
  extraction of cubic and quartic local coefficients
  (<hlink|<verbatim|tanker>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Reservoir.lean#L84-L118>),
  and asymptotic bounds for the trace insertion
  (<hlink|<verbatim|cloche>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Arc.lean#L16-L33>).
  <em|Status:> theorems, with the hypotheses above. The detailed scene,
  coefficient-format and norm interfaces are listed among the open points in
  section 7.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item>I.1: <math|\<kappa\>\<gtr\>0> for simple <math|G>
    (<hlink|<verbatim|slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>).

    <item>III.1 (interfaces):

    <\itemize-minus>
      <item>the scale sequence (<hlink|<verbatim|Schedule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34>),
      the calendar, its conditions and level systems
      (<hlink|<verbatim|Calendar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L64-L73>,
      <hlink|<verbatim|Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118>,
      <hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>);

      <item>histories, transfer and selection
      (<hlink|<verbatim|History>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206>,
      <hlink|<verbatim|Transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227>,
      <hlink|<verbatim|Selected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240>);

      <item>block control from the kernel's branches
      (<hlink|<verbatim|blocks_go>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72>);

      <item>the directed datum (<hlink|<verbatim|Directed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36>).
    </itemize-minus>

    <item>III.9: the reference couplings, threshold and band (III.9.2); the
    meaning of a selected history (III.9.3); the Wilson start-up.

    <item>III.10:

    <\itemize-minus>
      <item>the verification of the shooting hypotheses
      (<hlink|<verbatim|Graces.winnow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50>);

      <item>the divisible-period schedule
      (<hlink|<verbatim|Wait.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135>);

      <item>the emitted factor and bandage records.
    </itemize-minus>

    <item>III.9, III.11, III.12, III.15, VII.2: the predicates bought in
    III.2.4\UIII.2.5 (table in III.2.4) and their suppliers. This unit proves
    only that they hold on one common choice of constants. Their analytic
    content belongs to those units.

    <item>III.12: the run record (<hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>).
    III.14: the demand passed to III.2.7.

    <item>III.3, III.6 (probable): the free-kernel and stationary-branch
    estimates from which the sheet is built. The two entry points,
    <hlink|<verbatim|reapsY>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train/Wheels.lean#L77-L103>
    and <hlink|<verbatim|verdant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Mails.lean#L55-L94>,
    are themselves filed in this unit.

    <item>III.16: strip and Laurent norms, Taylor jets (for III.2.9).
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>The intermediate value theorem, in a refined form (Lemma 4.11).

    <item>Elementary asymptotics: <math|<around|(|log
    x|)><rsup|2>=o<around|(|x|)>>; polynomials in <math|log s> are
    <math|o<around|(|e<rsup|s>|)>>.

    <item>Diagonal enumeration of countably many requests.

    <item>For background on the order of choice and bare-coupling tuning in
    constructive RG:

    <\itemize-minus>
      <item>Choosing constants in a fixed order: first the constants of the
      step, then the block factor <math|L> large depending on them, then the
      coupling large depending on <math|L>. See Baªaban's papers on lattice
      gauge theories (Comm. Math. Phys. 1983\U1989) and
      Bauerschmidt\UBrydges\USlade, <em|Introduction to a renormalisation
      group method> (LNM 2242, 2019).

      <item>Tuning the bare coupling as a function of the cutoff so that the
      effective coupling at unit scale is fixed. Compare Gaw¦dzki\UKupiainen
      on the Gross\UNeveu and <math|\<phi\><rsup|4><rsub|4>> models (Comm.
      Math. Phys. 99, 102, 1985).
    </itemize-minus>

    Here the tuning is a nested-interval argument on continuous families
    (Ÿ4.3).
  </itemize-minus>

  <strong|Imported constants and hypotheses.>

  <\itemize-minus>
    <item><math|\<kappa\>> enters only through <math|\<kappa\>\<gtr\>0> and
    through the form <math|<wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+\<kappa\>*s<rsub|m>>.
    The shift of <math|\<beta\>> by <math|\<kappa\>*log L> up to error
    <math|\<omega\>> is part of the (advance) hypothesis of III.2.3, supplied
    in III.10.

    <item>The hypotheses (start) and (advance) of III.2.3.

    <item>In III.2.7, the records <math|\<Omega\>>, <math|\<cal-H\>>,
    <math|\<Delta\>> and the demand come from III.14. Inside the assembly,
    the kernel with penalty <math|b> comes from III.1
    (<hlink|<verbatim|Axial.viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>).
    The tableau and sphere data are constructed in the assembly.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  Choose the stage records and floors first, then the block factors
  <math|\<ell\><rsub|j>>, post-<math|L> costs and smallness exponents,
  delays, the barrier <math|<wide|\<beta\>|\<bar\>>>, and finally the wait.
  Increasing the appropriate threshold meets each requirement: the block
  factors dominate the stage constants, entry couplings pay later costs, and
  the wait provides comparison windows and large tori. Persistent
  requirements combine by taking maxima of floors and chaining delay and wait
  increases. This gives common constants for III.2.4\UIII.2.7.

  The stage index <math|J<rsub|m>> advances by at most one per level. It
  enters a stage only after its entry thresholds are met and stays there long
  enough for one prescribed comparison window. At each fixed stage the volume
  bill is bounded by a polynomial in <math|log s>, hence eventually by
  <math|e<rsup|s>>. Since <math|s<rsub|m>\<geqslant\>m*log 3>, this pays
  every later volume demand. One period offset pays the finitely many steps
  of the first plateau.

  For fixed <math|N,p>, start with the Wilson family over
  <math|<around|[|<wide|\<beta\>|\<bar\>>+<around|(|\<kappa\>/2|)>*s<rsub|N>,<wide|\<beta\>|\<bar\>>+2*\<kappa\>*s<rsub|N>|]>\<subset\>\<frak-B\><rsub|N>>.
  At each step the drift bound sends the endpoint couplings strictly beyond
  the endpoints of the next window. A refined intermediate value argument
  selects a smaller parameter interval on which the new family stays in that
  window, so the next step applies. At level <math|0> the window is
  <math|<around|{|<wide|\<beta\>|\<bar\>>|}>>. Summing the drifts upward from
  there and using <math|\<omega\><rsub|J<rsub|m+1>>\<leqslant\>log
  L<rsub|m>/J<rsub|m+1><rsup|2>> gives the running law uniformly in depth and
  volume.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Numerical existence lemmas><label|41-numerical-existence-lemmas>

  In sections 4.1\U4.2, <math|G> is simple and the data are those of III.2.1.

  <strong|Lemma 4.1 (large block factors).> For each stage <math|i> there is
  <math|M<rsub|i>> such that every odd <math|n\<geqslant\>M<rsub|i>>
  satisfies the conditions of III.2.1(2) at stage <math|i>. Hence the stage
  block factors <math|\<ell\><rsub|i>=2*max<rsub|j\<leqslant\>i> M<rsub|j>+1>
  exist. <em|Sketch:> below the first stage only oddness and the size floors
  are required. At later stages, the remaining conditions have the form
  <math|c/log n\<leqslant\>\<delta\>> with
  <math|\<delta\>\<in\><around|{|\<kappa\>/4,i<rsup|-2>|}>> and
  <math|\<delta\>\<gtr\>0>. Each holds for large <math|n> because <math|log
  n\<to\>\<infty\>>. The running maximum makes <math|\<ell\>> nondecreasing.
  <em|Lean:> <hlink|<verbatim|Rolls.eventually_large>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L55-L77>,
  <hlink|<verbatim|Rolls.exists_rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L79-L84>.

  <strong|Lemma 4.2 (smallness exponents).> For every positive sequence
  <math|\<alpha\>>, the running minimum <math|\<theta\><rsub|j>=min<rsub|i\<leqslant\>j>
  min <around*|(|<around|(|i+1|)><rsup|-1>,\<alpha\><rsub|i>|)>> is positive,
  nonincreasing, and satisfies <math|\<theta\><rsub|j>\<leqslant\>min
  <around|(|\<alpha\><rsub|j>,1/<around|(|j+1|)>|)>>. <em|Lean:>
  <hlink|<verbatim|Protection.exists_margin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L98-L111>.

  <strong|Lemma 4.3 (barrier).> For every <math|b>, take
  <math|<wide|\<beta\>|\<bar\>>=max <around|(|2,x<rsub|\<ast\>>,b,\<beta\><rsup|<math-up|ent>><rsub|j<rsub|0>>|)>>,
  where <math|x<rsup|-1/2>*e<rsup|<around|(|log log
  x|)><rsup|2>>\<leqslant\>1> for all <math|x\<geqslant\>x<rsub|\<ast\>>>.
  This is a barrier. <em|Sketch:> <math|<around|(|log
  y|)><rsup|2>\<leqslant\><frac|1|2>*y> for large <math|y>, applied with
  <math|y=log x>. <em|Lean:> <hlink|<verbatim|Bar.exists_above>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L19-L37>.

  <strong|Lemma 4.4 (the volume bill).> Define

  <\equation*>
    <math-up|bill><rsub|j><around|(|s|)>=S<rsub|j>*<around|(|1+c+c<rprime|'>|)><rsup|g<rsub|j>>+100*<around|(|c+1|)>+100*<around*|(|<around|(|j+3|)>*\<ell\><rsub|j>+1|)>,
  </equation*>

  where <math|c=<around|\<lceil\>|log<rsup|2><around|(|<wide|\<beta\>|\<bar\>>+\<kappa\>*s|)>|\<rceil\>>>
  and <math|c<rprime|'>=<around|\<lceil\>|log<rsup|2><around|(|<wide|\<beta\>|\<bar\>>+\<kappa\>*<around|(|s+log
  \<ell\><rsub|j>|)>|)>|\<rceil\>>>. For each fixed <math|j>,
  <math|<math-up|bill><rsub|j><around|(|s|)>\<leqslant\>e<rsup|s>> for all
  sufficiently large <math|s>. At <math|s=s<rsub|m>> with
  <math|j=J<rsub|m+1>> we have <math|c=B<rsub|m>>,
  <math|c<rprime|'>=B<rsub|m+1>> and <math|<around|(|j+3|)>*\<ell\><rsub|j>=R<rsub|m>>.
  So the bill is the sum of the three volume demands of III.2.2(c),(e).
  <em|Sketch:> <math|c,c<rprime|'>=O<around|(|<around|(|log s|)><rsup|2>|)>>,
  so the bill is bounded by a polynomial in <math|log s>. <em|Lean:>
  <hlink|<verbatim|Bar.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L43-L47>,
  <hlink|<verbatim|Bar.allocated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L64-L84>.

  <strong|Lemma 4.5 (entering a stage).> For each <math|j\<gtr\>j<rsub|0>>
  there is <math|n<rsub|j>> with the following property. For every level
  <math|m\<geqslant\>n<rsub|j>> and every <math|s\<geqslant\>m*log 3>:

  <\itemize-minus>
    <item><math|\<beta\><rsup|<math-up|ent>><rsub|j>\<leqslant\><wide|\<beta\>|\<bar\>>+\<kappa\>*s>;

    <item><math|\<sigma\><rsup|<math-up|ent>><rsub|j><around|(|<wide|\<beta\>|\<bar\>>|)>\<leqslant\>s>;

    <item><math|s\<gtr\>0>;

    <item><math|log \<ell\><rsub|j>\<leqslant\>s/j>;

    <item><math|<math-up|bill><rsub|j><around|(|s|)>\<leqslant\>e<rsup|s>>.
  </itemize-minus>

  <em|Sketch:> each condition holds for all large <math|s>. Take the largest
  of the thresholds, and <math|n<rsub|j>> with <math|n<rsub|j>*log 3> above
  it. <em|Lean:> <hlink|<verbatim|Bar.enters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L90-L106>.

  <strong|Lemma 4.6 (windows).> For each <math|j> there is <math|c<rsub|j>>
  such that, for all <math|k\<geqslant\>c<rsub|j>> and all <math|s> with
  <math|k*log 3\<leqslant\>s\<leqslant\>k*log \<ell\><rsub|j>>, we have
  <math|\<sigma\><rsup|<math-up|rdy>><rsub|j>\<leqslant\>s> and
  <math|h<rsub|j><around|(|s|)>\<leqslant\>k/2>. <em|Sketch:> for large
  <math|s>, <math|h<rsub|j><around|(|s|)>\<leqslant\>s/<around|(|2*log
  \<ell\><rsub|j>|)>> by sublinearity, and <math|s\<leqslant\>k*log
  \<ell\><rsub|j>>. <em|Lean:> <hlink|<verbatim|Wait.lead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L109-L127>.

  <subsection|4.2 The level schedule><label|42-the-level-schedule>

  <strong|Lemma 4.7 (exhaustion).> For any
  <math|b,c:\<bbb-N\>\<to\>\<bbb-N\>> there is
  <math|J<rprime|'>:\<bbb-N\>\<to\>\<bbb-N\>> with the following properties:

  <\itemize-minus>
    <item><math|J<rprime|'><rsub|0>=J<rprime|'><rsub|1>=0>,
    <math|J<rprime|'>> is nondecreasing, <math|J<rprime|'><rsub|i+1>\<leqslant\>J<rprime|'><rsub|i>+1>
    and <math|J<rprime|'>\<to\>\<infty\>>;

    <item><math|b<around|(|J<rprime|'><rsub|i+1>|)>\<leqslant\>i> whenever
    <math|J<rprime|'><rsub|i+1>\<gtr\>0>;

    <item>for every <math|i> there is <math|k\<in\>\<bbb-N\>>,
    <math|k\<geqslant\>c<around|(|i|)>> with <math|J<rprime|'>\<equiv\>i> on
    <math|<around|[|k-<around|\<lfloor\>|k/2|\<rfloor\>>,<space|0.17em>k+<around|\<lfloor\>|k/2|\<rfloor\>>|]>>.
  </itemize-minus>

  <em|Sketch:> set <math|a<rsub|0>=0> and
  <math|a<rsub|i+1>=a<rsub|i>+b*<around|(|i+1|)>+2*k<rsub|i>+1>, where
  <math|k<rsub|i>=c<around|(|i|)>+2*a<rsub|i>+1>. Put <math|J<rprime|'>=i> on
  <math|<around|[|a<rsub|i>,a<rsub|i+1>|)>>. Stage <math|i+1> starts at level
  <math|a<rsub|i+1>\<gtr\>b*<around|(|i+1|)>>. The window around
  <math|k<rsub|i>> lies in <math|<around|[|a<rsub|i>,a<rsub|i+1>|)>> because
  <math|k<rsub|i>/2\<geqslant\>a<rsub|i>> and
  <math|<tfrac|3|2>k<rsub|i>\<less\>a<rsub|i+1>>. <em|Lean:>
  <hlink|<verbatim|Program.exhaust>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L41-L84>.

  <strong|Lemma 4.8 (the schedule meets all entrance conditions; proof of
  III.2.2).>

  <em|Construction.>

  <\enumerate>
    <item>Apply Lemma 4.7 with <math|b<around|(|0|)>=0> and
    <math|b<around|(|i|)>=n<rsub|j<rsub|0>+i>> for <math|i\<gtr\>0> (Lemma
    4.5) and <math|c<around|(|i|)>=c<rsub|j<rsub|0>+i>> (Lemma 4.6), and set
    <math|J<rsub|m>=j<rsub|0>+J<rprime|'><rsub|m>>,
    <math|L<rsub|m>=\<ell\><rsub|J<rsub|m+1>>> and
    <math|s<rsub|m>=<big|sum><rsub|i\<less\>m>log L<rsub|i>>. Then
    <math|m*log 3\<leqslant\>s<rsub|m>\<leqslant\>m*log
    \<ell\><rsub|J<rsub|m>>>, using that <math|\<ell\>> and <math|J> are
    monotone.

    <item>Let <math|m<rsub|\<ast\>>> be such that
    <math|J<rprime|'><rsub|m>\<geqslant\>1> for
    <math|m\<geqslant\>m<rsub|\<ast\>>>. Put
    <math|M=n<rsub|min>+max<rsub|i\<leqslant\>m<rsub|\<ast\>>><math-up|bill><rsub|j<rsub|0>><around|(|s<rsub|i>|)>>
    and <math|n<rsub|p>=4*<around|(|M+p+1|)>>.
  </enumerate>

  <em|Verification.>

  <\itemize-minus>
    <item><em|Entry.> If <math|J<rsub|m+1>=j<rsub|0>>, then
    <math|\<beta\><rsup|<math-up|ent>><rsub|j<rsub|0>>\<leqslant\><wide|\<beta\>|\<bar\>>\<leqslant\><wide|\<beta\>|^><rsub|m>>.
    Otherwise <math|m\<geqslant\>n<rsub|J<rsub|m+1>>> and
    <math|s<rsub|m>\<geqslant\>m*log 3>, so Lemma 4.5 applies.

    <item><em|Volume off the first plateau.> There
    <math|<math-up|bill><rsub|J<rsub|m+1>><around|(|s<rsub|m>|)>\<leqslant\>e<rsup|s<rsub|m>>\<leqslant\>n<rsub|p>*e<rsup|s<rsub|m>>>.
    This gives (c), the cover condition, and the patch condition, the latter
    because sides increase with <math|m>.

    <item><em|Volume on the first plateau.> There
    <math|<math-up|bill><rsub|j<rsub|0>><around|(|s<rsub|m>|)>\<leqslant\>M\<less\>n<rsub|p>>.

    <item><em|Mesh.> For <math|m\<geqslant\>m<rsub|\<ast\>>>, Lemma 4.5 gives
    <math|log L<rsub|m>/s<rsub|m>\<leqslant\>1/J<rsub|m+1>\<to\>0>.

    <item><em|Windows.> At the level <math|k> given by Lemma 4.7 for stage
    <math|j=j<rsub|0>+i>, <math|s<rsub|k>> lies in the range of Lemma 4.6. So
    <math|h<rsub|j><around|(|s<rsub|k>|)>\<leqslant\>k/2>, and
    <math|J\<equiv\>j> on <math|<around|[|k-h<rsub|j><around|(|s<rsub|k>|)>,k+h<rsub|j><around|(|s<rsub|k>|)>|]>>.

    <item><em|Remaining conditions.> Monotonicity of
    <math|k<rsub|J<rsub|m>>,q<rsub|J<rsub|m>>,a<rsub|J<rsub|m>>> comes from
    the sheet. The drift and log-cost bounds come from Lemma 4.1, and the
    bounds on <math|\<theta\>> from Lemma 4.2. Block control comes from the
    kernel's branches.

    <item><em|Divisibility variant.> Given <math|c\<geqslant\>1> and
    <math|z>, the index <math|p=c*<around|(|M+z+1|)>-<around|(|M+1|)>\<geqslant\>z>
    gives <math|n<rsub|p>=4*c*<around|(|M+z+1|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Wait.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239>,
  <hlink|<verbatim|Program.book>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L89-L104>,
  <hlink|<verbatim|scaled_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L115-L121>,
  <hlink|<verbatim|scaled_upper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L123-L130>,
  <hlink|<verbatim|Wait.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135>.

  <subsection|4.3 Shooting><label|43-shooting>

  <strong|Lemma 4.9 (running law from the transfer inequality).> Consider a
  history on a level system of III.2.2 with
  <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>> and
  <math|<around|\||\<beta\><rsub|N,p,i+1>-\<beta\><rsub|N,p,i>-\<kappa\>*log
  L<rsub|i>|\|>\<leqslant\>\<omega\><rsub|J<rsub|i+1>>> for all
  <math|i\<less\>N>. Then it obeys the running law of III.2.3. <em|Sketch:>

  <\enumerate>
    <item>Since <math|<wide|\<beta\>|^><rsub|i+1>-<wide|\<beta\>|^><rsub|i>=\<kappa\>*log
    L<rsub|i>> and <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|^><rsub|0>>,
    induction upward from level 0 gives <math|<around|\||\<beta\><rsub|N,p,i>-<wide|\<beta\>|^><rsub|i>|\|>\<leqslant\>D<rsub|i>\<assign\><big|sum><rsub|k=1><rsup|i>\<omega\><rsub|J<rsub|k>>>.

    <item>Given <math|\<varepsilon\>\<gtr\>0>, choose <math|i<rsub|0>> with
    <math|J<rsub|i+1><rsup|-2>\<leqslant\>\<varepsilon\>/2> for
    <math|i\<geqslant\>i<rsub|0>>. Then <math|\<omega\><rsub|J<rsub|i+1>>\<leqslant\><frac|\<varepsilon\>|2>*log
    L<rsub|i>>, so <math|D<rsub|i>\<leqslant\>D<rsub|i<rsub|0>>+<frac|\<varepsilon\>|2>*<around|(|s<rsub|i>-s<rsub|i<rsub|0>>|)>>.

    <item>Finally <math|D<rsub|i<rsub|0>>\<leqslant\><frac|\<varepsilon\>|2>*s<rsub|i>>
    for large <math|i>, because <math|s<rsub|i>\<to\>\<infty\>>.
  </enumerate>

  The bound is uniform in <math|N\<geqslant\>i> and <math|p>. <em|Lean:>
  <hlink|<verbatim|trajectory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53>.

  <strong|Lemma 4.10 (gates).> Put <math|\<beta\><rsup|-><rsub|m>=<wide|\<beta\>|\<bar\>>+<frac|\<kappa\>|2>*s<rsub|m>>
  and <math|\<beta\><rsup|+><rsub|m>=<wide|\<beta\>|\<bar\>>+2*\<kappa\>*s<rsub|m>>.
  Then <math|<around|[|\<beta\><rsup|-><rsub|m>,\<beta\><rsup|+><rsub|m>|]>\<subset\>\<frak-B\><rsub|m>>,
  because <math|<wide|\<beta\>|\<bar\>>\<gtr\>0>. Suppose a level-<math|m>
  representation <math|\<rho\>> relays a level-<math|<around|(|m+1|)>>
  representation <math|\<rho\><rprime|'>>, and
  <math|\<omega\><rsub|J<rsub|m+1>>\<leqslant\><frac|\<kappa\>|4>*log
  L<rsub|m>>. Then:

  <\itemize-minus>
    <item>if <math|\<beta\><around|(|\<rho\><rprime|'>|)>=\<beta\><rsup|-><rsub|m+1>>,
    then <math|\<beta\><around|(|\<rho\>|)>\<leqslant\>\<beta\><rsup|-><rsub|m>-<frac|\<kappa\>|4>*log
    L<rsub|m>\<less\>\<beta\><rsup|-><rsub|m>>;

    <item>if <math|\<beta\><around|(|\<rho\><rprime|'>|)>=\<beta\><rsup|+><rsub|m+1>>,
    then <math|\<beta\><around|(|\<rho\>|)>\<geqslant\>\<beta\><rsup|+><rsub|m>+<frac|3*\<kappa\>|4>*log
    L<rsub|m>\<gtr\>\<beta\><rsup|+><rsub|m>>.
  </itemize-minus>

  The drift hypothesis follows from the entrance conditions and III.2.1(2),
  since <math|L<rsub|m>=\<ell\><rsub|J<rsub|m+1>>>. <em|Lean:>
  <hlink|<verbatim|floorBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57>,
  <hlink|<verbatim|ceilBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58>,
  <hlink|<verbatim|limits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L60-L68>,
  <hlink|<verbatim|gates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L81-L90>,
  <hlink|<verbatim|Drifting.pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79>.

  <strong|Lemma 4.11 (narrowing).> Let <math|x\<leqslant\>y> and let <math|f>
  be continuous on <math|<around|[|x,y|]>> with
  <math|f<around|(|x|)>\<leqslant\>d\<leqslant\>u\<leqslant\>f<around|(|y|)>>.
  Then there are <math|x\<leqslant\>z\<leqslant\>w\<leqslant\>y> with
  <math|f<around|(|z|)>=d>, <math|f<around|(|w|)>=u> and
  <math|f<around|(|<around|[|z,w|]>|)>\<subset\><around|[|d,u|]>>.
  <em|Sketch:> let <math|w> be the least point of
  <math|f<rsup|-1><around|(|u|)>\<cap\><around|[|x,y|]>> and <math|z> the
  greatest point of <math|f<rsup|-1><around|(|d|)>\<cap\><around|[|x,w|]>>;
  both sets are nonempty by the intermediate value theorem and compact by
  continuity. Suppose some <math|c\<in\><around|[|z,w|]>> has
  <math|f<around|(|c|)>\<less\>d>. Then the intermediate value theorem on
  <math|<around|[|c,w|]>> gives a point of <math|f<rsup|-1><around|(|d|)>>
  after <math|z>, a contradiction. Suppose instead
  <math|f<around|(|c|)>\<gtr\>u>. Then it gives a point of
  <math|f<rsup|-1><around|(|u|)>> before <math|w>, again a contradiction.
  <em|Lean:> <hlink|<verbatim|narrow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L18-L49>.

  <strong|Lemma 4.12 (nested intervals).> Fix <math|N,p> and assume (start),
  (advance) and the drift bound. One can choose intervals
  <math|I<rsub|m>=<around|[|l<rsub|m>,u<rsub|m>|]>>,
  <math|0\<leqslant\>m\<leqslant\>N>, with
  <math|I<rsub|N>=<around|[|\<beta\><rsup|-><rsub|N>,\<beta\><rsup|+><rsub|N>|]>>
  and <math|I<rsub|m>\<subset\>I<rsub|m+1>> for <math|m\<less\>N>, and
  partial trajectories <math|<around|(|\<rho\><rsup|x><rsub|i>|)><rsub|m\<leqslant\>i\<leqslant\>N>>
  for <math|x\<in\><around|[|l<rsub|m>,u<rsub|m>|]>>, such that:

  <\itemize-minus>
    <item><math|\<rho\><rsup|x><rsub|N>> is the start representation at bare
    coupling <math|x>;

    <item>every <math|\<rho\><rsup|x><rsub|i>> is admissible with
    <math|\<beta\><around|(|\<rho\><rsup|x><rsub|i>|)>\<in\>\<frak-B\><rsub|i>>;

    <item>consecutive levels relay;

    <item><math|x\<mapsto\>\<rho\><rsup|x><rsub|m>> is continuous;

    <item><math|\<beta\><around|(|\<rho\><rsup|l<rsub|m>><rsub|m>|)>=\<beta\><rsup|-><rsub|m>>
    and <math|\<beta\><around|(|\<rho\><rsup|u<rsub|m>><rsub|m>|)>=\<beta\><rsup|+><rsub|m>>.
  </itemize-minus>

  <em|Sketch:> downward induction.

  <\itemize-minus>
    <item>For <math|m=N>, restrict the start family to
    <math|<around|[|\<beta\><rsup|-><rsub|N>,\<beta\><rsup|+><rsub|N>|]>>.

    <item>For <math|m+1\<to\>m>, the family at level <math|m+1> has all
    couplings in <math|\<frak-B\><rsub|m+1>>, so (advance) yields a
    continuous family <math|\<rho\><rsup|x><rsub|m>>. By Lemma 4.10,
    <math|f<around|(|x|)>=\<beta\><around|(|\<rho\><rsup|x><rsub|m>|)>>
    satisfies <math|f<around|(|l<rsub|m+1>|)>\<less\>\<beta\><rsup|-><rsub|m>>
    and <math|f<around|(|u<rsub|m+1>|)>\<gtr\>\<beta\><rsup|+><rsub|m>>.

    <item>Lemma 4.11 gives <math|<around|[|l<rsub|m>,u<rsub|m>|]>> on which
    <math|f> maps onto <math|<around|[|\<beta\><rsup|-><rsub|m>,\<beta\><rsup|+><rsub|m>|]>\<subset\>\<frak-B\><rsub|m>>
    with the right endpoint values.
  </itemize-minus>

  The restriction is needed: (advance) applies only to families whose
  couplings lie in the band at every point. Only the continuity of
  <math|x\<mapsto\>\<beta\><around|(|\<rho\><rsup|x><rsub|m>|)>> enters the
  intermediate value argument. The other continuity clauses are carried
  because (advance) requires them at the next step. <em|Lean:>
  <hlink|<verbatim|steps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L112-L154>.

  <strong|Lemma 4.13 (endpoint and assembly; proof of III.2.3).> Since
  <math|s<rsub|0>=0>, we have <math|\<beta\><rsup|-><rsub|0>=\<beta\><rsup|+><rsub|0>=<wide|\<beta\>|\<bar\>>>.
  So <math|x=l<rsub|0>> gives a trajectory from level <math|N> to level 0
  with <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>. Choose one such
  trajectory for every <math|<around|(|N,p|)>>. Then:

  <\itemize-minus>
    <item>the path data are <math|P<rsup|\<cal-R\>><rsub|N,m>>, independent
    of <math|p>;

    <item>admissibility gives the budget, clip, polymer bounds and band
    membership;

    <item>(start) gives the Wilson weight with <math|v=0>;

    <item>the relays give the transfer identity and the drift inequality;

    <item>Lemma 4.9 gives the running law.
  </itemize-minus>

  Hence the history is selected. <em|Lean:>
  <hlink|<verbatim|successful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159>,
  <hlink|<verbatim|Competes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L95-L98>,
  <hlink|<verbatim|Recipe.races>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82>.

  <subsection|4.4 Persistent purchases and their
  composition><label|44-persistent-purchases-and-their-composition>

  <strong|Lemma 4.14 (composition rules).> Persistent numerical requirements
  can be combined in the following forms:

  <\itemize-minus>
    <item>(i) a floor <math|f> such that the requirement holds for every
    later block factor;

    <item>(ii) "for every delay <math|V> there is
    <math|V<rprime|'>\<geqslant\>V> such that every later delay, every
    barrier and wait, and every level system meeting those entrance
    conditions satisfy <math|P>";

    <item>(iii) the same with waits instead of delays.
  </itemize-minus>

  Floors combine by pointwise maximum. Suppliers of forms (ii) and (iii)
  combine by chaining, because the orders on delays and waits are transitive
  and the conclusions persist under raising. <em|Lean:>
  <hlink|<verbatim|postnumeric_quote_diagonal_pair_requests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L31-L39>,
  and the chains in <hlink|<verbatim|joinExpensesShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119>.

  <strong|Lemma 4.15 (diagonal payments; proof of III.2.8).>

  <\itemize-minus>
    <item>For (b), raise <math|\<beta\><rsup|<math-up|ent>><rsub|j>> to
    <math|max <around*|(|\<beta\><rsup|<math-up|ent>><rsub|j>,exp exp
    <around|(|1+<big|sum><rsub|n,i\<leqslant\>j><around|\||F<around|(|n,i|)>|\|>|)>|)>>.
    The entrance condition <math|\<beta\><rsup|<math-up|ent>><rsub|J<rsub|m+1>>\<leqslant\><wide|\<beta\>|^><rsub|m>>
    then bounds the partial sums at stage <math|J<rsub|m+1>> by <math|log log
    <wide|\<beta\>|^><rsub|m>>. Since <math|J\<to\>\<infty\>>, each fixed
    <math|n> satisfies <math|n\<leqslant\>J<rsub|m+1>> from some level on.

    <item>For the single-array form, raise
    <math|\<beta\><rsup|<math-up|ent>><rsub|j>> to <math|max
    <around|(|\<beta\><rsup|<math-up|ent>><rsub|j>,F<around|(|j|)>|)>>.

    <item>For (c), encode the requests. Take
    <math|<math-up|pre><around|(|j|)>=max<rsub|<math-up|code><around|(|\<alpha\>|)>\<leqslant\>j><math-up|pre><rsub|\<alpha\>><around|(|j|)>>.
    Raise <math|\<beta\><rsup|<math-up|ent>><rsub|j>> until the finitely many
    costs with <math|<math-up|code><around|(|\<alpha\>|)>\<leqslant\>j>,
    evaluated on the stage-<math|j> geometry, are below <math|1+log
    <around|(|2+log x|)>> for <math|x\<geqslant\>\<beta\><rsup|<math-up|ent>><rsub|j>>.

    <item>For (d), fix the plan before the block factors, apply (c) to its
    requests, and raise the delay once more for the inverse charge, whose
    block floor is zero.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|eventuallyPaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79>,
  <hlink|<verbatim|minDelay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L68-L77>,
  <hlink|<verbatim|buy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L42-L64>.

  <strong|Lemma 4.16 (the sheet).> Let <math|G> be simple, let <math|K> have
  branches at every patch, let the order data <math|v> satisfy the order
  conditions of III.2.4, and fix a sequence <math|C<rsub|j>\<geqslant\>1>.
  There are a sheet <math|s> with kernel <math|K> and the prescribed first
  stage, orders, powers and support exponents; two price maps <math|O,T>;
  real sequences <math|\<lambda\>,\<gamma\>> with
  <math|\<gamma\><rsub|j>\<gtr\>0>; and a nondecreasing sequence
  <math|K<rprime|'><rsub|j>\<geqslant\>1>. For every tariff and scope there
  is a floor <math|f\<geqslant\>f<rsup|s>> with the following properties.

  The sheet satisfies the stationary-path suitability conditions at stages
  <math|j\<geqslant\>j<rsub|0>> and the budget plans for
  <math|C,K<rprime|'>>. For every floor <math|n\<geqslant\>f> and every
  admissible block-factor sequence <math|\<ell\>>, there is a sequence
  <math|\<eta\>> satisfying the stationary budget-gap condition. For every
  post-<math|L> cost record <math|F> with <math|\<eta\><rsub|F>=\<eta\>>,
  <math|\<Gamma\><rsub|F>\<geqslant\>1> and
  <math|c<rsub|F>\<leqslant\>\<gamma\>>, every protection, additional tariff,
  nonnegative lower bound <math|z> and delay <math|A>, there are a delay
  <math|D\<geqslant\>A>, a transition-bound array bounded below by <math|z>,
  and two further transition arrays. Every later delay <math|E\<geqslant\>D>
  satisfies the pricing, ringing and comparison conditions. For every
  barrier, wait and level system meeting those entrance conditions, the
  budget and multisource conditions hold, and there are a Gaussian horizon
  and kinetic data with planned stationary paths, the Wilson top path, the
  cadre and amplification conditions, and the retained free and stationary
  data specified by the perceived-estimate package.

  <em|Sketch:> the free-kernel and stationary suppliers first fix widths and
  preliminary bounds. The sheet construction fixes clips and the prescribed
  orders; the startup suppliers enlarge path bounds and floors. The final
  profile construction raises drift allowances to dominate the stationary
  supplier's bounds and raises column bounds without changing widths, paths
  or the prescribed orders. After choosing <math|\<ell\>>, the stationary and
  multisource suppliers raise the delay and construct the kinetic data on
  each admitted level system. The retained data identify these kinetic paths
  with the revised stationary paths. <em|Lean:>
  <hlink|<verbatim|sailsW>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L97-L169>,
  <hlink|<verbatim|Perceived>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L63-L79>.
  <em|(proof read at the level of the composition)>

  <strong|Lemma 4.17 (the native purchase and prediction).> Let <math|G> be
  simple, fix the perceived-estimate package of Lemma 4.16 at a floor
  <math|v>, and let <math|\<tau\>\<gtr\>0>. There are a floor
  <math|j\<geqslant\>v>, programs, initial wages, targets, expenses and a
  baton, chosen before the block factors. The targets have the canonical
  chart and halo <math|500>; the expenses have the prescribed earnings,
  deficit <math|-7/16> and degree charge <math|0>.

  For every floor <math|l\<geqslant\>j>, admissible block factors exist. For
  every such choice there is a wage threshold. For every wage above it there
  are duration bounds, a register and auxiliary size bounds. For every
  postage cap there are postage rates at most that cap and scouts satisfying
  the register condition. For every exchange datum and tariff there are reset
  prices, reset bounds and post-<math|L> costs. For every positive sequence
  <math|\<theta\><rsup|0>> there are protection
  <math|\<theta\>\<leqslant\>\<theta\><rsup|0>> and step records with
  <math|\<varepsilon\>\<leqslant\>1/4> on transitions whose output stage is
  at least the first stage. For every menu and initial delay there are
  booths; for every auxiliary record there is an ordered delay above the
  initial delay.

  Every later delay, barrier, wait and admitted level system satisfies the
  budget and multisource conditions and carries a directed datum on that same
  system. Its shelter conditions hold at the two pairs of tolerances
  <math|<around|(|1/16,1/16|)>> and <math|<around|(|\<tau\>,\<tau\>|)>>, with
  the third tolerance <math|1/8> in both cases. It also has the top kinetic
  data, cadre, amplification, step conditions, origins and rank-covariance
  data. The offering condition additionally assumes divisible periods.

  <em|Sketch:> the shelter supplier gives the initial floor and data. A
  further floor pays the register's length requirement; a delay supplier
  supplies the step conditions before the booths are chosen. The shelter
  output then supplies the remaining data. For III.2.6, combine the
  prediction's floor <math|u> with <math|j> by maximum. Insert its delay
  before the booth delay; persistence then gives the prediction on the same
  emitted factor whenever the divisibility condition holds. <em|Lean:>
  <hlink|<verbatim|companyK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Linger.lean#L23-L51>
  <em|(proof read at the level of the composition)>;
  <hlink|<verbatim|company>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106>.

  <strong|Lemma 4.18 (proof of III.2.4 and III.2.5).> The proofs proceed in
  four steps.

  <\enumerate>
    <item><hlink|<verbatim|joinRadarsShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L133-L144>
    takes the sheet from Lemma 4.16 and calls
    <hlink|<verbatim|joinExpensesShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119>.
    That theorem starts from Lemma 4.17 and threads about thirty further
    suppliers through it:

    <\itemize-minus>
      <item>floor suppliers, joined into one floor;

      <item>delay suppliers <math|V\<leqslant\>V<rsub|1>\<leqslant\>\<ldots\>\<leqslant\>V<rsub|7>\<leqslant\>\<ldots\>\<leqslant\>w<rsub|6>\<leqslant\>\<ldots\>>,
      chained.
    </itemize-minus>

    <item><hlink|<verbatim|richFaresWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85>
    adds:

    <\itemize-minus>
      <item>additional costs and floors before choosing the block factors;

      <item>a cross-term floor, so the final floor is
      <math|<around|(|t\<vee\>L\<vee\>\<mu\>|)>\<vee\>> cross-floor;

      <item>shells raised to <math|max <around|(|S<rsub|j>,\<cdot\>|)>>, the
      mesh and installment delays, and a wait enlargement.
    </itemize-minus>

    <item><hlink|<verbatim|plentifulWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81>
    adds:

    <\itemize-minus>
      <item>trace floors and the fixed trace-control floor;

      <item>trace delays, including a raise of the entry couplings;

      <item>two wait enlargements.
    </itemize-minus>

    It concludes with <hlink|<verbatim|Trace.Over.gang>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56>.

    <item>Floors are combined by maximum and delay and wait bounds by
    transitivity, as in Lemma 4.14. The final family conclusion uses the
    hypotheses of III.2.5.
  </enumerate>

  <em|(proof read at the level of the composition; the suppliers were not
  read)>

  <strong|Lemma 4.19 (the final assembly; proof of III.2.7).>
  <hlink|<verbatim|allFactor\<ldots\>>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L44-L179>
  makes the choices in order:

  <\enumerate>
    <item><em|Pre-<math|L> data.>

    <\itemize-minus>
      <item>Order data: <math|j<rsub|0>=4>, <math|k<rsub|j>=6+j>,
      <math|q<rsub|j>=2+j>, <math|a<rsub|j>=100>; and <math|Q<rsub|i>=i+2>.

      <item>A kernel with penalty <math|b>.

      <item>A tableau at a parameter <math|\<xi\>\<geqslant\>2> and sphere
      data with <math|\<omega\><rsub|v>=1/1024> and
      <math|0\<less\>\<omega\><rsub|t>\<leqslant\>1>. The contraction
      supplier chooses <math|\<omega\><rsub|t>>; its auxiliary constant
      <math|u\<geqslant\>0> satisfies <math|6*u*\<omega\><rsub|t>\<leqslant\>\<omega\><rsub|v>>.
    </itemize-minus>

    <item><em|The plentiful construction.> Apply III.2.5. Pick a choice
    <math|c> of the demand.

    <item><em|Block floor and block factors.> The block floor is the maximum
    of five floors: the plentiful floor, a density floor, the treasury floor,
    the period-plan floor and <math|e<rsub|c>>. Fix block factors, wages and
    post-<math|L> costs.

    <item><em|Smallness exponent and delays.> Take
    <math|\<theta\><rsup|0>\<equiv\>1> and initial data
    <math|\<beta\><rsup|<math-up|ent>>=\<sigma\><rsup|<math-up|ent>>=0>,
    <math|S<rsub|j>=g<rsub|j>=1>. Raise delays in this order: halo, step,
    thermal requests, <math|\<Lambda\>> and both demand arrays together with
    the all-stage payment of the zeroth post-<math|L> row, treasury, period
    plan, auxiliary budget, silk, custody, the delay of III.2.5, the quote
    bounds, and the header bounds.

    <item><em|Barrier.> Take <math|<wide|\<beta\>|\<bar\>>\<geqslant\>2>
    (Lemma 4.3).

    <item><em|Wait.> First apply the wait supplier of III.2.5 to a
    zero-window wait. Separately enlarge a slim wait for density bounds.
    Choose a common enlargement satisfying both waits and the required
    coverage bounds.

    <item><em|Level system.> Take the level system of the divisibility
    variant of III.2.2, and the factor from III.2.5.
  </enumerate>

  Finally <hlink|<verbatim|engageWithCustodyFactor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/PeriodConstruction.lean#L30-L47>
  builds the run from the factor. <em|(proof read at the level of the
  composition)>

  <subsection|4.5 The analytic lemmas><label|45-the-analytic-lemmas>

  <strong|Lemma 4.20 (mechanisms behind III.2.9).> Under the hypotheses of
  III.2.9, the estimates follow as follows.

  <\itemize-minus>
    <item><em|Division:> analytic division first gives complex coefficient
    packets on a smaller strip. Taking their real parts and using conjugation
    symmetry preserves the identity at real momenta and gives the stated real
    kernels.

    <item><em|Pullback gain:> divide <math|R> into terms with <math|d>
    forward differences and move those differences onto <math|B>. The two
    cross bounds contribute <math|L<rsup|-2>>, the sum over fine sites
    contributes <math|L<rsup|4>>, and the differences contribute
    <math|L<rsup|-d>>, giving <math|L<rsup|2-d>>.

    <item><em|Contraction:> apply the gain with <math|d=3> and choose
    <math|N\<gtr\>max <around|(|\<tau\>/\<eta\>,K<rsup|2>|)>>. Then
    <math|K/L\<leqslant\>L<rsup|-1/2>> for <math|L\<geqslant\>N>.

    <item><em|Multilinear transfer:> divide in the independent momenta and
    distribute the <math|d> differences among the <math|r+1> crosses. Their
    bounds contribute <math|L<rsup|-<around|(|r+1+d|)>>>; summing the free
    translation gives <math|L<rsup|4>>. The width reserve pays for
    symmetrization and recentering.

    <item><em|Odd-part cancellation:> reflection cancels the first odd
    contribution. The rate calculus controls the remaining second derivative
    with every exponent strictly below <math|2>. The second derivative of a
    function composed with <math|y\<mapsto\>-y> equals its original second
    derivative at <math|0>.

    <item><em|Local read-out:> subtract the presentations. Equality of
    densities expresses the coefficient difference as the difference of the
    regular remainders on the healthy domain. The local projection kills
    nonwrapping supports. A wrapping support has an exponentially small
    contribution, bounded using the side condition; finitely many test
    functionals then control the coefficient norm.
  </itemize-minus>

  <em|(proofs read at the level of the displayed declarations; the analytic
  division, transfer and local-projection inputs are not independently
  audited)>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  <\itemize-minus>
    <item><strong|Order and persistence.> Each floor must be fixed before the
    block factors that pay it. Costs depending on the chosen factors can be
    paid by later entry thresholds. Delay and wait suppliers must remain
    valid under all subsequent increases; otherwise chaining them does not
    give a common set of constants.

    <item><strong|Uniformity in depth and volume.> The constants and schedule
    are common to every <math|N,p>. The finite first plateau is handled by
    one period offset <math|M>, giving <math|n<rsub|p>=4*<around|(|M+p+1|)>>.
    Later volume conditions follow from the exponential growth of the side
    length.

    <item><strong|Continuity during shooting.> Each new interval must keep
    every member of the family inside the next coupling band. The
    nested-interval argument preserves this condition while fixing the
    endpoint couplings. It requires continuity of the full representation
    family at each new step.

    <item><strong|Two drift bounds.> The bound
    <math|\<omega\><rsub|j>\<leqslant\><around|(|\<kappa\>/4|)>*log
    \<ell\><rsub|j>> gives the shooting gates. The bound
    <math|\<omega\><rsub|j>\<leqslant\>log \<ell\><rsub|j>/j<rsup|2>> gives
    the running law. Both are paid after the stage constants are fixed.

    <item><strong|Eventual payment.> The entry thresholds can absorb any
    fixed real array, including one evaluated after the block factors are
    chosen. Each fixed row is paid eventually; a single level need not pay
    every row. The stronger all-stage condition for the zeroth post-<math|L>
    row is purchased separately.
  </itemize-minus>

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean>>|<cell|<strong|Meaning>>>|<row|<cell|sheet;
  stage record <math|X<rsub|j>>; first stage <math|j<rsub|0>>; floors
  <math|f<rsub|j>>>|<cell|<hlink|<verbatim|Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>,
  <hlink|<verbatim|Stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61>>|<cell|data
  fixed before the block factors>>|<row|<cell|<math|k<rsub|j>,q<rsub|j>,a<rsub|j>,w<rsub|j>,\<varpi\><rsub|j>,\<omega\><rsub|j>,\<gamma\><rsub|j>,r<rsub|j>>>|<cell|<verbatim|order>,
  <verbatim|power>, <verbatim|supportExponent>, <verbatim|width>,
  <verbatim|paths>, <verbatim|drift>, <verbatim|columns>,
  <verbatim|clip.relaxation>>|<cell|fields of the stage
  record>>|<row|<cell|<math|\<cal-C\><rsub|j>>>|<cell|(in
  <hlink|<verbatim|Large>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48>)>|<cell|<math|1+\<varpi\><rsub|j>+w<rsub|j><rsup|-1>+\<gamma\><rsub|j>+r<rsub|j>+a<rsub|j>>>>|<row|<cell|<math|\<ell\><rsub|j>>;
  <math|L<rsub|m>=\<ell\><rsub|J<rsub|m+1>>>>|<cell|<hlink|<verbatim|Rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50-L53>;
  <verbatim|Schedule.block>>|<cell|stage and step block
  factors>>|<row|<cell|<math|\<theta\><rsub|j>>>|<cell|<hlink|<verbatim|Protection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88-L92>>|<cell|smallness
  exponent of the loop cap>>|<row|<cell|<math|\<beta\><rsup|<math-up|ent>><rsub|j>,\<sigma\><rsup|<math-up|ent>><rsub|j><around|(|<wide|\<beta\>|\<bar\>>|)>,S<rsub|j>,g<rsub|j>>>|<cell|<hlink|<verbatim|Delays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L115-L120>>|<cell|entry
  thresholds, shells, growth>>|<row|<cell|<math|<wide|\<beta\>|\<bar\>>>>|<cell|<hlink|<verbatim|Bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L123-L127>>|<cell|barrier:
  coupling at level 0>>|<row|<cell|<math|\<sigma\><rsup|<math-up|rdy>><rsub|j>,h<rsub|j>,n<rsub|min>>>|<cell|<hlink|<verbatim|Wait>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L134-L139>>|<cell|readiness,
  windows, minimal period>>|<row|<cell|meets the entrance
  conditions>|<cell|<hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>>|<cell|III.2.2(a)\U(d)>>|<row|<cell|<math|<math-up|bill><rsub|j><around|(|s|)>>>|<cell|<hlink|<verbatim|Bar.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L43-L47>>|<cell|required
  sites per unit length>>|<row|<cell|<math|J<rprime|'>>,
  <math|J<rsub|m>=j<rsub|0>+J<rprime|'><rsub|m>>>|<cell|<hlink|<verbatim|Program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L22-L28>>|<cell|stage
  index>>|<row|<cell|<math|n<rsub|p>=4*<around|(|M+p+1|)>>>|<cell|<verbatim|Program.page>>|<cell|level-0
  side, with <math|M\<in\>\<bbb-N\>>>>|<row|<cell|recipe
  <math|\<cal-R\>>>|<cell|<hlink|<verbatim|Recipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L67-L71>>|<cell|path
  data and three tests>>|<row|<cell|admissible; relays;
  start>|<cell|<hlink|<verbatim|Lives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L74-L79>,
  <hlink|<verbatim|Relays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L88-L91>,
  <hlink|<verbatim|Starter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L93-L96>>|<cell|>>|<row|<cell|continuous
  family>|<cell|<hlink|<verbatim|Curve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L51-L57>,
  <hlink|<verbatim|deviation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L44-L49>>|<cell|>>|<row|<cell|(start)+(advance)>|<cell|<hlink|<verbatim|Recipe.Issues>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L99-L106>>|<cell|shooting
  hypotheses>>|<row|<cell|<math|\<frak-B\><rsub|m>>;
  <math|<around|[|\<beta\><rsup|-><rsub|m>,\<beta\><rsup|+><rsub|m>|]>>>|<cell|<hlink|<verbatim|band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63>;
  <hlink|<verbatim|floorBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57>,
  <hlink|<verbatim|ceilBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58>>|<cell|band;
  shooting window>>|<row|<cell|eventually
  paid>|<cell|<hlink|<verbatim|EventuallyPaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Clock.lean#L36-L38>>|<cell|III.2.8(a)>>|<row|<cell|plan;
  treasury funded>|<cell|<hlink|<verbatim|Plan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L18-L20>,
  <hlink|<verbatim|TreasuryFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L35-L38>>|<cell|III.2.8(d)>>|<row|<cell|emitted
  factor; prediction>|<cell|<hlink|<verbatim|Factor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50>,
  <hlink|<verbatim|Prediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L23-L24>>|<cell|record
  of all choices; predicate on it>>|<row|<cell|sheet with floors
  <math|n>>|<cell|<hlink|<verbatim|raise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Merchant.lean#L36>,
  <hlink|<verbatim|bountyV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L22-L23>>|<cell|>>|<row|<cell|order
  data <math|v>>|<cell|<hlink|<verbatim|Orders>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L64-L68>,
  <hlink|<verbatim|Draft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L70-L77>,
  <hlink|<verbatim|WithStage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L81-L85>>|<cell|>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Analytic content of the purchased conditions.> The
    common-choice statements III.2.4\UIII.2.7 and their quantifier order are
    verified against the displayed Lean interfaces. The predicates in the
    requirement table, the conditional family package, and the campaign's
    pillars, funding, news, custody and sky conditions are not fully expanded
    into mathematical estimates here. Their equivalence to the requirements
    stated in the owning units remains to be checked.

    <item><strong|Underlying suppliers.> The proofs composing the sheet,
    native, joint, plentiful and final-run constructions have been checked at
    their call sites. The proofs of the underlying analytic suppliers,
    including those used by the roughly thirty additions in the joint
    construction, are not independently verified here. The same limitation
    applies to the plan's dictionaries and inverse-charge supplier, and to
    the analytic division and projection results used in III.2.9.

    <item><strong|Auxiliary parameters.> <math|K<rprime|'>> is a
    nondecreasing sequence bounded below by <math|1>; the tableau is a finite
    interpolation rule of degree <math|300>; the sphere condition is a
    contraction estimate. The detailed analytic roles of <math|Y>, <math|Q>,
    wages, postage, exchanges, menus and the remaining auxiliary records
    still require identification in the step estimates.

    <item><strong|Drift normalization.> The sheet construction raises the
    drift allowance to dominate the stationary supplier's sequence. Its
    identification with the bound <math|1+D> used in III.9, including the
    relation between the constants attributed there to III.7 and III.13,
    remains unverified.

    <item><strong|Analytic interfaces.> The weighted summability and
    vanishing-order definitions, the first-site support condition in
    multilinear transfer, and the rate interpretation of odd-part
    cancellation have been checked. The full step-scene hypotheses of
    odd-part cancellation and the coefficient-format and readability
    conditions of local read-out still need an independent mathematical
    account. Only the statements of the supplementary Hessian, cubic/quartic
    extraction and trace-insertion estimates linked after III.2.9 were
    checked; their proofs remain outside this review.

    <item><strong|Scope of the source review.> The arithmetic construction,
    the divisibility argument, and the shooting proof are verified against
    the source. Other uses of the non-divisible period construction, the
    allocation of the supplementary analytic estimates to outline units, and
    the line-count breakdown given at the outset have not been independently
    checked.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.1 The block-spin step and the
  symmetric gauge fixing (notes)|III-1.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-2.tm>|<hlink|III.3 Free lattice kernels and
  covariances (notes) \<rightarrow\>|III-3.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.2. Choosing the constants: the order of choice,
    the level schedule and the shooting argument \V detailed notes \U
    Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|11>>
    <associate|3-strategy|<tuple|3|13>>
    <associate|4-steps|<tuple|4|13>>
    <associate|41-numerical-existence-lemmas|<tuple|4.1|13>>
    <associate|42-the-level-schedule|<tuple|4.2|14>>
    <associate|43-shooting|<tuple|4.3|15>>
    <associate|44-persistent-purchases-and-their-composition|<tuple|4.4|17>>
    <associate|45-the-analytic-lemmas|<tuple|4.5|20>>
    <associate|5-where-the-difficulty-lies|<tuple|5|20>>
    <associate|6-notation|<tuple|6|21>>
    <associate|7-what-remains-unexplained|<tuple|7|22>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|5|20>>
    <associate|auto-11|<tuple|6|21>>
    <associate|auto-12|<tuple|7|22>>
    <associate|auto-2|<tuple|2|11>>
    <associate|auto-3|<tuple|3|13>>
    <associate|auto-4|<tuple|4|13>>
    <associate|auto-5|<tuple|4.1|13>>
    <associate|auto-6|<tuple|4.2|14>>
    <associate|auto-7|<tuple|4.3|15>>
    <associate|auto-8|<tuple|4.4|17>>
    <associate|auto-9|<tuple|4.5|20>>
    <associate|iii2-choosing-the-constants-the-order-of-choice-the-level-schedule-and-the-shooting-argument--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Numerical existence lemmas
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The level schedule
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Shooting
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Persistent purchases and their
      composition <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The analytic lemmas
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>
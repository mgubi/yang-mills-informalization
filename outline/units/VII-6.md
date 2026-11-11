# VII.6. Scaling variants and fixed-field estimates

*Part VII — Identification as Yang–Mills.* 4,205 lines of Lean in 374 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is a **first draft**, written from the Lean by one model; it has not yet been checked. It is updated as it improves.


**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/TraceExtension/Prom/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom) (the "Sky" variants, 133 files), plus the single lemma [`SharpGram.inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129) in [`YM/SharpGram/Clauses.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean). **Size:** 4,205 lines in 374 declarations. Most of this is the Sky family, about 3,600 lines chained from `pays_sky`. `Prom/` itself is about 560 lines. The `inletFirst` chain is 43 lines.

The unit has two unrelated parts.

- **(A)** The "Sky" family. These are copies of the ultraviolet observable estimates in which the stopping stage of the renormalization group depends on a real parameter. This lets one realize an arbitrary prescribed sequence of scales $r_k\downarrow0$ as scales of a scaling limit.
- **(B)** One short lemma: observables of grade at most 3 satisfy the fixed-field supply condition.

The code uses arbitrary words for mathematical objects. Throughout I give the likely meaning and mark it (probable) or (tentative) where I inferred it from types and proofs.

## 1. What this unit proves

Setting. $G$ is a simple compact gauge group and $C$ is a Wilson family (III.13, II.2). $S$ is a table of limit correlators, a "phase" in the sense of IV.1 and V.1. $S.\mathrm{Field}(d)$ is the finite-dimensional space of limit fields of grade $d$ and $S.\mathrm{unit}(d)$ is the image of the unit. A *scaling* $X$ (a `Scaling`/`Zoom`) is a sequence of radii $r_k\downarrow0$ together with linear rescalings $U_k:\ S.\mathrm{Field}(d)\to S.\mathrm{Field}(d)$. A *scaling-limit path* (`StarPath`) is a scaling in which $U_k$ is realized by the lattice theory at a stage $k$ and a "vane" $V_k$ with radius exactly $r_k$ (see §6).

**Proposition VII.6.1 (every prescribed sequence of scales is realized).** Assume:
- $G$ is simple.
- The schedule satisfies the cost hypothesis `Scrim`.
- The "firing" property `FiresSky` holds in every grade $d$, with constants $z_d$ nondecreasing in $d$ and above the generator bounds of $G$.
- The reference dimension bound holds: $\dim S.\mathrm{Field}(d)\le\dim(\text{free reference})\mathrm{Field}(d)$ for all $d$ (`DimAbove`).
- $\mathcal L$ is an ultrafilter on $\mathbb N\times\mathbb N$ finer than the extraction filter.
- $s_i>0$ and $s_i\to0$.

Then there are a strictly increasing $f:\mathbb N\to\mathbb N$ and a scaling $X$ with $X.r=s\circ f$ such that $X$ is a scaling-limit path along $\mathcal L$. Concretely:
- $X$ approaches the free reference values (`Approaches`).
- The $U_k$ preserve the unit eventually and are coherent with the spin structures.
- There are vanes $V_k$ with $V_k$ "checked", radius $r_k$ and stage $\to\infty$, such that for $k$ large and $d\le k$, $U_k=$ projection of the $\mathcal L$-limit of the lattice lift of $V_k$.

*Status:* theorem. Its hypotheses `Scrim` and `FiresSky` are discharged elsewhere, by the construction record of II.2 and III.14.
*Lean:* [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31), with the conclusion defined in [`StarPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23).

**Proposition VII.6.2 (extraction of vanes along prescribed scales).** Under the same hypotheses without `DimAbove` and $\mathcal L$, for $s_i\downarrow0$ there are $p$ strictly increasing with $s\circ p$ strictly decreasing, and vanes $V_d$ (for $d\in\mathbb N$) with stage $\to\infty$, each checked at level $d$ (`TimberSky`) and with radius $s(p(d))$.
*Status:* theorem.
*Lean:* [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87), with [`Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69), [`TimberSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47), [`boatsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L49-L62).

**Proposition VII.6.3 (observable estimate with a moving stopping parameter).** This is a variant of the multiscale observable estimate of the ultraviolet part. For a family of "panels" (schedule data with a real parameter, the arc $b$) $U_k$ with fixed grade-$\theta$ and currency and arc bounded by $u_0$, for compact $K$ of pairwise distinct configurations and labels of degrees $\le d$: for all large $k$, every $N>k$ and every admissible stage-$k$ input (`ActumSky`, `LegacyCostSky`), every test point with its fitted stencil and every nonempty mode set $s$, the chessboard root of the $s$-part of the (assembled) observable product is at most the standard budget $\mathrm{Ship.budget}(n,k)$. The parameters (arc, stage) may vary with $k$ within bounds.
*Status:* theorem.
*Lean:* [`earningsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91); the uniform version on compacts for the "poised" notion, [`lava_vSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50).

**Proposition VII.6.4 (fixed-field supply, grade $\le3$).** Let $Y$ be the final specification for $(C,f,S)$ (`Spec.Final`), $G$ simple, $\varphi\le f.\mathrm{fuse}$ a filter on $\mathbb N\times\mathbb N$, $d\le3$ and $x$ a lattice label of grade $d$. Then the physical field $S.\mathrm{project}\,d\,x$ is *supplied*: there is an exponent $p$ such that for all large $k$ there exist a label $y$ and a sequence $q_i\to y$ along $\varphi$ with $S.\mathrm{project}\,y=S.\mathrm{project}\,x$ and $\mathrm{quota}_{k,i}(q_i)\le\hat\beta_k^{\,p}$ eventually along $\varphi$. Here $\hat\beta_k$ is the clock coupling, which tends to $\infty$. The quota is the coefficient size of the label at level $k$, normalized by the spacing.
*Status:* theorem.
*Lean:* [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129), with [`Supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L18-L21).

## 2. What it uses

**From other units.**
- The construction record `Makes` and the Wilson family (II.2, III.13, III.14), and the schedule hypothesis `Scrim` (the cost conditions for the gauge doors, III.2).
- Fixed-parameter observable estimates in `YM/MergeProof/West/` (Tael, Lys, Karin, Delft), proved in the III.10, III.11 and III.14 area. The Sky lemmas re-prove them with a moving stage, apparently by copying the proofs (see §5).
- The `Final` specification (the packaged output of IV.1, V.1 and the earlier parts of VII). Fields used: `room.cutoff`, `sector.derivatives`, `phase.transport.comparator`, `room.kernel.laws`.
- The Gaussian and background-field machinery behind `Ship.yardSky` and `Ship.invoiceSky` (the chessboard-root test on the assembled observable) (III.4, III.6, IV.1).
- For §1.4 only: `Trace.first_grade` ([`Trace2/Transfer.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37)). In grades $d<4$ the field space is one-dimensional, spanned by the unit. This follows from the comparison dimension count with the free theory (VII.1, "dim_before").

**Standard mathematics.** Balaban-type multiscale ultraviolet estimates, chessboard estimates (Fröhlich–Israel–Lieb–Simon; see IV.1), and diagonal subsequence extraction. Nothing specifically new is needed outside the bookkeeping.

**Imported constants and assumptions.**
- `FiresSky` is *assumed* in `pays_sky`. It is produced for every simple $G$ by [`embalms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50) (in `Order/State.lean`, via `submits`/`forwardSky`), under the premise that the schedule "pays" ($\texttt{Paid}\ W\ C.\mathrm{path.levels}$) and `ParadeX C`. These premises are consumed in the construction run (III.14).
- `DimAbove` is supplied by [`cap_given`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110) from the rank widths (`Cells.RankWidths`), which is part of the `corrected` field of the seed.
- The exponents are the constants of the budgets (e.g. `-3` in `LegacyCostSky`, $x^{-1/32}$ in `laminateSky`). They are not new.

## 3. Strategy

The ultraviolet estimates (III.10–III.14) are stated for a lattice theory at a fixed schedule: the effective action is built from the Wilson action at spacing $a_N$ and the RG is stopped at a stage determined by the spacing and a fixed real number, the arc $b$ (the code's `band`, `arc`; see §6). The scaling-limit argument of VII.1–VII.2 needs more than a subsequence of the schedule's natural stages. It needs, for an arbitrary sequence of target scales $s_i\to0$, a lattice theory at some stage $k_i$ whose RG gap (`Station.gap A b k`, the physical length at which the observables are read) is *exactly* $s_i$. This is achieved by letting $b$ vary in a unit interval: $b_i=a+e_i$, $e_i\in[0,1]$. The map $b\mapsto\mathrm{gap}(b,k)$ sweeps scales and can be tuned to hit $s_i$.

The Sky family therefore contains:
- (i) the firing property `FiresSky`: the observable estimate holds simultaneously for all $b$ in a unit interval (a one-parameter family of panels $P_s$, $s\in[0,1]$), uniformly for $k$ large;
- (ii) copies of the fixed-$b$ estimates in which $b$ and the stopping stage are free variables, so that they apply to $b_i$ and $k_i$ (`earningsSky`, `y_readySky`, `attireSky`, `sweepSky`, `laminateSky`);
- (iii) compact-set uniformity (`lava_vSky`), which converts the pointwise estimates into the bounds `Granular`, the form used in the extraction of limits;
- (iv) a diagonal extraction (`wakesSky`) of one vane per grade and a repackaging (`dockedSky`, `pays_sky`) as a scaling-limit path.

The second part (§1.4) is separate and elementary. In grades $\le3$ every physical field is a multiple of the unit, and the unit is supplied by a constant label whose coefficient size is $\le a_k^d\le1$. This is the "fixed-field estimate" that grade $\le3$ trivially satisfies. The sharper statement for grade $\ge4$ (`coreRead`, `physicalRelease`) is in the same file.

## 4. Steps

### 4.1 Scaling-limit paths from firing (Part A, main chain)

**Lemma VII.6.a (firing).** `FiresSky B H O J d z` says: there are panels $P_s$, $s\in[0,1]$ (schedule data for grades $\le d$) and base values $b_0,b_1,b_2$ with `Checks`, such that $(P_s\,i).\mathrm{arc}=b_i+s$, currency and $\theta$ independent of $s$, and for $k$ large and all $s\in[0,1]$ the panel $P_s$ is *poised* at stage $k$ (`PoisedSky`): there are charts and banks of lifts and, for each $s$, a stage-$k$ input `LegacyCostSky` together with an admissible `ActumSky` extension, whose stamp-duty data are those of the tables $t$.
*Proof sketch.* It is a definition (a property of the data). `embalms` proves it by building the panels from the schedule via `forwardSky` and truncating the arc to $[a_d,a_d+1]$ with `curb`, then using `stagingSky` to supply the poised data at stage $k$.
*Lean:* [`FiresSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L29-L32), [`PoisedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L23-L28), [`embalms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50). *(proof read, partly; `forwardSky` and `stagingSky` not opened)*

**Lemma VII.6.b (leap: scales are hit exactly).** If `FiresSky` holds for grade $d$, there is $b>5$ such that for every $s_i\downarrow0$ with $s_i>0$ there are strictly increasing $f$ and stages $k_i$ and a leap structure `LeapSky`: panels $P(k,t)$ with arcs $a_t+L_i$, $L_i\in[0,1]$, arc bounds (`ArcSky`), poised at stage $k_i$, and $s_{f(i)}=\mathrm{gap}(A,(P(k_i)\,0).\mathrm{arc},k_i)$.
*Proof sketch.* Apply the gap-ordering lemma `gap_orders` (the gap, as a function of the stage and the arc, is monotone in the stage and sweeps $(0,\delta)$ as $b$ runs over a unit interval) to the target sequence. The arc offsets $e(k)$ are chosen by the exponent $t_i$ from `gap_orders`, and the poised data come from `FiresSky` at $s=e(w_i)$ (for the stages $w_i$ it produces).
*Lean:* [`fliesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L68-L84), [`LeapSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L56-L60), [`ArcSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L21-L24), [`agendasSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L61-L67). *(proof read, partly; `gap_orders` not opened)*

**Lemma VII.6.c (checked vane).** For $d$ fixed, scales $s_i\downarrow0$, large $Y$ and small $\theta$, there are $k\ge Y$ with $s_k<\theta$ and a vane (stage $i\ge Y$, arc $b$, constant $c$, table family $R$) with $s_k=\mathrm{gap}(A,b,i)$ and `TimberSky`: $5<b\le$ the maximal arc, all grades $\le d$ are past their reference stages, the family $R$ has the required chart and bank property, the seam-pair estimate `SeqPair` holds (a quantitative bound $\le\mathrm{cost}(j)=1/(j+1)$ on the 2-point rooted tests on the window of radius 100), and the associated station is admissible for the extraction order.
*Proof sketch.* Use VII.6.b to obtain a leap, then bring in `await` (a uniform estimate from `lava_vSky` with $n=\texttt{trays}(d)$ points, proving `SeqPair` for large $j$) and `podiumSky` (the `Granular` property for the chosen subsequence). Finally `supply_wheel` supplies the checked station, a diagonal choice of one $k$ with all properties.
*Lean:* [`boatsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L49-L62), [`TimberSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47), [`podiumSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Largo.lean#L24-L34). *(proof read for `boatsSky`; `podiumSky`, `supply_wheel` statement only)*

**Lemma VII.6.d (= Proposition VII.6.2, diagonal vanes).** *Proof sketch.* Fix $d$. By VII.6.c, for every $N$ and $y>0$ there is $k>N$ with $s_k<y$ and a $d$-checked vane of radius $s_k$ with stage $\ge d$. Choose recursively $p(d+1)>p(d)$ with $s_{p(d+1)}<s_{p(d)}$. Stage $\to\infty$ follows from the bound stage $\ge d$.
*Lean:* [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87).

**Lemma VII.6.e (the vanes give a scaling).** Given vanes $V_d$ with radius $X.r_d$ and an ultrafilter $\mathcal L\le\mathrm{fuse}$, there are panels $U_k$ approaching the reference values (`Approaches`), coherent with spin and the unit, and lifts $Y_k$ with $\lim_{\mathcal L}(\text{lattice lift of }V_k)=Y_k$ and $U_k=\mathrm{project}\circ Y_k$. If moreover $\dim S.\mathrm{Field}(d)\le\dim(\text{free})\mathrm{Field}(d)$, then $U_k(d)$ is a linear *isomorphism* for $k$ large, giving a genuine `Scaling` with $\xi_k=1$.
*Proof sketch.* The existence of $U_k$ is the limit along $\mathcal L$ of the lattice rescalings (`harvestedSky`, the compactness result from the chessboard bounds in `Granular`). The convergence `Approaches` follows from the checked bound ($\mathrm{cost}(k)$ times the charge tends to 0). Injectivity of $U_k$ for large $k$ is `MeterTest.injects` (the rescaled fields separate the free reference fields), and injective plus the dimension bound gives bijective.
*Lean:* [`breadSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L13-L31), [`dockedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L32-L58). *(proof read; `harvestedSky`, `MeterTest.injects` statement only)*

**Lemma VII.6.f (= Proposition VII.6.1).** Combine VII.6.d and VII.6.e with $X=\langle s\circ v,\dots\rangle$.
*Lean:* [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31).

*Consumer.* [`Trace.Over.gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56) uses `pays_sky` to prove the `picks` clause of the structure [`Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44): for any $s_i\downarrow0$ there is a subsequence and a scaling $J$ with $J.r=s\circ f$ carrying a trace-scale witness (`Scribe`). This feeds `Bliss`, then `glides` (the statement that, for every $r\to0$, trace moments are close to those of the free field uniformly on windows), which belongs to VII.1 and VII.2. (probable)

### 4.2 Moving-parameter copies of the observable estimates (Part A, inputs)

**Lemma VII.6.g (observable estimate along the sequence).** `earningsSky`, as in Proposition VII.6.3. *Proof sketch.* For $k$ large and every admissible stage-$k$ input, after reducing to the standard fixed-parameter hypotheses via `mural_castSky` and `StampDuty.procureSky`, the estimate follows from `y_readySky` (below), with the assembled observable estimate fed by `Radian.commissioned` and the `Flux.timing` bounds. The stage bound $u\le\mathrm{width}$ follows by contradiction from the bracket property of the permitted window.
*Lean:* [`earningsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91). *(proof read in outline; the lemmas it chains to not opened)*

**Lemma VII.6.h (readiness: dynamic stops).** With the stage-$k$ input `LegacyCostSky` (its fields: `moves`, `age`, `hours`, `token`, `clears`, `room`, `tariff` for $n\le u$), the dynamic-stop whip `WhipSky`, work items and stake hypotheses, the chessboard root of the $s$-part of the observable product is at most `Ship.budget` $(u,k)$.
*Proof sketch.* Form the embroidered background field of the stage (`embroideredSky`), apply the billing estimate (`billing_XSky`) and the optics of the stage input (`y_supplySky`), then conclude with `tenderlySky` and `attireSky`.
*Lean:* [`y_readySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L51-L71), [`LegacyCostSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L38-L45). *(proof read as a composition; components not opened)*

**Lemma VII.6.i (surviving configurations).** Under spacing (`Spaced`), fit (`FitSky`) and stake (`StakeXSky`) hypotheses and cost bounds on the labels' money and coins, the survivor property `ChastSky` holds for the dynamic-stop variant.
*Lean:* [`attireSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Delft.lean#L30-L38). *(proof read; two-step composition of `legionSky` and `staunchSky`)*

**Lemma VII.6.j (word-by-word assembly).** For a list $S$ of weighted words in polynomials $P_u$ of total degree $\le D$ and coin size $\le r$ whose supports lie in the allowed sets, the "tray" functions $\mathrm{tray}_j$ (the word integrands on the tag $j$) are integrable, and the assembled functional differs from the reference "platter" $\mathrm{dot}(K,e(R_i.\mathrm{read}(\sum_t c_t\prod P)))$ by at most $\mathrm{grantS}(S,B,\varepsilon,r,D)$, the sum of per-word budgets.
*Proof sketch.* Induction on the list $S$. The step adds one word, uses linearity (`plankSky`, `plaidF_addSky`, `send1`), the triangle inequality, and the single-word estimate `wordAnswerSky`.
*Lean:* [`sweepSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L34-L57), [`traySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L26), [`platterSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L27).

**Lemma VII.6.k (nonlinear observable bound on the stencil).** Given a steady coupling window $(\beta,\beta')$, an enlightened and strongly scoped patch, and a pose $(o,W,x,V,v)$ with enough "payments" on both $x$'s: (1) the gauged field $U$ is *healthy* on the fine patch of radius $L=w\cdot\mathrm{walls}(y)$; and (2) for any gauge $t$ with $\mathrm{gauge}(t,f)=U$ the rigid colored fluctuation at each incident link $j$ within $L$ differs from the stationary mean plus the linear correction $(\mathrm{dKeys}\cdot Z)$ by at most $x^{-1/32}$. The bound holds where tested, not on unguarded configurations.
*Lean:* [`laminateSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Rail.lean#L95-L127). *(statement and docstring read; proof is a composition of `ships`, `slide_link`, `checkingMaskSky`, `throughout`, not opened)*

**Lemma VII.6.l (compact uniformity).** Same statement as VII.6.g, uniform for all test points in a compact $R\subset\mathrm{conf}$ and for all stage-$k$ poised data, in terms of the root test.
*Lean:* [`lava_vSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50). *(proof read; it unpacks `PoisedSky.supply` and applies `earningsSky`)*

### 4.3 Fixed-field supply in grade $\le3$ (Part B)

**Lemma VII.6.m (unit supply).** For $t\in\mathbb C$, the field $t\cdot S.\mathrm{unit}(d)$ is supplied: take $p=1$; for $k\ge\mathrm{ref}(d)$ large such that $\hat\beta_k\ge\|t\|$ and $a_k\le1$, use the constant label $y=t\cdot\mathrm{refUnit}(d)$, whose quota is $\|t\|a_k^d$ (`quota_smul`, `quota_unit`), at most $\hat\beta_k$.
*Lean:* [`supplyUnit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L54-L61), with [`quota_smul`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L33-L37), [`quota_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L38-L48).

**Lemma VII.6.n (= Proposition VII.6.4).** For $d\le3$ (so $d<4$) every physical field is $t\cdot S.\mathrm{unit}(d)$ by `Trace.first_grade`, and VII.6.m applies.
*Lean:* [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129).

**Companion statements in the same file (not among the unit's key statements).**
- [`coreRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L65-L85): if a linear functional $L$ on $S.\mathrm{Field}(d)$ kills the unit, then $\|L(\mathrm{project}\,x)\|\le\|M\|\,(a_{\mathrm{ref}}/a_k)^{d-3}\,\mathrm{coreQuota}(x)$, since the unit component is removed before applying the reference-core bound.
- [`physicalRelease`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L87-L117) / [`outletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124): for $w\le3$ and $L$ vanishing on the unit (for $w>0$), the functional $L$ is *released*: $\|L(\mathrm{project}\,x)\|\le\hat\beta_k^{\,p}a_k^{-(d-w)}z$ along any filter on which the quota is $\le z$. Here $L$ is required to vanish on all derivative images of grades $<w$ (`Kills`).

*(Read: the proofs of `coreRead` and `physicalRelease`. Both are short chains of operator-norm bounds.)* These two are the "output" counterparts of `inletFirst`, so the three are probably used together in VII.2 (trace comparison). (tentative)

## 5. Where the difficulty lies

*Routine but long.* The Sky variants are copies of the fixed-parameter estimates with an extra real parameter, so there is no new analytic idea. The 3,600-line chain is the cost of carrying the parameter through the budgets and stage definitions. Many names carry the suffix `Sky`, and docstrings say "Variant of `YM.MergeProof.West.Tael` for dynamic stops". The structural content that matters is VII.6.b (tuning the arc to hit the target scale exactly) and VII.6.e (turning the lattice rescalings into a genuine isomorphism using the dimension bound).

*New or unusual.*
- The scaling-limit path is built from a sequence of *prescribed* radii $s_i$, not from a subsequence of natural scales. The price is the uniform-in-arc hypothesis `FiresSky`, which is a statement about a whole unit interval of arcs.
- `pays_sky` assumes the dimension bound `DimAbove`, i.e. that the physical field spaces are no larger than the free reference field spaces. The comparison goes through `MeterTest.injects` (injectivity of the rescalings) plus equality of dimensions.
- `StarPath` in `Running.lean` is the Sky version. The same name in `YM.TraceExtension.Slate` and `Atlas` is used with a different parameter list (`StarPath X H J F.room.kernel 𝓛`, with the second kernel argument); the two should be identified before writing. (tentative)
- `inletFirst` is very short because the physics is in `first_grade`: grades $<4$ are all multiples of the unit (VII.1 or VII.3).

## 6. Notation

| object | code name | proposed notation |
|---|---|---|
| scaling (radii and rescaling maps) | [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31) (`U`, `xi`, `r`), [`Zoom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L15-L19) (radii only) | $(r_k,U_k)$ |
| scaling-limit path | [`StarPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23) | "scaling path along $\mathcal L$" |
| approach to the free values | [`Approaches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53) | $\mathrm{tested}(r_k,U_k;v)-\mathrm{disc}(v)\to0$ |
| vane (stage, arc, constant, tables) | [`Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69) (`k`, `b`, `c`, `R`) | a "scale datum" $(k,b,c,R)$ |
| checked vane | [`TimberSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47) | "admissible scale datum" |
| firing property (uniform in the arc) | [`FiresSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L29-L32) | $\mathrm{Fire}_d(z)$ |
| poised stage-$k$ data | [`PoisedSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L23-L28) | "stage-$k$ input at arc $b$" |
| stage-$k$ cost record | [`LegacyCostSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L38-L45) | $\mathrm{Cost}_k$ |
| arc / band parameter | `Panel.arc`, `band` | $b$ (the real parameter that fixes the stopping stage) |
| RG gap (physical scale of stage $k$ at arc $b$) | `Station.gap A b k` | $\ell(b,k)$ |
| dimension cap by the free reference | [`DimAbove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108) | $\dim S.\mathrm{Field}(d)\le\dim F_0.\mathrm{Field}(d)$ |
| schedule cost hypothesis | [`Scrim`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34) | (S) |
| Gallery (existence of scaling paths) | [`Trace.Over.Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44) | (not part of this unit) |
| supply condition | [`SharpGram.Supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L18-L21) | $x\in\mathrm{Supp}_p(\varphi)$ |
| release condition | [`SharpGram.Releases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L23-L26) | $L$ released at weight $w$ |
| derivative-killing condition | [`SharpGram.Kills`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L28-L29) | $L\circ\partial^{(e)}=0$, $e<w$ |
| quota | `quota C d k N p x` | $\|x\|_{k}$, the level-$k$ coefficient size of the label $x$, normalized by $a_k^{-d}$ (tentative) |

## 7. What remains unexplained
**Meaning of the parameter $b$ ("arc", "band", "currency", $\theta$).** The parameter $b$ is read as a real parameter of the RG schedule that fixes the stopping stage, because the gap function is monotone in it. The definitions of `Tapes.Panel`, `Station.gap` and `gap_orders` have not been checked. The definition of the arc, and the reason it ranges over a unit interval, should be checked. (tentative)
**Meaning of `Vane` and `wheel`.** A vane is read as a datum (stage, arc, constant, tables) from which the family of lattice rescalings $\mathrm{wok}(C,d,k,b,c,R)$ is built, with `wheel.atCut` its dependence on the cutoff pair $(N,p)$. The definitions of `wok` and `Granular` have not been checked. (tentative)
**How the Sky lemmas relate to the originals.** The files say "Variant of `YM.MergeProof.West.*` for dynamic stops". I compared hypotheses only: the Sky versions add the arc parameter and the dynamic stage `widthSky`/`middleSky`. A writer who proves the fixed-parameter versions in III.10–III.14 should check whether the Sky versions are generalizations (in which case the originals are corollaries) or independent copies. (probable)
**Use of `inletFirst`.** A search by name alone found no other Lean source mentioning `inletFirst` or `outletFirst`. The unit page says the lemma is used by the main theorem. The dependency may be through a different name or through a macro, so the consumer should be located in VII.2. (tentative)
**`FiresSky` as an assumption.** It is discharged by `embalms` for every simple $G$ under `Paid W C.path.levels` and `ParadeX C`. The places where those are established (III.14 or the integration files) have not been traced. The two hypotheses of `pays_sky` that mention the schedule (`Scrim`, `hZ`) come from the same place.
**Role of $z_d$.** `hZ` says $z_d\ge\mathrm{generator}(G,i)$ for $i\le d$ and nondecreasing in $d$. The declaration `Accent.generator` has not been identified (probably the largest generator norm of the gauge group, entering the exponent of the cost bounds).
**`laminateSky`.** Only the statement and docstring are covered here. The $x^{-1/32}$ exponent, the use of $L=w\cdot\mathrm{walls}(y)$ and the notions `Healthy`, `Steady`, `Pose`, `Guards` are not explained here.
**`DimAbove` and the reference.** It is read as the cap by the free Maxwell reference table `Bel C.book`. Confirm that the reference is the free Maxwell theory of VII.1 and VI.2.
9. **Two `StarPath` definitions.** See §5.

**Builds on:** [III.11](III-11.md), [I.1](I-1.md), [III.1](III-1.md), [II.2](II-2.md), [II.1](II-1.md), [IV.1](IV-1.md), [III.4](III-4.md), [VI.2](VI-2.md), [III.16](III-16.md), [V.2](V-2.md), [III.10](III-10.md), [VI.1](VI-1.md).

**Used by:** [III.2](III-2.md), [VII.2](VII-2.md), [VIII.1](VIII-1.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31) and the results it chains to | 3,601 |
| work package [`YM/TraceExtension/Prom/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom) | 561 |
| proof of [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129) | 43 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **VII.6.1** [`laminateSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Rail.lean#L95-L127) *(key result)* — A nonlinear observable bound on the actual stencil: given sufficient pose and payments, the observable is valid on the fine patch and close to the critical bias on the coarse field.
- **VII.6.2** [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31) *(main result)* — If the firing property holds in all dimensions under simple group, scrim, and dimension-above hypotheses, then for any sequence of scales tending to zero there is a subsequence along which a scaling limit star-path exists.
- **VII.6.3** [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87) *(key result)* — From the firing property one extracts a subsequence of scales and vanes with checked properties and radii equal to the prescribed decreasing scales.
- **VII.6.4** [`earningsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91) *(key result)* — Variant of the earnings estimate allowing parameters that vary with the sequence index within bounds.
- **VII.6.5** [`y_readySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L51-L71) *(numbered result)* — A dynamic-stop variant of the readiness estimate bounding a root-test quantity by a budget.
- **VII.6.6** [`lava_vSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50) *(key result)* — The uniform endpoint estimate on compact sets holds for the dynamic-stops poised notion.
- **VII.6.7** [`attireSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Delft.lean#L30-L38) *(numbered result)* — Under spacing, fit and stake hypotheses, a surviving-configuration property (Chast) holds for the dynamic-stops variant.
- **VII.6.8** [`sweepSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L34-L57) *(key result)* — Under support conditions, the tray functions are integrable and the assembled functional differs from the reference platter by at most the summed budget grantS.
- **VII.6.9** [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129) *(major result)* — For inputs of grade at most three, the projected input supplies the required fixed-field estimate.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

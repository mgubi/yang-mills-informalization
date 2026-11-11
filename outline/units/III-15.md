# III.15. Cost accounting for observables and the remainder comparison

*Part III — Ultraviolet construction (renormalization group).*

Organizes observable and activity bounds, including additional comparison estimates carried by the selected run.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/III-15.md) · [← Previous: III.14](III-14.md) · [Next: III.16 →](III-16.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

**Reading scope.** The pair-step and observable-derivative bounds feed [III.2](III-2.md), [III.9](III-9.md) and [III.10](III-10.md). Additional comparison bounds reach the selected run in [III.14](III-14.md) as a separate conjunct, which the final construction-run theorem discards; this does not establish that the associated code can be removed.

<details>
<summary>Source inventory and conventions</summary>

**Part:** III, Ultraviolet construction (renormalization group). **Lean:** unit III.15: [`YM/RemainderComparison/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison), [`YM/Progress/DIRECTED_RECIPE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE), [`YM/Next/SCHEDULE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE), with readout and integration fragments. **Size:** 7,382 lines, 1,053 declarations; about 4,200 lines concern launch data.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Proposition III.15.1 (pair-step rates).** Fix $\rho>0$, $C\ge0$, $r>\rho$, $d\in\mathbb N$, $e\in\mathbb R$, $q>0$. Put
$$s=p(y)\sqrt{\beta/y},\quad a=Ce^{-rs^2},\quad b=C(1+\mathcal B(y))^dp(y)^eg(y)^q,\quad \kappa=\rho s^2,\quad\gamma=e^\kappa a+2b.$$
For all sufficiently large $y>1$, uniformly for $\beta\in[y/4,4y]$ and integers $0\le B\le\mathcal B(y)$,
$$\kappa,a\ge0,\qquad0\le b\le1,\qquad(2B+1)^4\gamma\le1,\qquad\mathrm{quote}(\kappa,\gamma)\le e^{-\kappa}.$$
The threshold depends only on the fixed parameters. *Status:* theorem. *Lean:* [`YM.Progress.DirectedRecipe.Payments.Pairing.currency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139).

**Proposition III.15.2 (hard–soft merging).** Fix a parameter point with $K\ge6$, direction power $P_0\ge2$, $B_P\ge1$, $\sigma>0$, $0<t_P\le1$. Assume countably indexed regular terms $E_i$, forced activities $F_i$ on $X_i$, and real corrections $\ell_i$ on nonempty $X'_i$. Require support regularity, flat-field vanishing and vanishing affine Hessian on nonwrapping supports for $E_i$; gauge invariance, measurability and dependence on supported links and final flags for $F_i$, their eligibility tests and $\ell_i$; eligibility whenever $F_i\ne0$; translation/reflection covariance for all families, with prescribed permutations, support and inventory transformations for regular and forced families; and $\ell_i=0$ on its small-field region. Suppose the regular family's nonnegative derivative bounds through $K$ on small-field supports, in prescribed directions, have weighted anchored sum $\le\delta$; $|F_i(U)|\le p_i$, $|\ell_i(U)|\le q_i$ for all $i,U$, with $p_i,q_i\ge0$; and
$$\mathrm{Hit}_{B_P}(p;\sigma+1)\le a,\qquad\mathrm{Hit}_{B_P}(q;\sigma+1)\le b.$$
Assume III.15.1's inequalities with $B=B_P$, replacing its last bound by $\mathrm{quote}(\kappa,\gamma)\le w$. Then the fusion input condition holds with $(\delta,w)$: original bounds $\delta,a$ persist, the soft family has a summable uniform majorant, and $(F_i)\sqcup(e^{\ell_i}-1)$ has weights $(e^\kappa p_i)\sqcup(2q_i)$ and hit bound $\gamma$, with $|F_i|\le e^{-\kappa}(e^\kappa p_i)$ and $|e^{\ell_i}-1|\le2q_i$. III.10's fusion gives norm $\le w$. *Status:* theorem. *Lean:* [`YM.Progress.DirectedRecipe.Payments.tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133).

For III.15.3–4 fix $K\ge6$, $P\ge2$, $0<t\le1$. Directions satisfy $\|A_e\|\le t(1+\mathrm{dist}(e,o))^P$.

**Proposition III.15.3 (slots).** For every $\ell\in\mathbb N$, slot $s$ with $|s|\le\ell$, finite $S\subset\mathbb Z^4$ containing its stencil, and site $o$, the slot is $K$ times left-differentiable. If $U$ is small-field on wrapped $o+S$, every derivative of order $m\le K$ in admissible directions has norm $\le C_s(P,K,\ell)t$, where
$$C_s(P,K,\ell)=(1+\kappa_G^{-1}\|1\|)[2(\kappa_G+1)2^P(\ell+1)^{P+1}]^K.$$
At order zero the bound is $t$; constants are independent of volume and $t$. *Status:* theorem. *Lean:* [`YM.Next.Scheduling.Wages.slotPays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159).

**Proposition III.15.4 (atoms).** For every $k\in\mathbb N$, $k$-leg atom $a$, site $o$, and $U$ small-field on its footprint, $a(\cdot,o)$ is $K$ times left-differentiable, with every admissible derivative through $K$ bounded by
$$|a|2^K[2^KC_s(P,K,\mathrm{len}(a))t]^k.$$
*Status:* theorem. *Lean:* [`YM.Next.Scheduling.Wages.fin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L56-L71).

**Proposition III.15.5 (launch data).** Let $G$ be simple. Fix a sheet of profiles $P_j$, kernel, compatible price table, targets $R_{ji}$ with $\rho_{R_{ji}}<-3/8$ for all $j,i$, tolerances $h_{ji}>0$, libraries $C_{ji}$ of order $P_i$, and marks $r_{ji}$. There exist $f:\mathbb N\to\mathbb N$ and $C'_{ji}\ge1$ giving quotation bounds with fine/coarse exponents $(\sigma_j,\sigma_i+2)$ and factor $C'_{ji}L^{-5}$. These require support enlargement by $r_{ji}\mathcal B(x)$, coarse power equal to that of $P_i$, fine exponent $\sigma_j$, $B_P=\mathcal B(x)$, $B_B\le2B_P$, $t_P\le2t_B$, and acceptance. For every $u\ge0$ satisfying local analytic smallness and every $\tau\ge0$, the bound holds. The quotation inequality is $e^{(\sigma_i+2)N_{B_P}(Y)}\tau\,\mathrm{returnFee}\le C'_{ji}L^{-5}e^{\sigma_jN_{B_B}(X)}\tau$. For each stage pair $(j,i)$ and every block side $L\ge f_j$, III.15.6 holds and
$$(\mathrm{rel}_{R_{ji}}+1)10c_{h_{R_{ji}}+5}/L+2\varepsilon_{R_{ji}}\le\sigma_j,\quad20(\sigma_i+2)\mathrm{toll}(r_{ji})\le L\sigma_j,\quad C'_{ji}/L\le h_{ji}.$$
*Status:* theorem. *Lean:* [`YM.RemainderComparison.Chron.sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111).

**Proposition III.15.6 (large-side comparison).** For simple $G$, kernel $K$ and target $Q$ with $\rho_Q<-3/8$, there exists $n$ such that for every $L\ge n$ and branching patch, every $W,\mu>0$, order datum at $W$, songbook and scrollwork at side $L$, $\chi$, stages $E,E'$, rays satisfying the heart condition for $(E',\mathrm e_Q)$, library of order $E'$, record with parameter $\le1/4$, $j\in\mathbb N$, reserve $f$, and $\eta,\delta>0$, there exist a financed quarry $D$ at rate $\rho_Q$, with $d(D)>0$ and paint supply, and $P_1$. For all $x\ge P_1$, poster comparison, chart conditions and instructions hold; active, resonance and tolerance conditions hold for every $\beta\in[\beta_F/4,4\beta_F]$ and every point tempered to $E'$. The threshold $n$ is independent of auxiliary data; $D,P_1$ may depend on them. *Status:* theorem. *Lean:* [`YM.RemainderComparison.Cadenza.buoys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58).

**Proposition III.15.7 (delay enlargement).** Fix a sheet, compatible target/expense tables $R,X$, sides $L_j$, protection, register, firmament, tolerances, libraries and marks as in III.15.5, and records $u_{ji}$. The register supplies positive $W_{ji},\mu_{ji}$ and orders on stage pairs; each finite request family supplies scrollwork, songbook, grade/orders, reserve, positive constants, and an extra condition eventually true for every financed quarry. Assume launch thresholds $k_j\le L_j$, $\varepsilon(u_{ji})\le1/4$ on stage pairs with $i$ at least the first stage, and $\sigma_i+3<\mathrm e_{R_{ji}}$ for all $j,i$. For every initial delay $T_0$, there exist $W\ge T_0$ and quarries $V_{jig}$ for every request slot at every $(j,i)$, chosen before any $U\ge W$. For every such $U$, launch data persist; on branching stage pairs with $j\ge4$ and $i$ at least the first stage, every request has the heart property, positive $d$, paint supply, III.15.6's allotment at threshold $\beta_j^*(U)$, and its extra condition above that threshold. On all stage pairs with $i$ at least the first stage, requests are tiled whenever $x\ge\beta_j^*(U)$ and
$$c\ge\mathrm{shells}_j(U)(1+\mathcal B(x))^{\mathrm{growth}_j(U)}.$$
Tiling means $2z_g(x)<c$ and $4\mathrm{halo}_g(x)+16\le c$. Delay ordering increases entry couplings, scale-entry functions, shell counts and growth exponents componentwise. *Status:* theorem. *Lean:* [`YM.RemainderComparison.Chron.grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L33-L70).

<a id="unit-inputs"></a>

## 2. What it uses

- III.1: scales, slots, atoms; II.1: left-derivative calculus; II.2: hit bounds; III.5: logarithmic cluster tails.
- III.10: fusion, quotation, connected-activity and tree estimates; III.2: selected targets and delay ordering.
- Leibniz and chain rules, Mayer expansion, Kotecký–Preiss bounds, elementary asymptotics, $|e^z-1|\le2|z|$ for $|z|\le1$.

<a id="unit-strategy"></a>

## 3. Strategy

Retain $e^{-\rho s^2}$ from the hard bound and use the remaining Gaussian decay to absorb support counting; soft bounds decay by their negative coupling power. Express slots as single group words: unitarity controls derivatives, and Leibniz gives $t^k$ for atoms.

Choose the block-side threshold before auxiliary data, then comparison functions and entry couplings. Negative activity rate survives the tree weight $\beta_F^{3/8}$; finitely many requests per stage permit common delay enlargement.

<a id="unit-steps"></a>

## 4. Steps

1. **Fusion.** Rescaled hard weights and doubled soft weights add to $\gamma$; the exponential inequality bounds the Mayer terms. [`YM.Progress.DirectedRecipe.Payments.tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133).
2. **Observable bounds.** Differentiate the detour word, use unitarity, then multiply slot estimates. [`YM.Next.Scheduling.Wages.slotPays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159); [`YM.Next.Scheduling.Wages.fin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L56-L71).
3. **Comparison functions.** Choose reserve functions conditional on local derivative estimates, charts and coefficient matching. [`YM.RemainderComparison.Herbal.compile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L41-L56) *(proof read; analytic inputs not expanded)*.
4. **Marked outputs.** For the conditional marked-output estimate, separate single remaining occurrences from clusters with further occurrences and from large supports. The $L^{-5}$ quotation summed over $L^4$ sites supplies the $C_0/L$ term; the other contributions have negative rate. Occurrences are counted outside inserted leaves, with at least one marked. [`YM.RemainderComparison.Solo.atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo/Barque.lean#L21-L61) *(proof read; singleton input not expanded)*.
5. **Launch and enlargement.** Combine comparison and tail bounds with quotation thresholds, then take finite stagewise maxima. [`YM.RemainderComparison.Chron.sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111); [`YM.RemainderComparison.Chron.grows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L33-L70).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The bounds must be uniform in coupling bands and volume; the block-side threshold precedes all auxiliary choices, while comparison functions precede the entry coupling. Part C's conditional comparison conclusions reach the selected run but are discarded by the final construction-run theorem.

<a id="unit-notation"></a>

## 6. Notation

$g(\beta)=\beta^{-1/2}$, $p(x)=e^{(\log\log x)^2}$, $t(x)=g(x)p(x)$, $\mathcal B(x)=\lceil(\log x)^2\rceil$, $\beta_F=x+b_G\log L$; $x$ is coarse inverse coupling. $\mathrm{quote}(\kappa,\gamma)=e^{-\kappa}(e^\gamma-1)$. Hit means $\sum_{i:z\in X_i}f_i e^{aN_M(X_i)}\le\gamma$ at every site $z$, for weights $f_i\ge0$; $N_M$ counts a minimal connected covering by $M$-balls. Stage pairs have $i\in\{j,j-1\}$; $\sigma_j$ is the profile's support exponent. A quarry is a record of bounding functions; financing specifies reserve/rate bounds. Rate $\le a$ means $|w|\le\beta_F^v$ eventually for every $v>a$; a reserve satisfies $|w|\le p(\beta_F)^k$ eventually for some $k\in\mathbb N$.

A slot is curvature transported along a walk $\omega$, with length $|\omega|+4$; atoms are coefficient-weighted products of slots, with coefficient norm $|a|=\sum_b|c_b|$ and total length $\mathrm{len}(a)$. Small-field means every touching plaquette has chord distance $\le t$ from identity; $\kappa_G$ is the colour scale and $\|1\|$ the Frobenius norm of identity.

For a target $Q$, $\mathrm{rel}_Q=\mathrm e_Q+2\varepsilon_Q+\delta_Q$; $h_Q$ is its halo and $c_{h_Q+5}$ its pre-cost. Targets carry their chart/local-ratio conditions, $\rho_Q\in(-1/2,0)$, $\mathrm e_Q\ge0$, $\varepsilon_Q,\delta_Q>0$, $h_Q\ge500$, $4\varepsilon_Q$ below the top support exponent and $8\varepsilon_Q$ below both chart widths. [`YM.ConnectedActivityE6.Target`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76).

The heart condition is
$$0\le\sigma_*,\quad\sigma_{E'}\le\sigma_*,\quad\sigma_*+1\le a_*,\quad\varepsilon_*>0,\quad a_*+3\varepsilon_*\le\mathrm e_Q,$$
$$\mathrm{ord}(E')\le J_*,\quad\mathrm{ord}(E')+(p_*+1)+p_*+2\le n_*,\quad p_*+1\le s_*,\quad k_*+1\le s_*,$$
with starred ray parameters. Tempered points have radius $\mathcal B(x)$, threshold $t(x)\le2t(\beta_F)$, and the stage's order, power and support exponent.

<a id="unit-limitations"></a>

## 7. What remains unexplained

Local analytic, compatibility and readiness conditions remain to be written out. Comparison-function existence does not supply coefficient matching. The singleton, weighted-cluster, full-bill and analytic-expansion inputs are not all checked here; readout, RG12 and R2I fragments also remain outside the detailed verification.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/III-15.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [III.10](III-10.md), [III.1](III-1.md), [I.1](I-1.md), [II.2](II-2.md), [III.5](III-5.md), [III.6](III-6.md), [III.11](III-11.md), [III.2](III-2.md), [II.1](II-1.md), [III.16](III-16.md), [III.9](III-9.md), [VIII.1](VIII-1.md), [III.4](III-4.md).

**Referenced by:** [III.2](III-2.md), [III.12](III-12.md), [III.13](III-13.md), [III.10](III-10.md), [III.9](III-9.md), [III.11](III-11.md), [III.14](III-14.md), [VIII.1](VIII-1.md), [III.4](III-4.md), [III.3](III-3.md).

## Lean source

**Source allocation:** 7,382 attributed lines; 1,053 line-counted declarations; 1,745 assigned declaration names. Of the assigned names, 1,568 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111) and the results it chains to — 4,201 lines.
- work package [`YM/Progress/DIRECTED_RECIPE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE) — 1,251 lines.
- work package [`YM/Next/SCHEDULE/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE) — 933 lines.
- work package [`YM/RemainderComparison/Cadenza/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza) — 186 lines.
- work package [`YM/RG05Readout/Test/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Test) — 62 lines.
- work package [`YM/RemainderComparison/Auxiliary/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Auxiliary) — 61 lines.
- work package [`YM/RemainderComparison/Funk/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Funk) — 61 lines.
- work package [`YM/RG05Readout/Offsets/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Offsets) — 49 lines.
- work package [`YM/RemainderComparison/Access/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access) — 47 lines.
- work package [`YM/RemainderComparison/Herbal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal) — 42 lines.
- work package [`YM/RemainderComparison/Gaussian/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gaussian) — 41 lines.
- work package [`YM/RemainderComparison/Chron/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron) — 40 lines.
- work package [`YM/RemainderComparison/Muse/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse) — 38 lines.
- work package [`YM/RemainderComparison/Portal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal) — 38 lines.
- work package [`YM/RG05Readout/Grants/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Grants) — 36 lines.
- work package [`YM/RemainderComparison/Lyric/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric) — 36 lines.
- work package [`YM/R2I/Campaign/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign) — 34 lines.
- work package [`YM/RG05Readout/Address/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Address) — 26 lines.
- work package [`YM/Integration/RG05Preconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction) — 25 lines.
- work package [`YM/RG12/Shadows/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows) — 25 lines.
- work package [`YM/RG12/Spins/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins) — 18 lines.
- work package [`YM/R2I/Buckram/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Buckram) — 17 lines.
- work package [`YM/RemainderComparison/Arc/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Arc) — 16 lines.
- work package [`YM/RemainderComparison/Cascade/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cascade) — 14 lines.
- work package [`YM/RemainderComparison/Sleet/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Sleet) — 13 lines.
- work package [`YM/Integration/ChronPreconstruction/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ChronPreconstruction) — 12 lines.
- work package [`YM/RemainderComparison/Halo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo) — 10 lines.
- work package [`YM/OPE/Therm/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Therm) — 9 lines.
- work package [`YM/RemainderComparison/Flues/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Flues) — 9 lines.
- work package [`YM/RemainderComparison/Exchange/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Exchange) — 8 lines.
- work package [`YM/RemainderComparison/Solo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo) — 5 lines.
- work package [`YM/RG12/Burst/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst) — 4 lines.
- work package [`YM/RemainderComparison/Passion/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Passion) — 4 lines.
- work package [`YM/RemainderComparison/Gear/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear) — 4 lines.
- work package [`YM/RemainderComparison/Ethereal/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Ethereal) — 3 lines.
- work package [`YM/RemainderComparison/WickReps/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/WickReps) — 2 lines.
- work package [`YM/RemainderComparison/Apo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Apo) — 1 lines.
- work package [`YM/RemainderComparison/Breeze/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Breeze) — 1 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`YM.Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13)
- [`YM.AnalyticBridge.VerifiedReset.Time.cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126)
- [`YM.AnalyticBridge.VerifiedReset.High.paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Higher.lean#L35-L41)
- [`YM.AnalyticBridge.VerifiedReset.Collection.Local.renew`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128)
- [`YM.AnalyticBridge.VerifiedReset.Low.plain_bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Quadratic.lean#L64-L83)
- [`YM.ConnectedActivityE6.Blaze.March.collars`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Armada.lean#L25)
- [`YM.ConnectedActivityE6.Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23)
- [`YM.Bid.quote`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L18)
- [`YM.PhysicalNext.Repeat.Jams.reunite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Purse.lean#L72-L85)
- [`YM.Gauge.colorMat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L64)
- [`YM.Gauge.projectColor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L96-L97)
- [`YM.Independent.constructionRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28)
- [`YM.PhysicalNext.Repeat.Legato.R2I.RG05Joint.selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114)
- [`YM.PhysicalNext.Repeat.Legato.R2I.RG05Joint.joinExpensesShipWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119)
- [`YM.Integration.RG05Preconstruction.ReadoutPurchase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L28-L39)
- [`YM.Integration.RG05Preconstruction.PrimitiveExtras`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L41-L43)
- [`YM.Integration.RiderResourceDynamics.defaultDynamics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RiderResourceDynamics.lean#L24-L25)
- [`Clocks.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean)
- [`YM.Next.Scheduling.Clock.light`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L100-L106)
- [`YM.Next.Scheduling.Clock.ceiling_cheaper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L110-L120)
- [`YM.Next.Scheduling.Clock.burnt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L141-L152)
- [`YM.Next.Scheduling.Clock.cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L38)
- [`YM.Next.Scheduling.Clock.gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L40)
- [`YM.Next.Scheduling.Clock.watch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L42)
- [`YM.Next.Scheduling.band_gap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L105-L111)
- [`YM.Next.Scheduling.Instrument.P`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L55)
- [`YM.Next.Scheduling.Instrument.t`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L59)
- [`YM.Next.Scheduling.inBand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L99)
- [`YM.Next.Scheduling.Wages.Path.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/GridCost.lean#L184-L197)
- [`YM.Next.Scheduling.Wages.detour`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L64-L65)
- [`YM.Next.Scheduling.Wages.projector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L67-L68)
- [`YM.Next.Scheduling.Wages.hangs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L70-L80)
- [`YM.Next.Scheduling.Wages.norm_projector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L82-L88)
- [`YM.Next.Scheduling.Wages.margin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L94)
- [`YM.Next.Scheduling.Wages.slotCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L95)
- [`YM.Next.Scheduling.Wages.price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L52-L54)
- [`YM.Next.Scheduling.Wages.startup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L78)
- [`YM.Next.Scheduling.Wages.scan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L85-L89)
- [`YM.PhysicalNext.Repeat.Daisy.pledgeQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Corral.lean#L26)
- [`YM.PhysicalNext.Repeat.Height.grow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L25)
- [`YM.PhysicalNext.Repeat.Height.pressureYoung`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L30-L35)
- [`YM.PhysicalNext.Repeat.Marlin.cannon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Marlin/Pylon.lean#L38-L49)
- [`YM.PhysicalNext.JointLoad.Heir.Release.Quotation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L23-L27)
- [`YM.PhysicalNext.JointLoad.Heir.Release.quoting`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L28-L29)
- [`YM.PhysicalNext.JointLoad.Heir.Walled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Depth.lean#L44)
- [`YM.PhysicalNext.JointLoad.Heir.Lute.Plented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L25-L26)
- [`YM.PhysicalNext.JointLoad.Heir.Release.accepts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L59)
- [`YM.PhysicalNext.JointLoad.Heir.Plays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Sonata.lean#L66-L75)
- [`YM.Pressure.radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22)
- [`YM.Pressure.betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23)
- [`YM.Pressure.temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25)
- [`YM.Progress.DirectedRecipe.Ingredients`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L32-L33)
- [`YM.Progress.DirectedRecipe.Ingredients.gates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L63-L68)
- [`Economy.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean)
- [`YM.Progress.DirectedRecipe.Payments.Pairing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L28-L36)
- [`YM.Progress.DirectedRecipe.Payments.shares`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L107-L117)
- [`YM.Progress.DirectedRecipe.Payments.inflation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L32)
- [`YM.Progress.DirectedRecipe.Payments.Rates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L33-L39)
- [`YM.Progress.DirectedRecipe.Payments.hardCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L42-L43)
- [`YM.Progress.DirectedRecipe.Payments.softCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L45-L46)
- [`YM.Progress.DirectedRecipe.Payments.rooted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L48-L49)
- [`YM.Progress.DirectedRecipe.Payments.Fittings`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L52-L62)
- [`YM.Progress.DirectedRecipe.Payments.drop_reserve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L64-L76)
- [`YM.Progress.DirectedRecipe.Payments.give`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L78-L86)
- [`YM.Progress.DirectedRecipe.Payments.blend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L88)
- [`YM.Progress.DirectedRecipe.Payments.merges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L98-L105)
- [`YM.Push.AbsoluteSums.Delay.fineMonitor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L24)
- [`YM.Push.PriceCompiler.StepStages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L27)
- [`YM.PhysicalNext.Repeat.Legato.R2I.Funded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73)
- [`YM.PhysicalNext.Repeat.Legato.R2I.Extras`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Expenses.lean#L35-L45)
- [`YM.RG.BudgetPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136)
- [`YM.RG.BudgetPoint.dirBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L141-L142)
- [`YM.RG.Healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41)
- [`YM.RG.Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40)
- [`YM.RG.Atom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86)
- [`YM.RemainderComparison.Reserve`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access/Geometry.lean#L25-L26)
- [`YM.RemainderComparison.Cadenza.Rays.Heart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Cord.lean#L50-L59)
- [`YM.RemainderComparison.Cadenza.Temper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Cord.lean#L63-L69)
- [`YM.RemainderComparison.Cadenza.Quarry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L21-L27)
- [`YM.RemainderComparison.Cadenza.Quarry.Financed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L34-L39)
- [`YM.RemainderComparison.Cadenza.Quarry.Bequest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L44-L45)
- [`YM.RemainderComparison.Cadenza.Quarry.Staked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L47-L51)
- [`YM.RemainderComparison.Cadenza.Instructions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L57-L60)
- [`YM.RemainderComparison.Cadenza.Coaxes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L35-L41)
- [`YM.RemainderComparison.Cadenza.Allot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L42-L44)
- [`YM.RemainderComparison.Cadenza.Quay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L46)
- [`YM.RemainderComparison.Chron.Glint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L49-L63)
- [`YM.RemainderComparison.Chron.Firmament`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L64-L66)
- [`YM.RemainderComparison.Chron.Contemple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L68-L71)
- [`YM.RemainderComparison.Chron.Pledge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L94-L95)
- [`YM.RemainderComparison.Chron.Pillar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L23-L28)
- [`YM.PhysicalNext.Repeat.Legato.Stagehands.News`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Rig.lean#L21-L22)
- [`YM.RemainderComparison.Gear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear/Class.lean#L25)
- [`YM.RemainderComparison.Halo.Presents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Cut.lean#L26-L29)
- [`YM.RemainderComparison.Halo.dyed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Strike.lean#L37)
- [`YM.RemainderComparison.Halo.gross`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Strike.lean#L39)
- [`YM.RemainderComparison.Herbal.Airstrip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L33-L39)
- [`YM.RemainderComparison.Lyric.Scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Flux.lean#L54-L59)
- [`YM.RemainderComparison.Lyric.ink`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L31)
- [`YM.RemainderComparison.Lyric.Premium`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L80-L89)
- [`YM.RemainderComparison.Lyric.epochs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L93-L120)
- [`YM.RemainderComparison.Lyric.radiusCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L35-L36)
- [`YM.RemainderComparison.Lyric.bidLift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L37-L42)
- [`YM.RemainderComparison.Lyric.notes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Plectrum.lean#L33)
- [`YM.RemainderComparison.Lyric.gathers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L49-L76)
- [`YM.RemainderComparison.Lyric.salaries`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Store.lean#L62-L63)
- [`YM.RemainderComparison.Muse.Roles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L63-L77)
- [`YM.RemainderComparison.Portal.Pan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Lamps.lean#L51-L58)
- [`YM.RemainderComparison.Portal.JMatch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Wire.lean#L80-L81)
- [`YM.RemainderComparison.Sleet.pigment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Sleet/Flint.lean#L42)
- [`YM.Work.G07.LeftBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Calculus.lean#L124-L129)
- [`YM.Work.G07.slot_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L165-L176)
- [`YM/RG05Readout/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-iii-15-1"></a>

- **K-III.15.1** [`currency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139) *(numbered result)* — Eventually in y, uniformly over beta in band, pair-step rates hold with the exponentially small strong and mild costs.

<a id="k-iii-15-2"></a>

- **K-III.15.2** [`tender`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133) *(numbered result)* — Separate hard and soft transfer costs with a rate relation suffice to obtain the combined Ingredients bound.

<a id="k-iii-15-3"></a>

- **K-III.15.3** [`slotPays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159) *(key result)* — A local slot observable satisfies a derivative bound with explicit slot cost on a healthy region of a finite site set.

<a id="k-iii-15-4"></a>

- **K-III.15.4** [`sails`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111) *(key result)* — For a simple gauge group, if all rates satisfy 3/8+rate<0, there exist data meeting the pre-stage launch (pledge) conditions for the all-order asymptotic proof.

<a id="k-iii-15-5"></a>

- **K-III.15.5** [`buoys`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58) *(key result)* — For a simple group and rate with 3/8+rate<0 the quay condition holds for all sufficiently large side lengths.

<a id="k-iii-15-6"></a>

- **K-III.15.6** [`rollBefore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L64-L80) *(key result)* — Beyond a size threshold, any financed poster extends to a financed quarry satisfying the instruction conditions eventually in x.

<a id="k-iii-15-7"></a>

- **K-III.15.7** [`quorum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Metro.lean#L29-L51) *(key result)* — For positive μ and a suitable heart condition there is a positive-parameter financed budget that is paid for all large x.

<a id="k-iii-15-8"></a>

- **K-III.15.8** [`compile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L41-L56) *(key result)* — Given admissible weights and index bounds, there exist four admissible functions such that the airstrip comparison estimate holds eventually in t.

<a id="k-iii-15-9"></a>

- **K-III.15.9** [`run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L82-L100) *(numbered result)* — A weighted sum over revealed semantic supports satisfies a quantitative retention bound, giving a uniform hit estimate under a veto condition.

<a id="k-iii-15-10"></a>

- **K-III.15.10** [`atlas`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo/Barque.lean#L21-L61) *(key result)* — For large L and every recorded setup there are rates and constants so that a captain structure exists and scale-data inquiries are paid.

<a id="k-iii-15-11"></a>

- **K-III.15.11** [`seeds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Nexus.lean#L12-L57) *(key result)* — For large side L there exist rates and constants such that eventually in x every setup admits a captain structure with the heavy, heroes and quarry properties.

<a id="k-iii-15-12"></a>

- **K-III.15.12** [`generation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L80-L96) *(key result)* — Under 3/8+rate<0, for large L every certified test is paid, with pad structure and role bounds with negative-rate errors.

<a id="k-iii-15-13"></a>

- **K-III.15.13** [`ramp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Tome.lean#L33-L65) *(key result)* — With inherited recurrence budgets, a captain structure exists and, for any scale data, yields horizon-type bounds with a negative exponent.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)

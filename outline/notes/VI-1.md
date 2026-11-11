# VI.1. Ward identities, the rotation action and the conserved stress tensor — detailed notes

> The full account of unit VI.1: every proposition with its proof sketch, checked against the Lean in two rounds and edited. The condensed outline and the map of the Lean are on the [unit page](../units/VI-1.md).

[Unit page](../units/VI-1.md) · [All units](../units.md) · [Overview](../README.md)

**Part:** VI, symmetry: stress tensor and Ward identities. **Lean:**

- the work items A01–A17, stated in [`YM/Bid/Angular.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean), combined in [`YM/Bid/Town.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean) and proved in [`YM/Work/A01`–`A17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work);
- the collinear flux estimate, in [`YM/Next/ROTATIONS`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS) with [`YM/Axis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Axis);
- the analytic continuation, in [`YM/Ward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward);
- the scaling comparison, in [`YM/Climb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb);
- the descent of the rotation action, in [`YM/Spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin);
- the assembled record, in [`YM/Org/Twist.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean);
- in part, [`YM/Push/STRESS_FLUX`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX), [`YM/Shift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift) and [`YM/Next/BOUNDARY`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY).

**Size (approximate):**

- 7,704 lines are assigned to this unit and used by the main theorem. Of these, about 900 (`Shift` and most of `Next/BOUNDARY`) are reconstruction material for V.2, and about 1,000 (`STRESS_FLUX`) are free-field algebra used in VII.2 (Remark in §4.10).
- About 6,100 further lines of `Next/ROTATIONS` carry the collinear flux estimate. The declaration table files them under III.6, but they belong here, and the III.6 note says so too.

**Conventions.**

- *Table.* $S$ is the limit table of IV.1. For labels $v_i\in F_{d_i}$ and $x\in\mathrm{Conf}_n$ (pairwise distinct points of $\mathbb R^4$), $S(v_1,\dots,v_n;x_1,\dots,x_n)$ is a correlation kernel, smooth on $\mathrm{Conf}_n$.
- *Label spaces.* $F_d$ is the finite-dimensional complex space of labels of degree $\le d$ modulo null labels. It has inclusions $\iota=\iota_{d\to e}$, a unit $\mathbf 1_d$, the action $M_\sigma$ of the signed permutation matrices $\sigma\in B_4\subset O(4)$, and an antilinear conjugation $\Gamma$.
- *Euclidean axioms*:
  - permutation symmetry, normalisation of the empty correlation, deletion of unit insertions, and translation invariance;
  - covariance under $B_4$ and $\Gamma$;
  - reflection positivity in the coordinate hyperplanes, for point words and for smeared tests;
  - smoothness on configuration space;
  - for each fixed arity, labels and derivative order $j$, constants $C\ge0$ and $A\in\mathbb N$ such that $\|D^jS(x)\|\le Cr^{-A}$ whenever $0<r\le1$ and the points are separated by at least $r$ in the maximum norm. The constants are uniform in the positions.
- *Differential plan.* Complex linear maps $\partial_a:F_d\to F_{d+1}$ satisfying three laws:
  - the *derivative law* $S(\dots,\partial_av_k,\dots;x)=\partial_{x_k^a}S(\dots,v_k,\dots;x)$;
  - the *inclusion law* $S(\dots,\iota v_k,\dots)=S(\dots,v_k,\dots)$;
  - *orientation*: $\Gamma$ and $M_\sigma$ commute with the inclusions, $\partial$ commutes with $\Gamma$, and $M_\sigma\partial_b=\sum_a\sigma_{ab}\,\partial_aM_\sigma$. Commutation of $\partial$ with the inclusions follows from the inclusion and derivative laws.
- *Rotations.* $\mathfrak{so}(4)$ is the space of real skew $4\times4$ matrices with $[K,K']=KK'-K'K$. $K^{(ba)}=E_{ba}-E_{ab}$ generates the rotation field $x_ae_b-x_be_a$.
- *Spin rows.* A system of spin rows is a family of $\mathbb R$-linear maps $T:\mathfrak{so}(4)\to\mathrm{End}_{\mathbb C}F_d$.
- *Angular sum.* For spin rows $T$ and maps $P_b:F_d\to F_{d+1}$,

$$\mathcal W_K[T,P](q;x)=\sum_{i=1}^n\Big[S(\dots,T_Kq_i,\dots;x)+\sum_b(Kx_i)_b\,S(\dots,P_bq_i,\dots;x)\Big],\qquad \mathcal W_K[T]:=\mathcal W_K[T,\partial].$$
  By the derivative law, $\mathcal W_K[T]=0$ says $\frac{d}{dt}\big|_{0}S(q;e^{tK}x)=-\sum_iS(\dots,T_Kq_i,\dots;x)$. This is infinitesimal rotation covariance with spin part $T$.
- *Lorentz group.* Axes are numbered $0,1,2,3$; axis $3$ is time and $0,1,2$ are spatial. Write $e_t=e_3$. The axis $0$ used for the continuation in §4.4 has no distinguished physical role.
- All identities hold at separated points. No contact term is evaluated.

## 1. What this unit proves

**Inputs.**

- The table and its differential plan.
- An unnormalised stress $J=(J_{ab})$, $J_{ab}\in F_4$, with complex linear *raw translation maps* $p_a:F_d\to F_{d+1}$ and real linear *raw spin rows* $Y:\mathfrak{so}(4)\to\mathrm{End}\,F_d$. These satisfy the shell identities below with unknown right-hand sides.
- Free-Maxwell comparison data: a free table with its differential plan $\partial^{\rm free}$, rotation action $R^{\rm free}$ with generators $\mathcal L^{\rm free}_K$, stress $J^{\rm free}$ and Ward constant $\kappa\ne0$.
- A weak scaling comparison of $S$ with the free table.

The table and differential plan come from IV.1. The stress, shell maps and comparison data come from VI.2, using ultraviolet inputs as specified in §2. Every result below assumes the Euclidean axioms for $S$, unless it is a statement solely about groups or operators.

**Outputs.** Given the differential plan and the comparison inputs, the unit constructs:

- an action of $O(4)$ on every $F_d$ whose generators are $c^{-1}Y$;
- $O(4)$-covariance of $S$;
- a conserved, symmetric, real, $O(4)$-tensorial stress $J'$ satisfying the Ward identity (13) of the assessment and its rotation analogue;
- a Lorentz action on the labels, compatible with the rotation action.

**Shells and stress laws.** A *window* for $x=(x_0,\dots,x_n)\in\mathrm{Conf}_{n+1}$ is a real function $\chi\in C^\infty_c(\mathbb R^4)$ that equals $1$ near $x_0$ and whose closed support excludes $x_1,\dots,x_n$. For $B\in F_d$ and tags $q$ at $x_1,\dots,x_n$, the two shells are

$$\Phi^{\rm tr}_\chi(b)=-\sum_a\int\partial_a\chi(y)\,S\big(J_{ab}(y),B(x_0),q\big)\,dy,\qquad \Phi^{\rm rot}_\chi(K)=-\sum_{a,b}\int\partial_a\chi(y)\,\big(K(y-x_0)\big)_b\,S\big(J_{ab}(y),B(x_0),q\big)\,dy .$$

The integrands vanish near all insertions. Given maps $P_b:F_d\to F_{d+1}$ and $A:\mathfrak{so}(4)\to\mathrm{End}\,F_d$, the triple $(J;P,A)$ satisfies the *stress laws* if

$$\Phi^{\rm tr}_\chi(b)=S(P_bB(x_0),q)\qquad\text{and}\qquad\Phi^{\rm rot}_\chi(K)=S(A_KB(x_0),q)$$

for all windows, all $B$ and all $q$ ([`Table.StressLaws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97), [`shellGrad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L79-L81), [`shellSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L84-L86), [`Window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L72-L73)).

**Raw hypotheses (R)** ([`Climb.Pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69)):

- $J$ is *conserved*: symmetric, $\Gamma$-real, and $\sum_a\partial_aJ_{ab}=0$ in $F_5$ ([`Conserved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L59-L62));
- $J$ is *raw-tensorial*: $M_\sigma J_{ab}=\sum_{ij}\sigma_{ia}\sigma_{jb}J_{ij}$ for $\sigma\in B_4$ ([`RawTensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L68-L70));
- $(J;p,Y)$ satisfies the stress laws.

**Proposition VI.1.1 (collinear rotation Ward identity and line sums).**

*Hypotheses.*

- $S$ satisfies the Euclidean axioms.
- $\partial$ satisfies the derivative law and orientation.
- $(J,p,Y)$ satisfies (R).

*Conclusions.*

- (i) Let $x\in\mathrm{Conf}_n$ have all its points on a coordinate axis $\mathbb Re_l$. Then for every $K\in\mathfrak{so}(4)$ and all tags $q$: $\mathcal W_K[Y,p](q;x)=0$.
- (ii) (Line sums.) Let $x\in\mathrm{Conf}_n$ lie on $\mathbb Re_l$, let $j\neq l$, and let $v_1,\dots,v_n\in F_d$. Then $\sum_iS(v_1,\dots,p_jv_i,\dots,v_n;x)=0$.

*Status:* theorem.

- It answers the request [`Bid.Miles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L13-L15) through [`Outer.miles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L123).
- The analytic input is the exterior flux estimate (Lemma VI.1.e). It uses reflection positivity and the polynomial bounds, but no mass gap or clustering.

*Lean:* [`Outer.outer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121), [`Bid.LineSum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L35-L36), [`Climb.localTurn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L72-L74).

**Proposition VI.1.2 (normalisation of the shell maps: $p=c\,\partial$).**

*Hypotheses.*

- $\partial$ satisfies all three laws.
- The ultraviolet record holds, in particular (R) and the weak comparison law against the free data (input 4 of §2).
- The free-Maxwell data hold (input 3 of §2).

*Conclusion.* There is a real $c\ne0$, independent of the degree and coordinate axis, such that:

- $p_a=c\,\partial_a$ on every $F_d$, for every $a$;
- the rescaled rows $D:=c^{-1}Y$ satisfy
  - (C) $\partial_bD_K+\sum_iK_{ib}\,\partial_i=D_K\,\partial_b$ on every $F_d$;
  - (L) $\mathcal W_K[D](q;x)=0$ for every configuration $x$ on a coordinate axis.

*Status:* theorem.

*Lean:* [`Bid.pressured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L49-L59), [`Bid.formed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L61-L78); the record is [`Climb.Crystal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L83-L87).

**Proposition VI.1.3 (rotation Ward identity at all separated configurations).**

*Hypotheses.*

- $S$ satisfies the Euclidean axioms.
- $\partial$ satisfies the derivative law.
- The spin rows $T$ satisfy (C) and (L).

*Conclusion.* $\mathcal W_K[T](q;x)=0$ for all $n$, all $x\in\mathrm{Conf}_n$, all tags $q$ and all $K$.

*Status:* theorem.

*Lean:* [`Ward.global`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139); the vanishing is [`Ward.Still`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L45); the hypotheses are [`Ward.commutes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L29-L30) and [`Ward.Collinear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L34-L35); the sum is [`Ward.angular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L25-L27).

**Proposition VI.1.4 ($\mathfrak{so}(4)$ brackets; A08).**

*Hypotheses.*

- $\partial$ satisfies the inclusion and derivative laws.
- $T$ satisfies the conclusion of VI.1.3.
- $T$ is *compatible* ([`Bid.Hyper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L16-L20)): it commutes with $\Gamma$ and with $\iota$, kills $\mathbf 1$, and $M_\sigma T_K=T_{\sigma K\sigma^{-1}}M_\sigma$.
- *Internal row erasure* holds ([`Org.erases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L149-L152)). That is, for some $N$ and all $d\ge N$, let $\Delta:\mathfrak{so}(4)\times\mathfrak{so}(4)\to\mathrm{End}\,F_d$ be a real bilinear family of complex linear endomorphisms with these properties ([`Org.Winds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L141-L146)):
  - it is covariant under signed permutations of determinant $1$;
  - it is $\Gamma$-real;
  - it kills $\mathbf 1$;
  - it is alternating;
  - for every $e\le d$ and $u,v$, $\Delta(u,v)$ preserves $\iota_{e\to d}(F_e)$.

  If moreover $\sum_iS(w_1,\dots,\Delta(u,v)w_i,\dots,w_m;x)=0$ for all $m$, all $x\in\mathrm{Conf}_m$, all $u,v\in\mathfrak{so}(4)$ and all $w\in F_d^m$, then $\Delta=0$.

*Conclusion.* $[T_u,T_v]=T_{[u,v]}$ on every $F_d$.

*Status:* theorem. Erasure for $S$ is itself proved (A07, Lemma VI.1.q).

*Lean:* [`Work.A08.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247) for [`Bid.A08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L76-L78); the conclusion is [`Bid.Brackets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L74).

**Proposition VI.1.5 (descent of the free rotation action).** Under the hypotheses of VI.1.2, let $c$ be its normalisation constant and put $D=c^{-1}Y$.

*Conclusion.* There are complex linear isomorphisms $V_d:F^{\rm free}_d\to F_d$ with these properties:

- $V_dM^{\rm free}_\sigma=M_\sigma V_d$ and $V_d\Gamma^{\rm free}=\Gamma V_d$;
- $D_KV_d=V_d\,\mathcal L^{\rm free}_K$ for all $K\in\mathfrak{so}(4)$.

Hence $R_d(k):=V_d\,R^{\rm free}_d(k)\,V_d^{-1}$, $k\in O(4)$, is a continuous representation of $O(4)$ on $F_d$. It equals $M_\sigma$ on $B_4$, commutes with $\Gamma$, and has infinitesimal generator $D$. Call such an action, with its specified generators, a *rotation port*. The Ward identity of VI.1.3 holds for $D$.

*Status:* theorem. The $V_d$ are chosen independently for each $d$. Compatibility with the inclusions comes later (VI.1.6).

*Lean:* [`Climb.descends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L90-L98), [`Spin.produces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L26-L47), [`Spin.meet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L134-L157), [`Bid.services`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L124-L157); the transported action is [`Spin.morph`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L22-L24) and a port is [`Spin.Port`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L13-L19).

**Proposition VI.1.6 (covariance and the rotation laws; A14).**

*Hypotheses.*

- $\partial$ satisfies the inclusion and derivative laws.
- $R$ is a port with generators $T$.
- $\mathcal W_K[T]=0$ on all of $\mathrm{Conf}$.

*Conclusions.*

- $R$ is *oriented*: $S(R(k)v_1,\dots,R(k)v_n;kx_1,\dots,kx_n)=S(v;x)$ for all $k\in O(4)$ and all $x\in\mathrm{Conf}_n$.
- $R$ satisfies the *rotation laws*: it fixes $\mathbf 1$; it commutes with $\iota$; it acts on derivatives as a vector, $R_{d+1}(k)\,\partial_av=\sum_ik_{ia}\,\partial_iR_d(k)v$; and it keeps the port properties.

*Status:* theorem. It uses A13: $O(4)$ is generated by $B_4$ and the one-parameter groups $e^{tK}$.

*Lean:* [`Work.A14.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L417-L420) for [`Bid.A14`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L105-L107); [`Rotation.Laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L31-L42), [`Rotation.Oriented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L46-L48); [`Work.A13.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L191-L200).

**Proposition VI.1.7 (the averaged stress tensor and the Ward identity (13); A15).**

*Hypotheses.*

- $\partial$ satisfies the derivative law.
- $R$ is a rotation action satisfying the rotation laws, and $R$ is oriented.
- $p=c\,\partial$ with $c\neq0$, and $(J,p,Y)$ satisfies (R).
- The generators of $R$ are $c^{-1}Y$.

*Conclusion.* There is a stress $J'$ with these properties:

- it is conserved, i.e. symmetric, real and divergence-free;
- it is *tensorial*: $R_4(k)J'_{ab}=\sum_{ij}k_{ia}k_{jb}J'_{ij}$ for all $k\in O(4)$;
- $(J';\partial,c^{-1}Y)$ satisfies the stress laws.

The translation law is the Ward identity (13):

$$-\sum_a\int\partial_a\chi(y)\,S\big(J'_{ab}(y),B(x_0),q\big)\,dy=\frac{\partial}{\partial x_0^b}S\big(B(x_0),q\big).$$

*Status:* theorem. It uses A10.

*Lean:* [`Work.A15.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192) for [`Bid.A15`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L109-L112); [`Table.Tensorial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L64-L66).

**Proposition VI.1.8 (Lorentz action on the labels).** For (b)–(c), assume the hypotheses of VI.1.2 and choose $V_d$, $R$ and $J'$ as in VI.1.5–7.

*(a)* $SO^+(1,3)$ is generated by the spatial rotations and the coordinate boosts (A16).

*(b)* Let $B^{\rm free}$ be the Lorentz action on the free labels, which is part of the free data. Let $B_d(\Lambda)=V_dB^{\rm free}_d(\Lambda)V_d^{-1}$. Then $B_e(\Lambda)\,\iota=\iota\,B_d(\Lambda)$ for all $d\le e$ and $\Lambda\in SO^+(1,3)$ (A17).

*(c)* The compatible actions $B_d$ define a representation on the union of the label spaces. For every degree $d$ and spatial axis $i$:

- the action on $F_d$ is continuous;
- $\frac{d}{ds}\big|_{s=0}B_d(\mathrm{boost}_i(s))v=-i\,D_{K^{(3i)}}v$ for every $v\in F_d$;
- $B_d$ equals $R_d$ on spatial rotations;
- $B_d$ commutes with the time-reflection adjoint $M_{\theta_t}\Gamma$, where $\theta_t$ reverses the time coordinate.

*Status:* theorems.

*Lean:* [`Work.A16.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L91-L101) for [`Bid.A16`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L116); [`Work.A17.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L88-L101) for [`Bid.A17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L118-L119); [`Spin.wand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L24-L25), [`Spin.reach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L39-L74), [`Boundary.Spins.Descends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L26-L35).

**Proposition VI.1.9 (the assembled record).** Let the free data, the infrared triple $(J,p,Y)$ and the ultraviolet record be as in §2 (inputs 3–4). Then the six assembly clauses hold: compatibility of the raw maps, their normalisation, descent of rotations, covariance, normalisation and averaging of the stress, and compatibility of the Lorentz action with inclusions.

Hence, if $\partial$ satisfies the inclusion and derivative laws, there exist $c$, $(V_d)$ and $J'$ such that the following local field laws hold:

- the normalisation of VI.1.2 for $c$;
- $V_d$ intertwines $M$ and $\Gamma$;
- $R=V R^{\rm free}V^{-1}$ with generators $c^{-1}Y$ is a port;
- the three plan laws; the rotation laws and orientation of $R$; each $F_d$ is isomorphic to $F^{\rm free}_d$ compatibly with $M$ and $\Gamma$; and $J'$ is conserved, tensorial and satisfies the stress laws with $(\partial,c^{-1}Y)$.

There is also a Lorentz action descending from $R$ (VI.1.8(c)).

*Status:* theorem conditional on the inputs in §2. Their production uses VI.2 and the ultraviolet units; VIII.1 assembles the resulting local field laws with the phase and reconstruction data.

*Lean:* [`Outer.commission`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS.lean#L126-L131), [`Bid.station`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L159-L168), [`Org.Commission`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L29-L43), [`Commission.picks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L45-L53), [`Org.Tab`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24), [`Spec.Locals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43).

## 2. What it uses

**Inputs from other units.**

1. **IV.1 (limit table and differential plan).**
   - The Euclidean axioms [`Table.Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148).
   - The plan laws [`DiffPlan.Derivatives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L61-L64), [`Inclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60) and [`Orientation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72).
   - Also: $\partial_a\partial_b=\partial_b\partial_a$; injectivity of $\iota$; the unique lift of compatible maps to the union of label spaces.
2. **V.1 (OS chambers).**
   - For each coordinate axis there is the Osterwalder–Schrader Hilbert space of reflection in $\{x_a=0\}$ ([`OS.Chamber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61)). It carries a self-adjoint contraction semigroup $e^{-tH}$, the unitary translations parallel to the hyperplane, and their joint spectral measure.
   - It is built from the axioms by [`OS.realization`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L106-L107), so it is not an assumption.
3. **VI.2 (free-Maxwell data)** [`Org.MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170):
   - a free table with its axioms;
   - free comparison data ([`Climb.Lighthouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29)), i.e. $(\partial^{\rm free},R^{\rm free},J^{\rm free},\kappa\ne0)$, with laws [`Goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42):
     - plan laws;
     - rotation laws and orientation;
     - stress laws for $(J^{\rm free};\kappa\partial^{\rm free},\kappa\mathcal L^{\rm free})$;
     - $\partial^{\rm free}$ is nonzero on $F^{\rm free}_4$;
     - at every sufficiently large degree, finitely many collinear readouts whose common kernel within the free vector-map space is $\mathbb R\partial^{\rm free}$;
   - a free Lorentz action $B^{\rm free}$ descending from $R^{\rm free}$;
   - the perfect commutator relations among the free generators;
   - Casimir projection polynomials;
   - free row erasure.

   The free-data producer [`Maxwell.Free.maxwell_supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48) and its stress replacement [`FreeStress.fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150) are supplied in VI.2. A12 and A10+A09 give the Casimir polynomials and the generator relations. These free-data producers assume $G$ simple.
4. **VI.2 and III.11 (raw stress, shell maps and weak comparison).**
   - [`Org.IR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175) is the triple $(J,p,Y)$.
   - [`Org.UV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186) contains the lattice and extraction data, corrected-field bounds and Euclidean axioms for $S$; orientation of $\partial$; (R); the *weak action law*; and grid approximations.
   - The weak action law [`Climb.ActLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L50-L51) says: for every arity bound $N$, degree bound $d$, derivative bound $m$ and $R\ge1$, there is a *scaling system* $X=(r_k\downarrow0,\ \xi_k>0,\ U_{k,e}:F^{\rm free}_e\to F_e)$ ([`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31)) with a *track* ([`Climb.Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48)):
     - every $U_{k,e}$ is a complex linear isomorphism; for $e\le\max(d,4)$ it intertwines $M$, $\Gamma$ and the unit, and these maps respect inclusions within that degree range;
     - for $n\le N$, labels of degree at most $d$, and $j\le m$, $D_y^jS(U_kv;r_ky)\to D^jS^{\rm free}(v;y)$ uniformly on the compact set $\|y\|\le R$ with pairwise maximum-norm separation at least $R^{-1}$;
     - $\xi_k^{-1}r_k^4\,U_{k,4}^{-1}J_{ab}\to J^{\rm free}_{ab}$ for every $a,b$.
   - The scaling system may depend on all four bounds. Any finite collection of requests can be combined by increasing them.
   - The conserved-current construction produces the raw stress; the annular-field construction supplies its shell maps. The immediate suppliers are [`Acme.readyA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30) and [`Acme.shells_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Orange.lean#L33-L63). They provide the weak comparison and shell laws for this same stress.
5. **VIII.1 (assembly).** Combines the local field laws obtained here with the phase decomposition and reconstruction.

**Standard mathematics.**

- Ward identities for a conserved symmetric stress tensor: the flux of $J_{ab}V_b$ through a closed shell, for a Killing field $V$ (Noether; e.g. Itzykson–Zuber §2-4).
- Osterwalder–Schrader reconstruction and the transfer operator along a coordinate axis (Osterwalder–Schrader 1973/1975; Glimm–Jaffe, *Quantum Physics*, ch. 6 and 19). Spectral theorem and Laplace representations.
- Analytic vectors (Nelson, Ann. of Math. 1959). Holomorphic contraction semigroups (Reed–Simon II). Formal uniqueness at a noncharacteristic line (as proved in VI.1.m). Identity theorem for real-analytic functions.
- Representation theory:
  - Haar measure and Weyl's unitarian trick;
  - the Casimir element;
  - McWeeny purification $x\mapsto3x^2-2x^3$ of approximate idempotents (Rev. Mod. Phys. 1960).
- Groups and ODEs:
  - Cartan–Dieudonné ($O(n)$ is generated by reflections; Mathlib);
  - Givens rotations;
  - generation of $SO^+(1,3)$ by rotations and boosts;
  - Picard–Lindelöf uniqueness.

**Imported constants and assumptions.**

- $\kappa\neq0$ comes from the chosen free data. The initial free-data constructor has $\kappa=-\tau$; the stress replacement used in assembly supplies a common nonzero Ward constant without identifying its numerical value.
- $c$ is determined by $p=c\,\partial$. Along scaling systems satisfying the degree-$4$ requests in VI.1.g, $c/\xi_k\to\kappa$ (Lemma VI.1.u).
- The flux estimate uses $\lambda_k=e^k$ and the exponents $100,150,300,3000$. These are internal choices.
- Inputs 3–4 are hypotheses of the assembly theorem; their existence is supplied by the units cited above.

## 3. Strategy

Conservation and the raw shell laws make the maps $p$ and $Y$ compatible with inclusions, conjugation and signed permutations. Moving the center inside a fixed window gives their commutators with derivatives. To obtain a global rotation identity on a coordinate line, test the stress against a compact vector field that equals the rotation field near the insertions. Its cutoff has widths $\lambda^{100}$ in the rotation plane, $\lambda^{150}$ in the line direction if that direction is transverse to the plane, and $\lambda^{300}$ in the remaining directions. Two derivative terms cancel by symmetry of the stress. Reflection positivity and spectral estimates make the remaining exterior flux $O(\lambda^{-1})$, so the collinear angular sum vanishes. Translation along the line then gives the transverse translation sums.

The free comparison identifies $p=c\partial$: finitely many collinear tests have a one-dimensional kernel in the free vector-map space, and this rank condition persists along a sufficiently accurate scaling system. Dividing by $c$ gives the collinear Ward identity for $D=c^{-1}Y$. Its derivatives determine the transverse Taylor series of each two-point function from an explicit analytic comparison function built from radial correlations. Positivity turns the resulting bounds on Gram-kernel jets into factorial bounds for derivatives of the corresponding OS vectors. Correlations are therefore analytic when one insertion moves while remaining extreme in some coordinate. The Ward identity propagates along finite chains of these moves; density gives it at every separated configuration.

Differentiating the global Ward identity twice gives the $\mathfrak{so}(4)$ brackets, after row erasure is transported from the free theory. A relative-Casimir polynomial and McWeeny iteration produce exact intertwiners with the free rotation generators. Transporting the free action through them gives $O(4)$ actions on each degree. The Ward identity implies covariance, which in turn gives compatibility with inclusions, the unit and derivatives. Haar averaging of $c^{-1}J$ gives the tensorial stress $J'$ without changing its Ward laws. The free Lorentz action is transported through the same intertwiners; uniqueness for the boost ODEs makes it compatible across degrees.

## 4. Steps

### 4.1 Local structure of the raw shell maps (A01–A03)

**Lemma VI.1.a (A01: compatibility).** Assume (R), the derivative law and the inclusion law. Then:

- $p$ lies in the *colour space* ([`Climb.ColorLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L89-L91)): $p_i\mathbf 1=0$; $p$ commutes with $\iota$ and $\Gamma$; $M_\sigma p_i=\sum_j\sigma_{ji}\,p_jM_\sigma$.
- $Y$ is compatible ([`Bid.Hyper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L16-L20)).

*Proof sketch.* Each identity is tested against all words in a fixed window. The shells are fluxes of $J$ against $\partial\chi\otimes V$, with $V\equiv e_i$ for $p$ and $V(y)=K(y-x_0)$ for $Y$.

- *Unit.* If the label at the centre is $\mathbf 1$, the unit axiom deletes that insertion. Integrating by parts against $\chi$ gives $\int\chi\,\mathrm{div}\big(\sum_bV_bS(J_{ab}(y),\dots)\big)$, and this vanishes. Conservation handles one term. The Killing property ($\partial_aV_b$ antisymmetric) together with $J_{ab}=J_{ba}$ handles the other.
- *Mirrors.* Substitute $y\mapsto\sigma y$ and use the window $\chi\circ\sigma^{-1}$ at $\sigma x$. Then use $B_4$-covariance of $S$, raw tensoriality of $J$, and $\sigma K(\sigma^{-1}\cdot)=(\sigma K\sigma^{-1})\cdot$.
- *Reality.* Reality of $S$ and $J$, and the weights are real.
- *Inclusions.* The inclusion law inside the integrand.
- The orientation hypothesis is not used.

*Lean:* [`Work.A01.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L115-L117), [`translation_color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L27-L76), [`angular_hyper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L78-L112), [`cutoff_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Conserve.lean#L154-L181), [`flux_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Conserve.lean#L183-L203), [`flux_mirror`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Mirror.lean#L161-L194).

**Lemma VI.1.b (A02: moving the centre).** Assume (R) and the derivative law. Then

$$\partial_bY_Ku+\sum_cK_{cb}\,p_cu=Y_K\,\partial_bu\qquad\text{and}\qquad\partial_b\,p_i=p_i\,\partial_b$$

on every $F_d$ ([`Bid.ShellCom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L27-L29)).

*Proof sketch.* Keep $\chi$ fixed and move the centre to $x_0+te_b$; for small $t$, $\chi$ is still a window. Differentiate both shell laws at $t=0$.

- The right-hand sides give $S(\partial_bY_KB)$ and $S(\partial_bp_iB)$, by the derivative law.
- On the left, the kernel's $t$-derivative replaces $B$ by $\partial_bB$. The weight $K(y-x_0-te_b)$ contributes $-\sum_cK_{cb}$ times the translation shell.
- Differentiation under the integral is dominated on $\mathrm{supp}\,\nabla\chi\times[-r,r]$, so no near-diagonal behaviour is needed.

*Lean:* [`Work.A02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L272-L307), [`deriv_shellSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L213-L259), [`stable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L37-L48).

**Lemma VI.1.c (A03: transversality).** Assume the plan laws, the colour law for $p$, the second identity of VI.1.b, and the line sums of VI.1.1(ii). Then $p$ and $\partial$ are *transverse* ([`Climb.transverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Peaks.lean#L57)). That is: for $x\in\mathrm{Conf}_n$ on $\mathbb Re_a$, $b\neq a$ and $v\in F_d^n$, the function $y\mapsto\sum_kS(v_1,\dots,P_bv_k,\dots,v_n;y)$ has vanishing jet of every order at $x$, for $P=p$ and for $P=\partial$.

*Proof sketch.*

- The inclusion law extends the line sums to labels of mixed degree.
- By $\partial p=p\,\partial$ and the derivative law, a derivative of such a row sum in a direction $e_{k,c}$ is the same kind of row sum with $\partial_c$ inserted at slot $k$. Induction on the order, quantified over all words, reduces every jet to a line sum at $x$.
- For $\partial$, the line sum is translation invariance, and the colour law is [`Climb.native`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L93-L96), which uses orientation.

*Lean:* [`Work.A03.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L197-L202), [`all_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L51-L80), [`row_D`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L83-L103), [`full_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L152-L186).

### 4.2 The collinear Ward identity

**Lemma VI.1.d (flux identity).** Assume (R) and the derivative law. Let $x\in\mathrm{Conf}_n$ and $K\in\mathfrak{so}(4)$. Let $F$ be a smooth compactly supported vector field that equals $y\mapsto Ky$ near every $x_i$. Then

$$\mathcal W_K[Y,p](q;x)=-\int\sum_{a,b}\partial_aF_b(y)\,S\big(J_{ab}(y),q;x\big)\,dy .$$

*Proof sketch.*

- Choose disjoint windows $\chi_i$ around the $x_i$, and split $F=(F-u)+u$ with $u=\sum_i\chi_i\,K(\cdot)$.
- The flux of $F-u$ vanishes: it is a sum of constant-field fluxes against a cutoff supported away from all points, which are zero by conservation (as in VI.1.a).
- For $u$, write $\partial_a(\chi_iKy)_b=\partial_a\chi_i\,(Ky)_b+\chi_iK_{ba}$. The second term pairs to zero with the symmetric $J$.
- In the first term, write $Ky=K(y-x_i)+Kx_i$. These produce, at $x_i$, the rotation shell and $(Kx_i)_b$ times the translation shell. Use permutation symmetry to place $x_i$ in the first slot.
- The shell laws turn these into the two terms of $\mathcal W$.

*Lean:* [`Outer.flux_value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L84-L113), [`sands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L40-L64), [`paid_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L66-L82).

**Lemma VI.1.e (exterior flux estimate).** Fix data and cutoff field as follows.

- Fix axes $a\neq b$ and a line direction $l$. Put $\lambda=\lambda_k=e^k$, with $k\to\infty$.
- Let $\eta$ be an even smooth bump equal to $1$ on $|s|\le1$ and zero for $|s|\ge2$, and put $\ell(s)=s\eta(s)$. Then $\ell$ is odd and equals $s$ on $|s|<1$. Its derivative $\ell'$ is even, compactly supported and equal to $1$ on $|s|<1$.
- Put $\mathrm{petal}_{ab}(y)=\lambda^{100}\,\ell(\lambda^{-100}y_a)\prod_{j\ne a}\ell'(\lambda^{c_j}y_j)$, with $c_j=-100$ for $j\in\{a,b\}$, $c_l=-150$ if $l\notin\{a,b\}$, and $c_j=-300$ otherwise.

*Hypotheses.*

- $J$ is conserved and raw-tensorial.
- $\partial$ satisfies the derivative law and orientation.
- $x\in\mathrm{Conf}_n$ lies on $\mathbb Re_l$.
- $d\neq a$.

*Conclusion.* For every fixed tuple of tags $q$, the integrand is absolutely integrable for all sufficiently large $k$, and $\int\partial_d\,\mathrm{petal}_{ab}(y)\,S\big(J_{db}(y),q;x\big)\,dy=O(\lambda^{-1})$. The constant may depend on the tags, configuration, axes and stress, but not on $k$. The integrand is supported in the exterior shell $\lambda^{-c_d}\le|y_d|\le2\lambda^{-c_d}$.

*Proof sketch.*

- *Cluster form.* Off the insertions, $S(J_{db}(y),q;x)=\langle\bar B;J_{db}(y)\rangle$. Here $B$ is the reflected word of the collinear insertions. Its insertion points have transverse coordinates $0$ ([`collimated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L84-L103)).
- *Parity.* Decompose $B$ into components of definite reflection parity in each axis. Only the component odd in $a$ and $b$ survives integration against the test ([`Yard.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean): [`pick_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L49-L77)).
- *Laplace representation.* Represent the correlation through the OS space of axis $d$. Because the test vanishes for $|y_d|<\lambda^{-c_d}$, the $y_d$-integral becomes a Laplace transform. Its time factor satisfies $|\mathrm{Lap}(E)|\le C\lambda^{c_d}/(E+\lambda^{c_d})$, paired with the polarised spectral measure $\nu_d(B,J_{db})$ of the transfer operator ([`YM/Axis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Axis); [`exterior_size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Vanishing.lean#L68-L120)).
- *Outside the low box.* Where $E>1$ or some $|p_j|>\lambda^{1+c_j}$, the contribution is $O(\lambda^{-\infty})$. This uses only Schwartz decay of the profiles and the zeroth moment.
- *Inside the box.* A weighted Cauchy–Schwarz (Young) inequality splits the bound between $\nu_d(B)$ and $\nu_d(J_{db})$.
- *Shear case $d\notin\{a,b\}$.*
  - The line cost of the cluster is $\int_{E\le1}(E+\lambda^{-3000})^{-1}\prod_jh_j\,d\nu_d(B)=O(\lambda^{1})$ for $d=l$, and $O(\lambda^{150})$ otherwise.
  - The point cost $\int_{E\le1}(E+\lambda^{c_d})^{-1}\prod_jh_j\,d\nu_d(J)=O(\lambda^{\delta})$ holds for every $\delta>0$.
  - Here $h_j$ are fixed nonnegative even smooth bumps, rescaled in $L^1$ at widths $\lambda^{1+c_j}$; products run over $j\ne d$.
  - Before multiplication by the prefactor $\lambda^{100}$ in the cutoff, the exponent is at most $-146$.
- *Diagonal case $d=b$.*
  - $J_{bb}$ is even in every axis, so the mixed-parity point estimate does not apply. Split at $E=\lambda^{-3000}$.
  - Above the split, the cluster's line cost is paired with the *mass estimate* $\int_{E\le1}EW^4(E+W)^{-4}\prod h_j\,d\nu_b(J_{bb})=O(\lambda^{\delta}W^4)$ for every $\delta>0$, at $W=\lambda^{-99}$.
  - Below the split, the packet estimate gains $\lambda^{-1500}$; the line estimate then suffices with a polynomial bound on the stress measure.
- *Point cost.* Proved by a *sign alternation*. The same Euclidean integral is a positive spectral pairing along one axis and minus a positive pairing along an axis of opposite parity. Moment-subtracted profiles have Laplace responses bounded below by $c/(E+w)$ down to $E=0$. Walking through the axes, with orders chosen backwards, moves every profile to scale $\ge1$ at subpower cost. These estimates also control the contribution at zero energy and require no spectral gap.
- *Moment bounds.* For an axis-pointlike weight, $\int e^{-tE}|p_j|^{2m}\,d\nu\le Ct^{-D}$ for $0<t\le1$ and $j\ne d$. The polynomial kernel bounds give this estimate by finite differences. Shifted cluster weights have analogous damped moment estimates.
- *Mass estimate.* Uses conservation in tested form. Tested conservation relates the contact-normalised two-point symbols by $B=p_i^2A+D_B$ and $C=p_i^2B+D_C$. Contact terms vanish on tests with enough zero moments; the remaining error estimates enter after normalisation by the band widths. Positivity gives alternating signs for the three residual band differences. Comparing the bands $W$ and $2W$ bounds the positive residual, which dominates the displayed mass integral.
- The mass estimate uses conservation, the derivative law and orientation. Raw tensoriality supplies the parities. Combining the two spectral regions gives $O(\lambda^{-101})$ before the prefactor $\lambda^{100}$, and hence the stated $O(\lambda^{-1})$ bound.

*Lean:* [`Outer.blows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L105-L114), [`point_moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Moments.lean#L228-L243), [`alternate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Switch.lean#L145-L160), [`budget_lock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Pivot.lean#L59-L72); the cutoff profile is defined in [`Patch.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Patch.lean); the line and point estimates are in [`Tunnel.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Tunnel.lean) and the mass estimate is in [`Mass.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Mass.lean). *(proof read for the reduction and combination of the spectral estimates; supporting analytic inputs remain as listed in §7)*

**Lemma VI.1.f (collinear identity and line sums).** This is Proposition VI.1.1.

*Proof sketch.*

- Take $F=\mathrm{vane}_{ab}$, with $F_b=\mathrm{petal}_{ab}$, $F_a=-\mathrm{petal}_{ba}$ and $F_d=0$ otherwise. For sufficiently large cutoff index it equals the Killing field of $K^{(ba)}$ near every $x_i$.
- In the flux of VI.1.d, the diagonal terms $\partial_a\mathrm{petal}_{ab}\,J_{ab}$ and $\partial_b\mathrm{petal}_{ba}\,J_{ba}$ cancel identically, since $\partial_a\mathrm{petal}_{ab}=\partial_b\mathrm{petal}_{ba}$ and $J$ is symmetric. What remains is a finite sum of integrals of VI.1.e.
- Hence $\mathcal W_{K^{(ba)}}[Y,p](q;x)$, which does not depend on $n$, is $O(e^{-n})$, so it is $0$.
- $\mathcal W_K[Y,p]$ is $\mathbb R$-linear in $K$, so it vanishes for all $K$.
- Translating the configuration by $e_l$ along its line changes $\mathcal W_{K^{(jl)}}[Y,p]$ by exactly $\sum_iS(\dots,p_jq_i,\dots)$. Both values vanish, which gives the line sums.

*Lean:* [`draught_river`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L31-L48), [`drained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L49-L56), [`axisTurn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L57-L67), [`fullTurn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L83-L96), [`stagger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L98-L108), [`vane_home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L21-L27).

### 4.3 Normalisation $p=c\,\partial$ (A04–A06)

**Lemma VI.1.g (scaling limits; A04, A05).** Assume the inclusion and derivative laws, (R), and the free data of §2. For each degree $d$, there are bounds $d_0,N_0,m_0,R_0$, with $R_0\ge1$, such that every track whose arity, degree, derivative and size bounds are at least $N_0,d_0,m_0,R_0$, respectively has the following limits. Write $X$ for its scaling system and define $\mathrm{aisle}_{k,d}(P)_a=U_{k,d+1}^{-1}P_aU_{k,d}$. At this fixed degree:

- $r_k\,\mathrm{aisle}_{k,d}(\partial)\to\partial^{\rm free}$;
- $(r_k/\xi_k)\,\mathrm{aisle}_{k,d}(p)\to\kappa\,\partial^{\rm free}$;
- $\xi_k^{-1}U_{k,d}^{-1}Y_KU_{k,d}\to\kappa\,\mathcal L^{\rm free}_K$.

*Proof sketch.*

- *First limit.* Test against a finite family of free correlations that is faithful on $F^{\rm free}_{d+1}$. The chain rule gives the factor $r_k$. Then use first-order jet convergence, and invert by finite-dimensional linear algebra.
- *Second and third limits.* Write the shell law at $r_kx$ with the window $\chi(\cdot/r_k)$. Substituting $y=r_kz$ produces $r_k^4\cdot r_k^{-1}$. For the translation shell, multiplication by $r_k/\xi_k$ gives the stress factor $\xi_k^{-1}r_k^4J$. For the rotation shell, the weight $K(y-r_kx_0)=r_kK(z-x_0)$ supplies the additional factor, so the multiplier is $\xi_k^{-1}$. The stress convergence and uniform kernel convergence on the compact shell supports give the free shell laws. Finite faithful tests recover the two operator limits.

*Lean:* [`Work.A04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L163-L183), [`Work.A05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05.lean#L95-L121), [`integrate_sheet_scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05/Window.lean#L158-L172), [`recover_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05/Read.lean#L70-L81); the requests are [`Bid.Watches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L43-L46) and [`Bid.ConLap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L48-L49).

**Lemma VI.1.h (A06 and the identification $p=c\,\partial$).** Assume the hypotheses of VI.1.2 and the transversality conclusions of VI.1.c.

*Setting.*

- The free data supply $d_*$ such that, for every $d\ge d_*$, there is a finite *selection* of collinear transverse readouts on $F^{\rm free}$: $m$-th jets of row sums at configurations on a coordinate axis.
- These readouts vanish, within the colour space of the free table, exactly on $\mathbb R\,\partial^{\rm free}$ ([`Climb.Ens`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L101-L104), [`Select`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L95-L99)).

*Claims.*

- (A06) Along any scaling system meeting a sufficiently large finite request for these readouts, the actual rescaled readouts converge to the free ones. They annihilate $\mathrm{aisle}_{k,d}(p)$ and $\mathrm{aisle}_{k,d}(\partial)$ exactly at every $k$. The reason is that a readout of $\mathrm{aisle}_{k,d}(P)$ equals $r_k^m$ times an actual collinear jet of $P$, which vanishes by VI.1.c.
- Consequently there is a real $c\neq0$ with $p_a=c\,\partial_a$ on all $F_d$.

*Proof sketch.*

- *Persistence lemma.* Let $\mathcal C$ be the fixed real space of free vector maps and suppose $Z_k\to Z$ with $\ker Z\cap\mathcal C=\mathbb R x$, $x\ne0$. Choose a real linear functional $\ell$ with $\ell(x)\ne0$. The map $(Z,\ell)$ is injective on $\mathcal C$; injectivity persists under small perturbations in finite dimension. Thus $\ker Z_k\cap\mathcal C$ has dimension at most one for large $k$. This gives $\mathrm{aisle}_{k,d}(p)=c_d\,\mathrm{aisle}_{k,d}(\partial)$, hence $p=c_d\partial$ on $F_d$ for large $d$.
- The constants agree across $d$, and lower degrees follow, by injectivity of $\iota$ and the colour law.
- $p\neq0$ and $\partial\ne0$ by VI.1.g and $\kappa\partial^{\rm free}\neq0$.

*Lean:* [`Work.A06.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A06.lean#L236-L256), [`Climb.extends_form`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Peaks.lean#L98-L111), [`Bid.pressured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L49-L59).

**Lemma VI.1.i (the normalised Ward data).** With $c$ as in VI.1.h, $D=c^{-1}Y$ satisfies (C) and (L). This proves Proposition VI.1.2.

*Proof sketch.* Divide the first identity of VI.1.b, and the identity of VI.1.1(i), by $c$, using $p=c\,\partial$.

*Lean:* [`Bid.formed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L61-L78), [`Bid.witnessing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L33-L39).

### 4.4 Continuation off the line

Throughout this subsection $S$ satisfies the Euclidean axioms, $T$ satisfies (C) and (L), and $\partial$ satisfies the derivative law.

**Lemma VI.1.j (derivatives of angular sums).**

- $\partial_{x_k^a}\mathcal W_K[T](q;x)=\mathcal W_K[T](q';x)$, where $q'$ is $q$ with $q_k$ replaced by $\partial_aq_k$. In particular $\mathcal W_K[T](q;\cdot)$ is $C^\infty$ on $\mathrm{Conf}$.
- Hence, if $\mathcal W_K[T](\cdot\,;y)=0$ for all tags at one point $y$, then every derivative of $\mathcal W_K[T](q;\cdot)$ at $y$ vanishes, for every $q$.

*Proof sketch.* Product rule. The derivative of $(Kx_k)_b$ in $x_k^a$ is $K_{ba}$. Use $\partial_a\partial_b=\partial_b\partial_a$, and (C) absorbs the extra term. The second statement is induction on the order, with $q$ generalised.

*Lean:* [`Ward.traverses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L92-L136), [`Ward.ac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L138-L143), [`Ward.jet_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Motion.lean#L31-L42).

**Lemma VI.1.k (OS vectors of one insertion).** Let $\mathcal H_a$ be the OS space for reflection in $\{x_a=0\}$. Write $\Theta_a$ for the corresponding reflection of words, including the label adjoint $M_{\theta_a}\Gamma$. For $x_a>0$ let $\mathrm{spot}(A,x)\in\mathcal H_a$ be the vector of the one-point word $A(x)$.

- (i) For any word $w$ supported in $\{y_a>0\}$ with distinct insertion points, its OS vector $[w]$ satisfies $\langle[w],\mathrm{spot}(A,x)\rangle=S(A(x),\Theta_aw)$.
- (ii) $\mathrm{spot}(A,x+se_a)=e^{-sH}\mathrm{spot}(A,x)$ for $s\ge0$, and $\mathrm{spot}(A,x+v)=U(v)\,\mathrm{spot}(A,x)$ for $v\perp e_a$.
- (iii) For $b\neq a$, $s\mapsto\mathrm{spot}(A,x+se_b)$ is $C^\infty$ with derivative $\mathrm{spot}(\partial_bA,\cdot)$. The weak derivative comes from the derivative law and is upgraded to a strong one.
- (iv) $t\mapsto\mathrm{spot}(A,x+te_a)$ is real-analytic for $x_a+t>0$, because $e^{-zH}$ is holomorphic on $\mathrm{Re}\,z>0$.
- (v) $t\mapsto S(A(te_a),B(0))$ is real-analytic for $t>0$.

*Lean:* [`Ward.spot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L55), [`link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L64-L73), [`responds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L102-L118), [`blooms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L120-L133), [`advancing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L137-L158), [`Analysis.represents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L19-L41), [`Ward.radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L54-L68).

**Lemma VI.1.l (transverse jets of the two-point function).** Fix $a\neq b$ and $K=K^{(ba)}$. For a pair of labels $\pi=(\pi_1,\pi_2)$ put $\Phi_\pi(x_1,x_2)=S\big(\pi_1(x_1e_a+x_2e_b),\pi_2(0)\big)$ on $\{x_1>0\}$. Define

$$(\mathcal L\Phi)_\pi=(x_1\partial_2-x_2\partial_1)\Phi_\pi+\Phi_{(T_K\pi_1,\pi_2)}+\Phi_{(\pi_1,T_K\pi_2)} .$$

Then:

- $(\mathcal L\Phi)_\pi(x)=\mathcal W_K[T]\big(\pi;(x_1e_a+x_2e_b,0)\big)$;
- $\partial_2^n(\mathcal L\Phi)_\pi(t,0)=0$ for all $n$, all $t>0$ and all $\pi$.

*Proof sketch.* The first identity is the definition of $\mathcal W$, by the derivative law. At $x_2=0$ both points lie on $\mathbb Re_a$, so (L) gives $\mathcal W=0$ for all labels. VI.1.j then gives all $x_2$-derivatives. This supplies the collinear jets needed for the analytic comparison.

*Lean:* [`Ward.sigma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rows.lean#L73-L97), [`Ward.realized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rows.lean#L99-L116).

**Lemma VI.1.m (comparison function and formal uniqueness).** Let $(r,\theta)$ be polar coordinates of $(x_1,x_2)$ with $x_1>0$. Put

$$Q_\pi(x)=S\big((e^{-\theta T_K}\pi_1)(re_a),\,(e^{-\theta T_K}\pi_2)(0)\big).$$

- $Q$ is real-analytic on $\{x_1>0\}$, by VI.1.k(v), finite-dimensionality of the label spaces, and the matrix exponential.
- $\mathcal LQ=0$ identically, since $\theta$ has derivative $1$ and $r$ has derivative $0$ along the rotation field.
- $Q=\Phi$ on $\{x_2=0\}$.
- (Formal uniqueness.) Let $L$ be smooth on the half-plane with $L_\pi(t,0)=0$ and $\partial_2^n(\mathcal LL)_\pi(t,0)=0$ for all $n,\pi$ and $t>0$. Then $\partial_2^nL_\pi(t,0)=0$ for all $n$.

  Applied to $L=\Phi-Q$: the $x_2$-Taylor series of $\Phi$ at $(t,0)$ is that of the analytic function $Q$.

*Proof sketch.* Strong induction on $n$, for all $\pi$ at once. For $n\ge1$, at $(t,0)$,

$$t\,\partial_2^{n+1}L_\pi=-\partial_2^n\big(L_{(T_K\pi_1,\pi_2)}+L_{(\pi_1,T_K\pi_2)}\big)+n\,\partial_1\partial_2^{n-1}L_\pi .$$

For $n=0$ the transport equation directly gives $t\partial_2L_\pi=-L_{(T_K\pi_1,\pi_2)}-L_{(\pi_1,T_K\pi_2)}=0$. In the displayed recurrence, the first term vanishes by induction, and the last term vanishes because $\partial_2^{n-1}L_\pi$ vanishes on the whole half-line. Since $t\neq0$, the line is noncharacteristic.

*Lean:* [`Ward.Q`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L89-L90), [`htQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L115-L128), [`solves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L130-L174), [`PDE.sure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/PDE.lean#L121-L141).

**Lemma VI.1.n (analytic Gram kernel).**

- (Abstract.) Let $f:\mathbb R\to\mathcal H$ be $C^\infty$ with $\langle f(s),f(s')\rangle=A(s'-s)$, where $A$ has at $0$ the Taylor series of a real-analytic germ. Then $f$ is real-analytic on $\mathbb R$.
- (Application.) Hence, for $x_a>0$ and $b\neq a$, $s\mapsto\mathrm{spot}(A,x+se_b)$ is real-analytic on $\mathbb R$.

*Proof sketch.*

- $\|f^{(m)}(s)\|^2=|A^{(2m)}(0)|\le C\rho^{-2m}(2m)!$ uniformly in $s$. With $(2m)!\le4^m(m!)^2$ this gives $\|f^{(m)}\|\le\sqrt C(\rho/2)^{-m}m!$ everywhere, and the Taylor remainder finishes.
- For the application: by reflection and translation invariance, $\langle f(s),f(s')\rangle=\Phi_{(A,\Theta_a A)}(2x_a,s'-s)$. VI.1.m identifies its Taylor series at $0$ with that of $s\mapsto Q_{(A,\Theta_a A)}(2x_a,s)$.
- Uniformity in $s$, which comes from positivity and translation invariance, is why a jet at a single point suffices.

*Lean:* [`Analysis.blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L76-L96), [`bud`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L46-L74), [`builds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rate.lean#L93-L102), [`Ward.fires`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L72-L81), [`swing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L33-L43), [`Ward.pure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L179-L209).

**Lemma VI.1.o (analyticity at an extreme point).** Suppose that after moving $x_k$ to $x_k+se_b$, the point $k$ is strictly latest, or strictly earliest, in coordinate $a$. Then $u\mapsto S(q;x\text{ with }x_k+ue_b)$ is real-analytic at $s$, for every $b$ (including $b=a$). Hence $\mathcal W_K[T]$ is real-analytic along such a move.

*Proof sketch.*

- Translate in $e_a$ so that the other points lie in $\{y_a<0\}$ and $x_k+se_b$ in $\{y_a>0\}$.
- Then $S=\langle\Theta(\text{word of the others}),\mathrm{spot}(q_k,\cdot)\rangle$, a bounded functional of one vector. This is analytic by VI.1.n for $b\neq a$, and by VI.1.k(iv) for $b=a$.
- The "earliest" case reduces to the "latest" case by the reflection $\Theta_a$ with mirrored labels.

*Lean:* [`Ward.higher`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L23-L69), [`last_adv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L102-L121), [`first_adv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L131-L153), [`Ward.channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L15-L26).

**Lemma VI.1.p (walks; proof of VI.1.3).** A *walk* is a finite chain of segments. Each segment moves one point $x_k$ along $e_b$, and on the whole segment $x_k$ is strictly earliest or latest in some coordinate $a$.

- If $\mathcal W_K[T](\cdot\,;y)=0$ (all tags) at the end $y$ of a walk, then the same holds at its start.
- Every configuration with pairwise distinct $0$-coordinates is joined by a walk to a configuration on $\mathbb Re_0$.
- Such configurations are dense in $\mathrm{Conf}_n$.

*Proof sketch.*

- *Propagation.* On a segment, $\mathcal W$ is analytic (VI.1.o), and all its derivatives vanish at the endpoint (VI.1.j). By the identity theorem it vanishes on the segment.
- *Geometry.* Take the earliest point in coordinate $0$. Move it beyond all others in coordinate $1$, then beyond all others in coordinate $0$, then set its coordinates $1,2,3$ to $0$, keeping it latest in coordinate $0$. Induct on the remaining points.
- *Density.* Add $t(0,1,\dots,n-1)$ to the $0$-coordinates.
- *Conclusion.* (L) holds on $\mathbb Re_0$, so $\mathcal W=0$ on a dense set. $\mathcal W$ is continuous on $\mathrm{Conf}$ (VI.1.j).

*Lean:* [`Ward.stood`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L60-L71), [`Walk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L75-L78), [`along`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L79-L84), [`park1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L36-L53), [`pushes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L57-L74), [`line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L86-L108), [`global`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139).

### 4.5 Brackets (A07, A08)

**Lemma VI.1.q (A07: erasure for the limit table).** The weak action law, with its alignment of $M$, $\Gamma$, units and inclusions, transports free row erasure to $S$ and $\partial$.

*Proof sketch.*

- For $d\ge N$, the free bilinear families of the kind in VI.1.4 form a finite-dimensional real space $\mathcal M$. Free erasure means that the free row tests separate $\mathcal M$, so finitely many of them do.
- Along a scaling system, the transported actual rows converge to these, so they are injective on $\mathcal M$ at some scale $k$.
- An actual family $\Delta$ with vanishing row sums, pulled back by $U_k$, lies in $\mathcal M$, because $U_k$ respects $M$, $\Gamma$, $\mathbf 1$ and $\iota$. Its rows are actual row sums at $r_kx$, which vanish. So $\Delta=0$.

*Lean:* [`Work.A07.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A07.lean#L287-L289), [`transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A07.lean#L243-L285).

**Lemma VI.1.r (A08: brackets).** This is Proposition VI.1.4.

*Proof sketch.*

- Let $\mathcal O_u$ be the orbital derivative along $x_i\mapsto ux_i$ for all points at once. VI.1.3 says $\mathcal O_uS(q)=-\sum_iS(\dots,T_uq_i,\dots)$ on the open set $\mathrm{Conf}$.
- Apply it twice: $\mathcal O_u\mathcal O_vS=\sum_{i,j}S(\dots T_uq_j\dots T_vq_i\dots)$. Linear vector fields satisfy $[\mathcal O_u,\mathcal O_v]=-\mathcal O_{[u,v]}$.
- Subtracting, the off-diagonal terms cancel. So the defect $\Delta(u,v)=[T_u,T_v]-T_{[u,v]}$ has vanishing row sums.
- By compatibility of $T$ and $\sigma[u,v]\sigma^{-1}=[\sigma u\sigma^{-1},\sigma v\sigma^{-1}]$, $\Delta$ is a family of the kind in VI.1.4. Erasure gives $\Delta=0$ for $d\ge N$.
- Lower degrees follow by injecting into degree $\max(d,N)$.

*Lean:* [`Work.A08.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247), [`orbital_comm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L62-L68), [`orbit_twice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L91-L107), [`defect_winds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L192-L205), [`defect_ward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L209-L230).

### 4.6 Descent of the free rotation action (A09–A12)

Fix $d$. Index the generators by ordered pairs $\pi=(i,j)$, with $K_\pi=E_{ij}-E_{ji}$ and $C_\pi=\mathcal L^{\rm free}(K_\pi)$ on $F^{\rm free}_d$. For tuples $B,C$ of operators on $F^{\rm free}_d$ define

- $\mathrm{ad}_{B,C}(X)=BX-XC$ on $\mathrm{End}\,F^{\rm free}_d$;
- $\Omega(B,C)=\sum_\pi\mathrm{ad}_{B_\pi,C_\pi}^2$, the relative Casimir.

A tuple satisfies the *perfect relations* if $X_{ij}=[X_{ik},X_{kj}]$ for a fixed $k\notin\{i,j\}$. Any $\mathfrak{so}(4)$ representation does (A09).

**Lemma VI.1.s (A12: the intertwiner projection).** There is a real polynomial $z$ such that $P=z(\Omega(C,C))$ satisfies:

- $P^2=P$;
- $P(\mathrm{id})=\mathrm{id}$;
- $\mathrm{ad}_{C_\pi,C_\pi}P=0$ for all $\pi$.

So $P$ projects onto the commutant of the $C_\pi$, along $\mathrm{range}\,\Omega$.

*Proof sketch.*

- Haar averaging over $O(4)$ gives an inner product on $\mathrm{End}\,F^{\rm free}_d$ in which every $\mathrm{ad}\,C_\pi$ is skew (unitarian trick). So $\Omega$ is self-adjoint, $\ker\Omega=\bigcap_\pi\ker\mathrm{ad}\,C_\pi$, and $\ker\Omega^2=\ker\Omega$.
- Cayley–Hamilton, with the powers of $X$ removed, gives a real $z$ with $z(0)=1$ and $\Omega z(\Omega)=0$.

*Lean:* [`Work.A12.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A12.lean#L323-L336), [`Spin.Works`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L68-L71), [`wave`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L57).

**Lemma VI.1.t (approximate to exact intertwiners).**

- (i) *Purification.* In a Banach algebra, let $Z_n\to z$ with $z^2=z$. There are $C>0$ and $n_0$ such that, for $n\ge n_0$, the iterates of $\varphi(x)=3x^2-2x^3$ starting at $Z_n$ converge to idempotents $P_n\to z$, with $\|P_n-Z_n\|\le2C\|Z_n^2-Z_n\|$. This uses $\varphi(x)-x=(1-2x)(x^2-x)$ and $\mathrm{def}(\varphi x)=(4\,\mathrm{def}\,x-3)(\mathrm{def}\,x)^2$, where $\mathrm{def}\,x=x^2-x$.
- (ii) *Norm gap.* If operators $D_\pi$ satisfy the perfect relations and all $\|D_\pi\|<\tfrac12$, then all $D_\pi=0$, since $\max\|D\|\le2\max\|D\|^2$.
- (iii) *Exact intertwiners.* Assume:
  - tuples $B_n\to C$, with $B_n$ (eventually) and $C$ satisfying the perfect relations;
  - $P=z(\Omega(C,C))$ is as in VI.1.s;
  - there is a closed additive subgroup $\mathcal F\subset\mathrm{End}_{\mathbb C}F^{\rm free}_d$ containing $\mathrm{id}$ such that, eventually, $z(\Omega(B_n,C))$ preserves $\mathcal F$ and commutes with every $\mathrm{ad}_{B_{n,\pi},C_\pi}$.

  Then for large $n$ there is an invertible $f\in\mathcal F$ with $B_{n,\pi}f=fC_\pi$ for all $\pi$.

*Proof sketch of (iii).*

- Work in $\mathrm{End}(\mathrm{End}\,F^{\rm free}_d)$ with $D_\pi(n)=\mathrm{ad}_{B_{n,\pi},C_\pi}$. These satisfy the perfect relations and converge to $\mathrm{ad}_{C_\pi,C_\pi}$.
- $z(\Omega(B_n,C))\to P$. Purify it to idempotents $Q_n$. Every iterate preserves $\mathcal F$ and commutes with $D_\pi(n)$. The preserving operators form a closed subring of $\mathrm{End}(\mathrm{End}\,F^{\rm free}_d)$, so these properties pass to $Q_n$.
- The compressions $D_\pi(n)Q_n$ satisfy the perfect relations and tend in norm to $\mathrm{ad}_{C_\pi,C_\pi}P=0$. By (ii) they vanish for large $n$.
- Then $f_n=Q_n(\mathrm{id})\to P(\mathrm{id})=\mathrm{id}$, so $f_n$ is invertible. It lies in $\mathcal F$, and $\mathrm{ad}_{B_{n,\pi},C_\pi}f_n=0$.
- No complete reducibility of the representation $D=c^{-1}Y$ on $F_d$, and no Lie integration for it, is used.

*Lean:* [`Spin.rectify`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Isolates.lean#L25-L69), [`stable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Isolates.lean#L72-L98), [`enough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Close.lean#L27-L38), [`onto`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Close.lean#L42-L70), [`realize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L77-L93), [`Tracks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L74-L75).

**Lemma VI.1.u (descent of rotations; proof of VI.1.5).** Assume the hypotheses of VI.1.2. The normalised rows $D=c^{-1}Y$ satisfy the global Ward identity by VI.1.3.

- **Choice of $U_n$.** Choose one scaling system meeting the requests of VI.1.g at degrees $d$ and $4$, and aligned through degree $d$. Put $U_n=U_{n,d}$.
- **Convergence.** At degree $4$, $p=c\,\partial$ and VI.1.g give $c/\xi_k\to\kappa$. Hence $U_n^{-1}DU_n\to\mathcal L^{\rm free}$.
- **Inputs of VI.1.t(iii).** These are the *tilt* ([`Spin.Tilt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L116-L122)):
  - $U_n$ intertwines $M$ and $\Gamma$ (track);
  - $D$ satisfies the perfect relations, by A08 (with erasure from A07) and A09;
  - the free data supply these relations and the Casimir polynomial of VI.1.s for $\mathcal L^{\rm free}$;
  - let $\mathcal F\subset\mathrm{End}_{\mathbb C}F^{\rm free}_d$ be the closed real subspace of maps commuting with the free $M$ and $\Gamma$. The operators $z(\Omega(U_n^{-1}DU_n,C))$ preserve $\mathcal F$ (A11: real coefficients and cancellation of the signed-permutation factors in the sum of squares) and commute with the relative generators (A09).
- **Exact intertwiner.** VI.1.t gives $f_n$. Put $V_d=U_nf_n$. Then $V_d$ intertwines $M$ and $\Gamma$, and $D_{K_\pi}V_d=V_dC_\pi$. By linearity this holds for all $K$.
- **Port.** $R_d=V_dR^{\rm free}_dV_d^{-1}$ inherits continuity, the group law, $R(\sigma)=M_\sigma$, reality, and the generator $D$.

*Lean:* [`Bid.services`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L124-L157), [`Bid.currencies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L80-L90), [`Bid.imaginary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L102-L122), [`Work.A09.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A09.lean#L85-L90), [`Work.A11.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A11.lean#L199-L206), [`Spin.fine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L55-L64), [`Spin.meet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L134-L157), [`Spin.produces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L26-L47), [`Climb.descends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L90-L98).

### 4.7 Integration to $O(4)$ (A13, A14)

**Lemma VI.1.v (A13).** $O(4)$ is generated by $B_4$ and the one-parameter groups $e^{tK}$, $K\in\mathfrak{so}(4)$.

*Proof sketch.* $O(4)$ is generated by hyperplane reflections (Cartan–Dieudonné). The reflection in $v^\perp$ equals $g^{-1}R_0g$, where $R_0$ is a coordinate mirror and $g$ is a product of plane rotations $e^{t(E_{ij}-E_{ji})}$ that turn $v$ onto $e_0$ (Givens rotations).

*Lean:* [`Work.A13.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L191-L200), [`reflection_conjugate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L151-L174).

**Lemma VI.1.w (A14: covariance and laws).** This is Proposition VI.1.6.

*Proof sketch.*

- The set of $k$ with $S(R(k)v;kx)=S(v;x)$ for all $v,x$ is a subgroup of $O(4)$.
- It contains $B_4$, since $R(\sigma)=M_\sigma$ and $S$ is $B_4$-covariant.
- It contains each $e^{tK}$. The function $f(t)=S(R(e^{tK})v;e^{tK}x)$ is differentiable, and by the group law $f'(t)$ is $\mathcal W_K[T]$ at the moved data, which is $0$. So $f$ is constant.
- By A13 the subgroup is all of $O(4)$.
- The rotation laws:
  - $R(k)\mathbf 1=\mathbf 1$: apply covariance, delete the unit insertion, apply covariance again;
  - commutation with $\iota$: covariance plus the inclusion law ([`Spin.team`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L50-L69));
  - the vector law: differentiate the covariance identity and use the chain rule for $x\mapsto kx$;
  - the remaining fields are those of the port.

*Lean:* [`Work.A14.oriented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L277-L292), [`cov_parameter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L245-L261), [`unit_fixed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L310-L325), [`vectorLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L364-L398), [`laws_of_oriented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L403-L415).

### 4.8 The averaged stress tensor (A15)

**Lemma VI.1.x (A15: Haar averaging).** Under the hypotheses of VI.1.7, put $J_0=c^{-1}J$, so that $(J_0;\partial,c^{-1}Y)$ satisfies the stress laws. Define

$$J'=\int_{O(4)}k\cdot J_0\,d\mu(k),\qquad (k\cdot J)_{ab}=\sum_{ij}k_{ai}k_{bj}\,R_4(k)J_{ij},$$

with $\mu$ normalised Haar measure on $O(4)$. Then $J'$ satisfies Proposition VI.1.7.

*Proof sketch.*

- $k\cdot$ is a linear group action on the finite-dimensional space of stresses. Fixed points are exactly the tensorial stresses, and invariance of $\mu$ makes $J'$ fixed.
- Each $k\cdot J_0$ is conserved: symmetry by the index structure, reality by the reality law, divergence by the vector law.
- Each $k\cdot J_0$ satisfies the same stress laws. Substitute $y\mapsto ky$ and use the window $\chi\circ k$ at $k^{-1}x$; pull the labels back by $R(k^{-1})$; use covariance of $S$.
  - The translation weight $e_b$ becomes $k^{-1}e_b$. The right side is independent of $k$ by the vector law.
  - The weight $K(y-x_0)$ becomes $k^{-1}Kk$ centred at $k^{-1}x_0$. The right side is independent of $k$ by A10: $R(k)\,\mathcal L_K=\mathcal L_{kKk^{-1}}\,R(k)$.
- All the conditions are linear, so they pass to the integral.

*Lean:* [`Work.A15.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192), [`normalize_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L22-L41), [`averageStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L86), [`tensorial_average`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L117-L118), [`conserved_average`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L134-L154), [`stressLaws_average`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L156-L183), [`rotate_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15/Transfer.lean#L124-L168), [`Work.A10.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A10.lean#L113-L115).

### 4.9 Lorentz group, and assembly

**Lemma VI.1.y (A16, A17 and the descended Lorentz action).** This is Proposition VI.1.8.

*Proof sketch.*

- *(a) Generation.* Let $\Lambda\in SO^+(1,3)$. Then $\Lambda e_t$ is a future unit timelike vector. At each step, apply a coordinate boost with rapidity $-\mathrm{artanh}(y_i/y_t)$ to the current vector $y$. This kills its $i$-th spatial component and preserves the other spatial components. After three steps the vector is $e_t$. The resulting Lorentz transformation fixes $e_t$, so it is a spatial rotation.
- *(b) Compatibility with inclusions.* Induct over the generators.
  - Spatial rotations: here $B$ is the transported rotation action, which commutes with $\iota$ by VI.1.6.
  - Boosts: $t\mapsto B_e(\mathrm{boost}_i(t))\iota v$ and $t\mapsto\iota B_d(\mathrm{boost}_i(t))v$ both solve $f'=G f$ with $G=-i\,D_{K^{(3i)}}$, and they agree at $t=0$. Here $G$ commutes with $\iota$, which follows by differentiating the inclusion law of $R$. Uniqueness for the linear ODE finishes.
- *(c) Descent.* Compatibility with inclusions and the unique lift to the union of label spaces give the representation. Its descent properties transfer from the free action through $V$ ([`Spin.transmits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L30-L37)).

*Lean:* [`exists_rest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L82-L89), [`run_boost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L70-L84), [`rise_generator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L57-L68), [`Spin.run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L21-L22), [`Spin.reach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L39-L74).

**Lemma VI.1.z (assembly).** Under the hypotheses of VI.1.9, the preceding constructions give its local field laws and Lorentz action.

*Proof sketch.* A01–A03 and the collinear flux argument give the raw compatibility laws. VI.1.h–i give $c$ and the normalised Ward data. VI.1.3 and VI.1.u give the intertwiners, rotation port and global Ward identity. A13–A14 give covariance and the rotation laws; A10 and A15 give the conserved tensorial stress with the required shells. Each $F_d$ has the free comparison isomorphism by any aligned scaling system at that degree. A16–A17 give compatibility of the Lorentz actions, and the unique lift to the union gives the final representation.

*Lean:* [`Bid.station`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L159-L168), [`Commission.picks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L45-L53), [`Climb.comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L53-L63).

### 4.10 Free-field stress algebra

Assume $G$ is simple. The free stress satisfies the following finite-dimensional algebraic facts:

- adjoint-invariant linear forms vanish, and invariant bilinear forms are multiples of the inner product.
- Gauge-invariant composites of weight $\le5$ have explicit normal forms.
- The real symmetric $B_4$-covariant $2$-tensors of weight at most $4$ form a space of dimension $\le4$, spanned by the four-parameter family

$$T_{ab}=\delta_{ab}\Big(w_0+w_1\sum_i\langle F_{ai},F_{ai}\rangle+w_2\sum_{ij}\langle F_{ij},F_{ij}\rangle\Big)+(1-\delta_{ab})\,w_3\sum_i\langle F_{ai},F_{bi}\rangle .$$
Here $F_{ab}$ is the free curvature and $w\in\mathbb R^4$. The Maxwell stress is $w=(0,1,-\tfrac14,1)$.
- Wick's theorem computes the free one- and two-point tests. Centring and conservation force $w=w_3\cdot(0,1,-\tfrac14,1)$.

These facts feed VII.2's statement that, in the free table, the divergence map from centred, real, symmetric, $B_4$-tensorial stresses in $(F^{\rm free}_4)^{4\times4}$ to real $B_4$-vector fields in $(F^{\rm free}_5)^4$ is onto and has a one-dimensional kernel ([`free_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165)). They are not used in the Ward chain above.

*Lean:* [`bilinear_invariant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Color.lean#L79-L91), [`finrank_two`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L129-L167), [`finrank_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L190-L231), [`stress_tensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L202-L214), [`div_kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/FreeTests.lean#L177-L184), [`stress_bijective`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/FreeTests.lean#L227-L235). *(proof of the divergence test read; polynomial classification and dimension bounds: statement only)*

## 5. Where the difficulty lies

The exterior flux estimate (VI.1.e) bears most of the analytic burden. Reflection positivity along axes of opposite parity gives the subpower estimate without a gap. Diagonal stress components require a separate conservation argument, since they have no odd reflection parity. The widths $\lambda^{100},\lambda^{150},\lambda^{300}$ and the split at $\lambda^{-3000}$ make the powers in these estimates compatible.

Continuation off the line (VI.1.j–p) requires more than a smooth function with vanishing jets. The collinear Ward identities determine the transverse jets of the two-point function; Hilbert-space positivity turns those jets into uniform factorial derivative bounds and hence analyticity.

The descent (VI.1.s–u) constructs exact intertwiners from the free comparison. Lie brackets alone would give an action of a covering group after integration; they would not by themselves identify the required $O(4)$ action or its signed-permutation subgroup. Covariance subsequently forces compatibility between degrees.

The remaining steps use compactly supported integration by parts, finite-dimensional tests, group generation, Haar averaging and uniqueness for linear ODEs.

## 6. Notation

| object | code name | proposed notation |
|---|---|---|
| label spaces, tags, inclusions, unit | [`Field d`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74), [`Tag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Lift.lean#L66), [`rise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22), [`unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L100) | $F_d$, $(d,v)$, $\iota$, $\mathbf 1$ |
| signed permutations, conjugation | [`Signed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L23-L26), [`mirror`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L138-L140), [`conj`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L142-L144) | $B_4$, $M_\sigma$, $\Gamma$ |
| differential plan and its laws | [`DiffPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22), [`Derivatives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L61-L64), [`Inclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60), [`Orientation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72) | $\partial_a$; derivative, inclusion, orientation laws |
| stress, window, shells | [`Table.Stress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L57), [`Window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L72-L73), [`shellGrad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L79-L81), [`shellSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L84-L86) | $J_{ab}\in F_4$, $\chi$, $\Phi^{\rm tr}_\chi$, $\Phi^{\rm rot}_\chi$ |
| raw shell maps; raw hypotheses | [`Climb.Parts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L58) ($p$), [`Ward.SpinRows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L17) ($Y$); [`Climb.Pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69) | $p_a$, $Y_K$; (R) |
| angular sum; its vanishing | [`localTurn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L72-L74), [`Ward.angular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L25-L27); [`Still`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L45), [`Collinear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L34-L35), [`commutes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L29-L30) | $\mathcal W_K[Y,p]$, $\mathcal W_K[T]$; (L), (C) |
| line sums, transversality | [`LineSum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L35-L36), [`Climb.transverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Peaks.lean#L57) | line sums, transverse |
| colour space and law | [`Colors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L66-L87), [`ColorLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L89-L91) | colour space |
| normalised data | [`Climb.Crystal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L83-L87) | $p=c\,\partial$, $D=c^{-1}Y$ |
| free data | [`MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170), [`Climb.Bel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20), [`Lighthouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29), [`Goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42) | $F^{\rm free}_d,\partial^{\rm free},R^{\rm free},\mathcal L^{\rm free},J^{\rm free},\kappa$ |
| scaling system, track, weak law | [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31), [`Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48), [`ActLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L50-L51), [`aisle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L49-L57) | $(r_k,\xi_k,U_{k,d})$, $\mathrm{aisle}_{k,d}$ |
| cutoff field | [`petal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Patch.lean#L72), [`vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L14), [`fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Budget.lean#L15) | $\mathrm{petal}_{ab}$, $\lambda=e^k$ |
| OS vector of one insertion | [`spot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L55), [`OS.Chamber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61) | $\mathrm{spot}(A,x)\in\mathcal H_a$ |
| row erasure | [`erases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L149-L152), [`Winds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L141-L146) | erasure |
| compatibility of spin rows | [`Bid.Hyper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L16-L20) | compatible |
| perfect relations, Casimir projection | [`Spin.rel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L35), [`wave`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L57), [`Works`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L68-L71), [`effect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L21) | perfect relations, $z(\Omega(B,C))$, $\mathrm{ad}_{B,C}$ |
| tilt, intertwiners | [`Spin.Tilt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L116-L122), [`realH`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L50-L52), [`change`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L44) | $U_n$, $V_d$ |
| port, transported action | [`Spin.Port`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L13-L19), [`Spin.morph`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L22-L24), [`Org.mill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L17) | $R_d(k)=V_dR^{\rm free}_d(k)V_d^{-1}$ |
| rotation laws, covariance | [`Rotation.Laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L31-L42), [`Rotation.Oriented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L46-L48) | rotation laws; $S(R(k)v;kx)=S(v;x)$ |
| conserved, tensorial; average | [`Conserved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L59-L62), [`Tensorial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L64-L66), [`averageStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L86) | $J'=\int k\cdot c^{-1}J\,d\mu$ |
| Lorentz action on labels | [`Spin.run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L21-L22), [`wand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L24-L25), [`Boundary.Spins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L22-L24), [`Descends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L26-L35) | $B_d(\Lambda)$ |
| record | [`Org.Commission`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L29-L43), [`Org.Tab`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24), [`Spec.Locals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43) | $(c,V,J')$; local laws |

## 7. What remains unexplained
1. **Supporting analysis in the exterior flux estimate (probable).** The reductions to spectral integrals, the point and line estimates, the diagonal mass estimate and their combination in VI.1.e were checked against the cited proofs. The proofs of the remote-gap profiles, the odd temporal variant, the contact extension on product tests, and the finite-difference and interpolation estimates were not checked in full. These are the files `GapTest`, `Nodal`/`Mode`/`Odd`, `Collision`/`Fold`/`Journal`, `MomentFD` and `Nodes`. In particular, the construction and normalisation of the contact extension remain inputs to the mass-estimate sketch.
2. **Free-field stress algebra (probable).** The statements in §4.10 and the proof that centring and the two divergence tests select the Maxwell line were checked. The polynomial normal-form and dimension-count proofs were not checked in full. The map in the cited rank theorem has centred stresses as its domain; centring cannot be omitted from the one-dimensional-kernel claim.
3. **Production of the inputs.** The immediate producers of the raw stress, shell maps, weak comparison and free data are identified in §2. Their ultraviolet hypotheses, including the annular estimates and finite comparison systems, are not discharged in this unit. The unused lattice shell-law interfaces in `STRESS_FLUX` are not the source of (R).
4. **Normalisation and centring.** The Ward coefficient of $J'$ is exactly $1$. Centring is not part of the conclusion of VI.1.7; the centred trace is formed in VII.2. The stress replacement used before the weak comparison supplies $\kappa\ne0$ without the numerical identity $\kappa=-\tau$. Along the scaling systems used in VI.1.u, positivity of $\xi_k$ and $c/\xi_k\to\kappa\ne0$ imply that $c$ and $\kappa$ have the same sign. Neither sign is specified by this unit's hypotheses.
5. **Scope.** The folder ownership and line counts in the header have not been independently recounted. The assignment of `Shift` and most of `Next/BOUNDARY` to V.2 is tentative. The statements above are source comparisons; Lean elaboration and the transitive axiom dependencies were not checked.

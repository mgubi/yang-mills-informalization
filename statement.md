# The main theorem

This page gives the exact statement proved by OpenAI's Lean formalization (released as [`OpenAI-YM-20261028`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464), commit `3456e5e`).
1. **The formal statement:** the Lean theorem and the definitions at its core, verbatim.
2. **What it says, in words:** a commentary.
3. **The precise statement:** the theorem restated in ordinary mathematics, definition by definition, with every quantifier, domain and order of limits as in the Lean.

A table at the end relates each item to its Lean declaration.

## 1. The formal statement

The headline theorem ([`Solution.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean)):

```lean
/-- The core comparator asks only for existence, reconstruction, the OPE and the trace test. -/
theorem YangMills.jointExistence : YangMills.JointExistence := by
```

The proposition it proves ([`ChallengeSpec.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L184-L188)):

```lean
/-- One Wilson family per gauge group, followed by a refinement for every requested
volume sequence. All four conclusions concern a single hierarchy on that refinement. -/
def JointExistence : Prop := ∀ g : GaugeGroup, g.IsSimple → ∃ C : WilsonFamily g,
  WilsonRegularity C ∧ ∀ p : ℕ → ℕ, StrictMono p → ∃ q : ℕ → ℕ, StrictMono q ∧
    ∃ T : Hierarchy C, T.Properties (p ∘ q)
```

The four properties required of the continuum hierarchy, along the refined volume sequence ([`ChallengeSpec.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L177-L181)):

```lean
structure Properties (order : ℕ → ℕ) : Prop where
  wilson : C.Converges order (fun v => T.correlation none (T.project ∘ v))
  reconstruction : T.Reconstructed
  ope : T.OperatorProductExpansion
  nonfree : T.TraceTest
```

The first property, the lattice-to-continuum limit, is [`WilsonFamily.Converges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90): for every fixed admissible volume the smeared lattice moments converge as the lattice spacing tends to zero, and the limits converge along the volume sequence to the continuum correlation:

```lean
def Converges (volumeOrder : ℕ → ℕ)
    (unselected : {n : ℕ} → (Fin n → C.Token) → Points n → ℂ) : Prop :=
  ∀ n (v : Fin n → C.Token) (t : SeparatedTest n),
    (∀ᶠ k : ℕ in atTop, C.suitable (volumeOrder k) t) ∧ ∃ row : ℕ → ℂ,
    (∀ p, C.suitable p t → Tendsto (fun N => C.smear N p v t) atTop (𝓝 (row p))) ∧
    Tendsto (fun k => row (volumeOrder k)) atTop (𝓝 (∫ x, t x * unselected v x))
```

The second, the reconstruction of a relativistic theory ([`Reconstructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L117-L144)):

```lean
structure Reconstructed : Prop where
  axioms : T.theory.Axioms
  faithful : T.theory.fields.Faithful
  injective (d : ℕ) : Injective (T.toLabel d)
  acts : ∃ (a : T.Tag) (f : YangMills.TestFunction), T.theory.fields.field (T.toLabel a.1 a.2) f ≠ 0
  covers : Surjective (fun a : T.Tag => T.toLabel a.1 a.2)
  represents : Surjective T.project
  normalized : IsProbabilityMeasure T.phaseMeasure
  fullSupport : T.phaseMeasure.IsOpenPosMeasure
  permutation (s : Option T.Character) {n : ℕ} (a : Fin n → T.Tag)
      (x : Points n) (hx : x ∈ WilsonFamily.separated n) (π : Equiv.Perm (Fin n)) :
    T.correlation s (a ∘ π) (WithLp.toLp 2 (x.ofLp ∘ π)) = T.correlation s a x
  smooth (s : Option T.Character) {n : ℕ} (a : Fin n → T.Tag) :
    ContDiffOn ℝ ∞ (T.correlation s a) (WilsonFamily.separated n)
  characterContinuity {n : ℕ} (a : Fin n → T.Tag) (x : Points n)
      (h : x ∈ WilsonFamily.separated n) : Continuous (fun i => T.correlation (some i) a x)
  mixture {n : ℕ} (a : Fin n → T.Tag) (x : Points n) (h : x ∈ WilsonFamily.separated n) :
    (∫ i, T.correlation (some i) a x ∂T.phaseMeasure) = T.correlation none a x
  analytic {n : ℕ} (v : Fin n → T.Tag) (space : OPESpacePoints n) :
    DifferentiableOn ℂ (fun z => T.continuation v z space) (orderedTube n)
  root {n : ℕ} (v : Fin n → T.Tag) (x : Points n) (h : StrictMono fun i => time (x i)) :
    T.continuation v (imaginaryTimes x) (spatialPoints x) = T.correlation (some T.selected) v x
  boundary {n : ℕ} (v : Fin n → T.Tag) (height : Fin n → ℝ) (h : StrictMono height)
      (tests : Fin n → YangMills.TestFunction) :
    Tendsto (fun r => ∫ x : Points n, T.continuation v (complexShift r height x) (spatialPoints x) *
      tensorTest tests x) (𝓝[>] 0)
      (𝓝 (T.theory.fields.vacuumExpectation (fun i => T.toLabel (v i).1 (v i).2) tests))

```

The fourth, the non-freeness test on the trace field ([`TraceTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168-L176)):

```lean
structure TraceTest : Prop where
  centered (f : YangMills.TestFunction) :
    inner ℂ T.theory.fields.vacuum.1
      (T.theory.fields.field (T.toLabel 4 T.centeredTrace) f T.theory.fields.vacuum).1 = 0
  amplitudePositive : 0 < 3 * (Module.finrank ℝ g.lieAlgebra : ℝ) / Real.pi^4
  shortDistance : Tendsto (fun r : ℝ => (r^8 * (Real.log r⁻¹)^2) • T.traceTwo r)
    (𝓝[>] 0) (𝓝 ((3 * (Module.finrank ℝ g.lieAlgebra : ℝ) / Real.pi^4 : ℝ) : ℂ))
  excludes (terms : List (ℂ × Track)) : ¬ T.traceTwo =ᶠ[𝓝[>] 0] wickProfile terms

```

The third, the operator product expansion, is [`OperatorProductExpansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70-L94). The objects these definitions use are defined in [`PublicTheory.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean) (gauge groups, Wightman theories), [`PublicWilson.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean) (lattices, the Wilson measure, Wilson families) and [`ChallengeSpec.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean) (regularity, the hierarchy). All three import only Mathlib.

## 2. What it says, in words

**The main theorem.** Fix a compact group of unitary matrices G whose Lie algebra 𝔤 is simple and nonabelian, for example SU(N) with N ≥ 2. Then the following hold.

1. **One family of lattice theories.** There is one family of Wilson lattice gauge theories for G on four-dimensional tori:
   - lattice spacings 1/D_N → 0;
   - torus sides L_p → ∞;
   - couplings β_{N,p} with β_{N,p}/log D_N → b_* > 0, uniformly in the volume;
   - local gauge-invariant insertions ("tokens"), each depending on a fixed finite patch of links.
2. **For every sequence of volumes, a subsequence.** Given any increasing sequence of volumes, one can pass to a subsequence along which the smeared correlations of the insertions converge. The limit is taken in two steps: first the lattice spacing tends to zero at each fixed volume, then the volume tends to infinity along the subsequence. The test functions are smooth, compactly supported, and vanish near all coincident points. The limits are given by correlation functions S on ℝ⁴ that are smooth away from coincident points.
3. **Phases.** S is an average over a compact space of *phases* ξ, against a probability measure of full support, of phase correlations S^ξ that depend continuously on ξ.
4. **A relativistic theory.** One selected phase carries a quantum field theory in Minkowski space satisfying Wightman-type axioms:
   - a cyclic vacuum, unique up to scalars among translation-invariant vectors;
   - positive energy;
   - Poincaré covariance;
   - locality;
   - faithful fields.
   
   Its vacuum expectations are boundary values of analytic continuations of the Euclidean correlations.
5. **Short distances.** All states satisfy operator product expansion bounds with a single system of coefficients.
6. **Not free.** A degree-4 field Θ, the centered trace of the stress tensor in the construction, has the short-distance law
   r⁸ log²(1/r) · ⟨Θ(x) Θ(y)⟩ → 3 dim 𝔤 / π⁴, where r = |x − y|.
   No finite combination of free-field (mass-shell) profiles reproduces this behaviour.

**What the construction gives in addition.** The detailed theorem from which this is derived, [`YangMills.constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean), says more:
- the constant is the asymptotic-freedom value b_* = 11 C_𝔤 / (24π²);
- *every* phase carries a Wightman theory;
- correlations extend to distributions across coincident points;
- the rescaled correlations converge at short distance to those of dim 𝔤 free Maxwell fields;
- there are nested and integrated versions of the OPE, and several further tests of non-freeness.

**How the formulation differs from the standard one.**
- The limit is shown to exist only along subsequences, and only on separated configurations; nothing is asserted at coincident points.
- Uniqueness of the limit, independence of the subsequence and a mass gap are not claimed.
- Clustering is replaced by the decomposition into phases.
- The Wightman axioms are in the formalization's own form; the precise statement below lists every difference.
- No Osterwalder–Schrader axiom appears in the public statement.
- The field labels are abstract finite-dimensional spaces; the identification with polynomials in the curvature is made in the construction, not in the statement.

## 3. The precise statement

### 0. Conventions

* $\mathbb N=\{0,1,2,\dots\}$. "For all sufficiently small $r>0$" means: there is $\delta>0$ such that the property holds for every $r\in(0,\delta)$. "For all sufficiently large $N$" means: there is $N_0$ such that it holds for every $N\ge N_0$.
* Inner products of complex Hilbert spaces are antilinear in the first argument.
* Integrals are Lebesgue integrals. In the formal source an integral of a non-integrable function is $0$; we point out the one place in the main theorem where this convention could matter (Definition 1.12, Remark 4).
* The coordinate axes of $\mathbb R^4$ are numbered $1,2,3,4$, and the **fourth coordinate is time**. (The formal source numbers them $0,1,2,3$, with time the last one.)

### 1. The objects

#### Gauge groups

**Definition 1.1 (Gauge group).** A *gauge group* is a triple $(m,G,\mathfrak g)$ consisting of an integer $m\ge 1$, a closed subgroup $G$ of the unitary group $U(m)$, and a real linear subspace $\mathfrak g\subset M_m(\mathbb C)$ such that, for every $X\in M_m(\mathbb C)$,
$$X\in\mathfrak g\iff \exp(sX)\in G\ \text{ for all } s\in\mathbb R .$$
We say that $\mathfrak g$ is *simple* if

1. there are $X,Y\in\mathfrak g$ with $[X,Y]:=XY-YX\neq 0$, and
2. every real linear subspace $I\subset\mathfrak g$ with $[X,Y]\in I$ for all $X\in\mathfrak g$ and $Y\in I$ is equal to $\{0\}$ or to $\mathfrak g$.

*What it encodes.* The subspace $\mathfrak g$ is determined by $G$: it is the Lie algebra of the closed matrix group $G$, and it consists of skew-Hermitian matrices. The group $G$ is compact. Simplicity is simplicity of $\mathfrak g$ as a real Lie algebra, with the nonabelian condition written out. The embedding $G\subset U(m)$ is part of the data: it enters the lattice action through the matrix trace and the factor $1/m$ (Definition 1.3).

*Nonstandard features.* (a) $G$ need not be connected. Any closed subgroup of $U(m)$ whose Lie algebra is simple is allowed, for example $O(3)\subset U(3)$; only the identity component of $G$ is a compact simple Lie group. (b) The theorem is formulated for a group given in a fixed faithful unitary representation, not for an abstract compact group.

*Inner product and Casimir constant (used by the construction only).* On $\mathfrak g$ put $\langle X,Y\rangle_{\mathfrak g}:=-\tfrac1m\mathrm{Re}\mathrm{tr}(XY)$. This is a positive definite, $\mathrm{Ad}(G)$-invariant inner product. The Casimir constant is
$$C_{\mathfrak g}:=-\frac{1}{\dim_{\mathbb R}\mathfrak g}\sum_{i}\mathrm{tr}_{\mathfrak g}\big(\mathrm{ad}(e_i)^2\big),$$
where $(e_i)$ is a $\langle\cdot,\cdot\rangle_{\mathfrak g}$-orthonormal basis of $\mathfrak g$. Equivalently, the Killing form of $\mathfrak g$ equals $-C_{\mathfrak g}\langle\cdot,\cdot\rangle_{\mathfrak g}$. Put $b_0:=11C_{\mathfrak g}/(48\pi^2)$. For $G=SU(N)\subset U(N)$ one finds $C_{\mathfrak g}=2N^2$. With this inner product the lattice coupling $\beta$ of Definition 1.4 corresponds to $1/g_0^2$ in the formal action $\frac{1}{2g_0^2}\int\sum_{\mu<\nu}\|F_{\mu\nu}\|_{\mathfrak g}^2$ [Assessment, §§3–4]. Neither $\langle\cdot,\cdot\rangle_{\mathfrak g}$ nor $C_{\mathfrak g}$ occurs in the main theorem; only $\dim_{\mathbb R}\mathfrak g$ does (in the trace test, Definition 1.16).

#### Spacetime and test functions

**Definition 1.2 (Spacetime, configurations, test functions).**

1. *Spacetime.* $\mathbb R^4$ with the Euclidean norm $|x|$. For $x=(x^1,x^2,x^3,x^4)$ write $t(x):=x^4$ (time) and $\vec x:=(x^1,x^2,x^3)\in\mathbb R^3$. The pairing $p\cdot b:=\sum_{\mu=1}^4p^\mu b^\mu$ is the Euclidean one. The same $\mathbb R^4$ serves as Euclidean space, for correlation functions, and as Minkowski space, for the relativistic theory. In the second role, $\mathsf m(x):=t(x)^2-|\vec x|^2$ is the Minkowski square, $\overline V_+:=\{x:\ |\vec x|\le t(x)\}$ is the closed forward cone, and $x$ is *spacelike* if $\mathsf m(x)<0$.
2. *Configurations.* For $n\in\mathbb N$, $(\mathbb R^4)^n$ carries the Euclidean norm $(\sum_i|x_i|^2)^{1/2}$ and Lebesgue measure $dx$. A point is $x=(x_1,\dots,x_n)$ with $x_i\in\mathbb R^4$, and $x_i^a$ is the $a$-th coordinate of $x_i$. The set of *separated configurations* is the open set
$$\mathrm{Conf}_n:=\{x\in(\mathbb R^4)^n:\ x_i\neq x_j\text{ for all }i\neq j\}.$$
3. *Schwartz functions.* $\mathcal S:=\mathcal S(\mathbb R^4;\mathbb C)$ with its Fréchet topology. For $f\in\mathcal S$, $\bar f$ is the pointwise complex conjugate.
4. *Separated test functions.* $C^\infty_c(\mathrm{Conf}_n)$ is the space of $C^\infty$ functions $f\colon(\mathbb R^4)^n\to\mathbb C$ whose closed support $\mathrm{supp}f$ is compact and contained in $\mathrm{Conf}_n$.

*Nonstandard features.* The separated test functions are joint functions of all $n$ points, not products of one-point test functions. They vanish in a neighbourhood of every coincidence $x_i=x_j$; no statement in the main theorem concerns coincident points.

#### The lattice theory

**Definition 1.3 (Periodic lattices, link configurations, plaquettes).** Let $(m,G,\mathfrak g)$ be a gauge group and $\ell\ge1$ an integer.

1. $\Lambda_\ell:=(\mathbb Z/\ell\mathbb Z)^4$ is the discrete torus with $\ell$ sites per side, and $e_1,\dots,e_4\in\Lambda_\ell$ are the unit vectors. A *link* is a pair $(y,\mu)\in\Lambda_\ell\times\{1,2,3,4\}$; it joins $y$ to $y+e_\mu$.
2. A *link configuration* is a map $U\colon\Lambda_\ell\times\{1,2,3,4\}\to G$. The configuration space $G^{\Lambda_\ell\times\{1,\dots,4\}}$ is compact in the product topology and carries the product of the Borel $\sigma$-algebras.
3. The *plaquette variable* at $y$ in the plane $(\mu,\nu)$ is
$$U_{y;\mu\nu}:=U(y,\mu)\,U(y+e_\mu,\nu)\,U(y+e_\nu,\mu)^{-1}\,U(y,\nu)^{-1}\in G,$$
and the *Wilson energy* is
$$E_\ell(U):=\sum_{y\in\Lambda_\ell}\ \sum_{1\le\mu<\nu\le4}\Big(1-\tfrac1m\mathrm{Re}\mathrm{tr}U_{y;\mu\nu}\Big).$$
4. A *gauge transformation* $\gamma\colon\Lambda_\ell\to G$ acts by $(U^\gamma)(y,\mu):=\gamma(y)\,U(y,\mu)\,\gamma(y+e_\mu)^{-1}$.
5. For $j\in\mathbb Z/\ell\mathbb Z$, $r_\ell(j)\in\mathbb Z$ is the unique representative of $j$ in $(-\ell/2,\ell/2]$.

*What it encodes.* The standard Wilson plaquette action in the representation $G\subset U(m)$, with each unoriented plaquette counted once.

**Definition 1.4 (Wilson measure).** For $\ell\ge1$, $\beta\in\mathbb R$ and a Borel probability measure $h$ on $G$, the *Wilson measure* is the probability measure on $G^{\Lambda_\ell\times\{1,\dots,4\}}$
$$\mu_{\ell,\beta,h}(dU):=Z^{-1}\,e^{-\beta E_\ell(U)}\prod_{(y,\mu)}h\big(dU(y,\mu)\big),\qquad Z:=\int e^{-\beta E_\ell(U)}\prod_{(y,\mu)}h\big(dU(y,\mu)\big).$$
($Z$ is finite and positive because $0\le E_\ell\le 12\ell^4$.)

*What it encodes.* With the inner product of Definition 1.1, $\beta=1/g_0^2$ is the inverse squared bare coupling [Assessment, §4]. Other conventions differ by factors of $m$; for example $\beta=m\,\beta'$ when the energy is written $\beta'\sum(m-\mathrm{Re}\mathrm{tr}U_{y;\mu\nu})$ [Assessment, §11].

**Definition 1.5 (Wilson family).** A *Wilson family* $\mathcal W$ for a gauge group $(m,G,\mathfrak g)$ consists of:

1. strictly increasing sequences of positive integers $(L_p)_{p\in\mathbb N}$ (physical side lengths) and $(D_N)_{N\in\mathbb N}$ (inverse lattice spacings). Put $a_N:=1/D_N$, $\ell_{N,p}:=L_pD_N$ and $\Lambda_{N,p}:=\Lambda_{\ell_{N,p}}$. The *physical position* of a site $y\in\Lambda_{N,p}$ is
$$\hat y:=a_N\big(r_{\ell_{N,p}}(y^1),\dots,r_{\ell_{N,p}}(y^4)\big)\in(-L_p/2,L_p/2]^4;$$
2. real numbers $\beta_{N,p}$ for $N,p\in\mathbb N$ (bare couplings);
3. a Borel probability measure $h$ on $G$ that is a Haar measure (left-invariant, finite on compact sets, positive on nonempty open sets);
4. a set $\mathcal T$ (*tokens*) and, for all $N,p\in\mathbb N$, $v\in\mathcal T$ and $y\in\Lambda_{N,p}$, a function $I_{N,p}(v,y;\cdot)\colon G^{\Lambda_{N,p}\times\{1,\dots,4\}}\to\mathbb C$ (the *insertion* of $v$ at the site $y$).

We write $\mu_{N,p}:=\mu_{\ell_{N,p},\beta_{N,p},h}$.

*What it encodes.* $N$ is the ultraviolet index and $p$ the volume index. The torus $\Lambda_{N,p}$ with spacing $a_N$ has physical side $\ell_{N,p}a_N=L_p$. Since $G$ is compact (and second countable), $h$ is the normalized Haar measure.

*Nonstandard features.* The sequences $(D_N)$, $(L_p)$ and $(\beta_{N,p})$ are part of what the theorem asserts to exist; they are chosen by the construction, and the coupling depends on both $N$ and $p$. The token set and the insertions are arbitrary in this definition. Nothing here says that they discretize curvature polynomials or that they are renormalized; their only constraints are Definition 1.6 and the conclusions of the theorem.

*In the construction.* $L_p$ is divisible by $4$; $D_N=\prod_{k<N}b_k$ with odd integers $b_k\ge3$; $\beta_{N,p}$ is the bare coupling at level $N$ of a renormalization-group trajectory that reaches one fixed reference coupling at level $0$, for every $N$ and $p$. A token is a pair $(d,c)$, where $c\in\mathbb C^{k_d}$ is a coordinate vector, in a fixed basis, of the space $V_d$ of $G$-invariant polynomials of weight at most $d$ in the Taylor coefficients of a connection in radial gauge. Equivalently, $V_d$ consists of the gauge-invariant polynomials in the curvature and its covariant derivatives at a point, where the curvature has weight $2$ and each derivative adds $1$. The insertion is
$$I_{N,p}\big((d,c),y;U\big)=a_N^{-d}\,P_d\big[B_{N,p,d}\,c\big](y;U),$$
where $P_d[c']$ is a fixed polynomial in the matrix entries, and their conjugates, of the links inside a fixed finite stencil translated to $y$. It depends linearly on $c'$ and reproduces the classical label $c'$ to Taylor order $d$ in the spacing on links obtained by parallel transport of polynomial potentials in radial gauge. $B_{N,p,d}$ is an invertible linear map, the renormalization, with no explicit formula for its inverse [Assessment, §§4.1–4.2 and the glossary entry for the insertion].

**Definition 1.6 (Regular Wilson family).** A Wilson family is *regular* if the following hold.

* **(Reg1) Logarithmic running of the bare coupling.** There is $b_*>0$ such that for every $\varepsilon>0$ there is $N_0$ with
$$\Big|\frac{\beta_{N,p}}{\log(1/a_N)}-b_*\Big|<\varepsilon\qquad\text{for all }N\ge N_0\text{ and all }p\in\mathbb N .$$
* **(Reg2) Continuity.** For all $N,p,v,y$ the function $U\mapsto I_{N,p}(v,y;U)$ is continuous.
* **(Reg3) Gauge invariance.** $I_{N,p}(v,y;U^\gamma)=I_{N,p}(v,y;U)$ for all $N,p,v,y$, all configurations $U$ and all gauge transformations $\gamma\colon\Lambda_{N,p}\to G$.
* **(Reg4) Fixed finite stencil.** For every $v\in\mathcal T$ there is a finite set $\Sigma_v\subset\mathbb Z^4$ with the following property. For all $N,p$ and $y\in\Lambda_{N,p}$, put $A:=\{y+(z\bmod\ell_{N,p}):\ z\in\Sigma_v\}\subset\Lambda_{N,p}$. If two configurations $U,V$ agree on every link $(y',\mu)$ with $y'\in A$ and $y'+e_\mu\in A$, then $I_{N,p}(v,y;U)=I_{N,p}(v,y;V)$.

*What it encodes.* (Reg1) is the logarithmic growth of the inverse bare coupling required by asymptotic freedom, uniformly in the volume. (Reg2)–(Reg4) say that each insertion is a continuous, gauge-invariant function of the links in a patch of fixed size in lattice units. Its physical diameter is therefore $O(a_N)$.

*Nonstandard features.* (Reg1) asserts only that *some* positive slope exists. In the construction $b_*=2b_0=11C_{\mathfrak g}/(24\pi^2)$, but this value is not part of the main theorem. The stencil $\Sigma_v$ is independent of $N$, $p$ and $y$. Apart from (Reg2)–(Reg4), nothing restricts how the insertions depend on $N$ and $p$.

**Definition 1.7 (Lattice moments, smeared moments, admissible tests).** Let $\mathcal W$ be a Wilson family, $n\in\mathbb N$ and $v=(v_1,\dots,v_n)\in\mathcal T^n$.

1. For $y=(y_1,\dots,y_n)\in\Lambda_{N,p}^n$, the *lattice moment* is
$$M_{N,p}(v;y):=\int\prod_{i=1}^nI_{N,p}(v_i,y_i;U)\,\mu_{N,p}(dU).$$
2. For $f\in C^\infty_c(\mathrm{Conf}_n)$, the *smeared moment* is
$$C_{N,p}(v;f):=a_N^{4n}\sum_{y\in\Lambda_{N,p}^n}f(\hat y_1,\dots,\hat y_n)\,M_{N,p}(v;y).$$
3. $f\in C^\infty_c(\mathrm{Conf}_n)$ is *$p$-admissible* if $\mathrm{supp}f\subset\{x\in(\mathbb R^4)^n:\ -L_p/2<x_i^a<L_p/2\text{ for all }i,a\}$.

*What it encodes.* $C_{N,p}(v;f)$ is the Riemann sum, at spacing $a_N$, of the test function against the $n$-point function of the insertions, in the physical units of the box. The sum runs over all ordered $n$-tuples of sites. A tuple with a repeated site is mapped to a non-separated configuration, where $f$ vanishes, so it contributes nothing. For a $p$-admissible test, $\mathrm{supp}f$ lies in $\big((-L_p/2,L_p/2)^4\big)^n$, and $(-L_p/2,L_p/2)^4$ lies inside the fundamental domain $(-L_p/2,L_p/2]^4$ of the torus, so no periodic image of $\mathrm{supp}f$ enters.

**Definition 1.8 (Ordered convergence along a volume sequence).** Let $\mathcal W$ be a Wilson family, let $P\colon\mathbb N\to\mathbb N$, and let $K=(K_n(v;\cdot))$ be a family of functions $K_n(v;\cdot)\colon(\mathbb R^4)^n\to\mathbb C$, indexed by $n\in\mathbb N$ and $v\in\mathcal T^n$. We say that *$\mathcal W$ converges along $P$ to $K$* if for every $n\in\mathbb N$, every $v\in\mathcal T^n$ and every $f\in C^\infty_c(\mathrm{Conf}_n)$:

1. $f$ is $P(k)$-admissible for all sufficiently large $k$; and
2. there is a sequence $(R_p)_{p\in\mathbb N}$ of complex numbers such that
    * (a) for every $p\in\mathbb N$ for which $f$ is $p$-admissible, $C_{N,p}(v;f)\to R_p$ as $N\to\infty$; and
    * (b) $R_{P(k)}\to\displaystyle\int_{(\mathbb R^4)^n}f(x)\,K_n(v;x)\,dx$ as $k\to\infty$.

*What it encodes.* There are two successive limits. First comes the ultraviolet limit $N\to\infty$ at fixed physical volume, along the full sequence $N=0,1,2,\dots$, for every admissible volume. Then comes the infinite-volume limit along $P$.

*Nonstandard features.* The infinite-volume limit is taken only along the given sequence $P$. Nothing is said about diagonal limits $N=N(p)$, about exchanging the limits, or about rates. Condition 1 holds automatically when $P$ is strictly increasing, because $L_p\to\infty$. The numbers $R_p$ for inadmissible $p$ are unconstrained. Only the restriction of $K_n(v;\cdot)$ to $\mathrm{Conf}_n$ is tested.

#### The relativistic theory

**Definition 1.9 (Relativistic field-theory data).** A *relativistic field-theory datum* $\mathfrak W$ consists of the following.

1. A complex Hilbert space $\mathcal H$ and a complex vector space $\mathcal L$ (the *labels*).
2. A *field system*: a complex linear subspace $D\subset\mathcal H$ (the *domain*), a vector $\Omega\in D$ (the *vacuum*), and a map $(\ell,f)\mapsto\Phi(\ell,f)$ from $\mathcal L\times\mathcal S$ to the complex linear maps $D\to D$, complex linear in $\ell$ and in $f$.
3. A complex antilinear map $\ell\mapsto\ell^*$ of $\mathcal L$.
4. *Translations*: bounded operators $T(b)$, $b\in\mathbb R^4$, with $T(0)=1$, $T(b)T(b')=T(b+b')$, $\|T(b)\psi\|=\|\psi\|$, and $b\mapsto T(b)\psi$ continuous for every $\psi\in\mathcal H$.
5. An *energy–momentum measure*: an assignment of a bounded operator $E(A)$ to subsets $A\subset\mathbb R^4$, with $E(\emptyset)=0$ and $E(\mathbb R^4)=1$, such that for Borel sets $E(A)E(B)=E(A\cap B)$ and $E(A)^*=E(A)$, and $\sum_iE(A_i)\psi=E(\bigcup_iA_i)\psi$ (an unconditionally convergent sum) for pairwise disjoint Borel sets $A_i$ and every $\psi$. It comes with finite Borel measures $\mu_\psi$, $\psi\in\mathcal H$, such that $\mu_\psi(A)=\langle\psi,E(A)\psi\rangle$ for Borel $A$.
6. *Poincaré data*: a set $\mathcal P$ with a distinguished element $1$, a product $(g,g')\mapsto gg'$, a topology, and a homeomorphism $\kappa\colon\mathcal P\to\mathcal L^\uparrow_+\times\mathbb R^4$, $g\mapsto(\Lambda_g,b_g)$, with
$$\kappa(1)=(1,0),\qquad\kappa(gg')=(\Lambda_g\Lambda_{g'},\ \Lambda_gb_{g'}+b_g).$$
Here $\mathcal L^\uparrow_+$ is the group of linear maps $\Lambda$ of $\mathbb R^4$ with $\det\Lambda=1$, $\mathsf m(\Lambda x)=\mathsf m(x)$ for all $x$, and $\Lambda(\overline V_+)=\overline V_+$, with its usual topology. In addition there are: a map $\tau\colon\mathbb R^4\to\mathcal P$ with $\kappa(\tau(b))=(1,b)$, $\tau(0)=1$ and $\tau(b+b')=\tau(b)\tau(b')$; for each $g\in\mathcal P$, a bounded operator $U(g)$ on $\mathcal H$ and a complex linear bijection $\rho(g)$ of $\mathcal L$. These satisfy $U(1)=1$, $U(gg')=U(g)U(g')$, $\|U(g)\psi\|=\|\psi\|$, continuity of $g\mapsto U(g)\psi$ for every $\psi$, and $U(\tau(b))=T(b)$. The action on test functions is
$$(g\cdot f)(x):=f\big(\Lambda_g^{-1}(x-b_g)\big).$$

*What it encodes.* Through $\kappa$, $\mathcal P$ is a topological group isomorphic to the proper orthochronous Poincaré group $\mathcal P^\uparrow_+=\mathcal L^\uparrow_+\ltimes\mathbb R^4$. Then $U$ is a strongly continuous unitary representation of $\mathcal P^\uparrow_+$: each $U(g)$ is isometric and invertible. Its restriction to translations is $T$. $E$ is a projection-valued measure on the Borel sets of $\mathbb R^4$, with diagonal measures $\mu_\psi$. The map $\rho$ is required to be a representation only in (W2) below.

**Definition 1.10 (Wightman axioms).** A relativistic field-theory datum satisfies the *Wightman axioms* if (W0)–(W3) hold.

* **(W0) Spectrum and vacuum.**
    * (W0a) For all $\psi\in\mathcal H$ and $b\in\mathbb R^4$: $\displaystyle\langle\psi,T(b)\psi\rangle=\int_{\mathbb R^4}e^{\,i\,p\cdot b}\,\mu_\psi(dp)$.
    * (W0b) $E(\mathbb R^4\setminus\overline V_+)=0$.
    * (W0c) If $\psi\in\mathcal H$ satisfies $T(b)\psi=\psi$ for all $b$, then $\psi\in\mathbb C\,\Omega$.
* **(W1) Domain, temperedness, adjoint, cyclicity.**
    * (W1a) $\|\Omega\|=1$.
    * (W1b) $D$ is dense in $\mathcal H$.
    * (W1c) $D=\mathrm{span}_{\mathbb C}\{\Phi(\ell_1,f_1)\cdots\Phi(\ell_k,f_k)\Omega:\ k\ge0,\ \ell_i\in\mathcal L,\ f_i\in\mathcal S\}$, where the empty product gives $\Omega$.
    * (W1d) For each $\ell\in\mathcal L$ and $\psi\in D$, the map $\mathcal S\to\mathcal H$, $f\mapsto\Phi(\ell,f)\psi$, is continuous.
    * (W1e) $\langle\Phi(\ell,f)\psi,\chi\rangle=\langle\psi,\Phi(\ell^*,\bar f)\chi\rangle$ for all $\ell\in\mathcal L$, $f\in\mathcal S$ and $\psi,\chi\in D$.
* **(W2) Poincaré covariance.**
    * (W2a) $\rho(1)=\mathrm{id}$ and $\rho(gg')=\rho(g)\rho(g')$.
    * (W2b) $U(g)D\subset D$ for every $g$.
    * (W2c) $U(g)\Omega=\Omega$ for every $g$.
    * (W2d) $U(g)\Phi(\ell,f)\psi=\Phi(\rho(g)\ell,\ g\cdot f)\,U(g)\psi$ for all $g,\ell,f$ and $\psi\in D$.
* **(W3) Locality.** If $\mathsf m(x-y)<0$ for all $x\in\mathrm{supp}f$ and $y\in\mathrm{supp}f'$, then $\Phi(\ell,f)\Phi(\ell',f')\psi=\Phi(\ell',f')\Phi(\ell,f)\psi$ for all $\ell,\ell'\in\mathcal L$ and $\psi\in D$.

*What it encodes.* The Gårding–Wightman axioms for a family of bosonic fields labelled by $\mathcal L$, in the following form.

*Nonstandard features.*
1. (W0a) uses the Euclidean pairing $p\cdot b$. Writing $P^0:=p^4$ and $\vec P:=-\vec p$ gives the usual $T(b)=e^{i(P^0b^4-\vec P\cdot\vec b)}$. Since $\overline V_+$ is invariant under $\vec p\mapsto-\vec p$, (W0b) is the usual spectrum condition. With these conventions the Wightman functions are boundary values from the tube where the imaginary parts of the times increase from left to right, as in (R13)–(R15) below.
2. The invariance of $\Omega$ is stated in (W2c); (W0c) is uniqueness among translation-invariant vectors.
3. (W1c) is an equality: the domain *is* the span of the field monomials applied to $\Omega$. (W1d) is continuity into the norm topology, which is stronger than the usual weak temperedness.
4. The labels form an abstract complex vector space, possibly infinite-dimensional. Nothing requires $\rho$ to be finite-dimensional on any subspace, to be continuous, or to be trivial on translations, and $\ell\mapsto\ell^*$ need not be an involution.
5. The symmetry group is $\mathcal P^\uparrow_+$ itself, not its double cover, and all fields commute at spacelike separation.

#### The continuum hierarchy

**Definition 1.11 (Hierarchy over a Wilson family).** Let $\mathcal W$ be a Wilson family for $(m,G,\mathfrak g)$, with token set $\mathcal T$. A *hierarchy over $\mathcal W$* consists of:

* **(H1)** a relativistic field-theory datum $\mathfrak W=(\mathcal H,\mathcal L,D,\Omega,\Phi,{}^*,T,E,\mathcal P,\kappa,\tau,U,\rho)$;
* **(H2)** for each $d\in\mathbb N$, a finite-dimensional complex normed space $F_d$ (the *fields of degree $d$*) and a complex linear map $\iota_d\colon F_d\to\mathcal L$. Write $\mathbb F:=\bigsqcup_dF_d$ for the set of pairs $a=(d,\varphi)$ with $\varphi\in F_d$, and put $\deg a:=d$ and $\iota(a):=\iota_d(\varphi)$;
* **(H3)** a map $\pi\colon\mathcal T\to\mathbb F$ (the *projection of tokens to fields*);
* **(H4)** a compact metric space $X$ (the *phases*) with its Borel $\sigma$-algebra, a Borel measure $\nu$ on $X$, and a point $\xi_*\in X$ (the *selected phase*);
* **(H5)** for each $n\in\mathbb N$ and each *state* $s\in X\sqcup\{\mathrm{mix}\}$, a function $S^s\colon\mathbb F^n\times(\mathbb R^4)^n\to\mathbb C$, $(a;x)\mapsto S^s(a_1,\dots,a_n;x_1,\dots,x_n)$ (the *correlation functions*; $s=\mathrm{mix}$ is the unselected, or mixed, state);
* **(H6)** for each $n\in\mathbb N$, a function $\mathsf F_n\colon\mathbb F^n\times\mathbb C^n\times(\mathbb R^3)^n\to\mathbb C$, $(a;z,\vec x)\mapsto\mathsf F_n(a;z,\vec x)$ (the *continuation*);
* **(H7)** OPE data: for each $j\in\mathbb N$, a finite set $\mathrm{Ch}_j$ (channels) and elements $O_{j,\kappa}\in F_j$ for $\kappa\in\mathrm{Ch}_j$; and, for each finite set $I$, each $a\in\mathbb F^I$, each $j$ and each $\kappa\in\mathrm{Ch}_j$, a function $c_{j,\kappa}(a;\cdot,\cdot)\colon(\mathbb R^4)^I\times\mathbb R^4\to\mathbb C$, $(x,o)\mapsto c_{j,\kappa}(a;x,o)$ (the *OPE coefficients*);
* **(H8)** an element $\Theta\in F_4$ (the *centered trace*).

The field $\pi(v)$ is the continuum counterpart of the token $v$. A token $v$ with $\pi(v)=a$ is a *lattice representative* of $a$.

*What it encodes.* $F_d$ is the space of local fields of degree $d$. $\mathcal L$ labels the relativistic fields, and $\iota$ sends a field to the label of its relativistic counterpart. $S^{\mathrm{mix}}$ is the correlation function produced by the lattice (property (P1)); the $S^\xi$ are the phases into which it decomposes; $\mathsf F_n$ is the analytic continuation of the selected phase.

*Nonstandard features.* Everything in a hierarchy is abstract data; all constraints come from Definitions 1.12–1.17. The degree $d$ is an index that the OPE bounds use as a weight. It is not required to be a scaling dimension. Nothing requires $F_d\subset F_{d+1}$, compatibility of the maps $\iota_d$ for different $d$, or any relation of $F_d$ to curvature polynomials. The norms on $F_d$ play no role. The correlation functions are functions on all of $(\mathbb R^4)^n$, but only their values on $\mathrm{Conf}_n$ are constrained.

*In the construction.* $F_d=V_d/N_d$, where $V_d\cong\mathbb C^{k_d}$ is the token coefficient space of degree $d$ and $N_d$ consists of the $c$ such that $S^{\mathrm{mix}}(c\text{ at }x_0,\ b_1\text{ at }x_1,\dots,b_k\text{ at }x_k)=0$ for all $k$, all tokens $b_i$ and all separated points. $\mathcal L$ is the linear span of the "response" functions $R_c\colon(k,b,x)\mapsto S^{\mathrm{mix}}(c,b_1,\dots,b_k;x_0,\dots,x_k)$. Then $\iota_d([c])=R_c$ and $\pi(d,c)=(d,[c])$. The construction also proves that $F_d$ is linearly isomorphic to the space of gauge-invariant polynomials of weight $\le d$ in a free curvature satisfying the source-free Maxwell equations and the Bianchi identities, and that every phase has the same null spaces [Assessment, §3]. The phase space $X$ is the Gelfand spectrum of a commutative $C^*$-algebra of time-translated field words compressed to the zero-energy subspace of the Osterwalder–Schrader space of $S^{\mathrm{mix}}$. The measure $\nu$ represents the mixed vacuum. The point $\xi_*$ is chosen, by an existence argument, among the phases whose ground-state space is one-dimensional, which form a set of full $\nu$-measure; no other condition is imposed, and the trace law below is proved for the phase so chosen ([`YM/Org/Phase.lean:60`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L60-L77), [`YM/Phase/Unique.lean:111`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L111)). The source also contains an alternative selection, not used by the main theorem, which additionally requires a condition on the two-point function of the trace of the stress tensor along a fixed sequence of scales ([`YM/Trace/Revel.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace/Revel.lean)); the description in [Assessment, glossary entry for the selected phase] matches that alternative. $\mathsf F_n$ is the analytic continuation of $S^{\xi_*}$. The channels index a conjugation-invariant basis of a complement of the lower-degree fields in $F_j$ [Assessment, glossary entries for the OPE data].

**Definition 1.12 (Reconstruction properties).** A hierarchy has the *reconstruction properties* if (R1)–(R15) hold. Here $s$ ranges over $X\sqcup\{\mathrm{mix}\}$, $n$ over $\mathbb N$, and $a$ over $\mathbb F^n$.

* **(R1)** $\mathfrak W$ satisfies the Wightman axioms (W0)–(W3).
* **(R2) Faithful fields.** For every $\ell\in\mathcal L\setminus\{0\}$ there is $f\in\mathcal S$ with $\Phi(\ell,f)\neq0$.
* **(R3)** Each $\iota_d\colon F_d\to\mathcal L$ is injective.
* **(R4)** There are $a\in\mathbb F$ and $f\in\mathcal S$ with $\Phi(\iota(a),f)\neq0$.
* **(R5)** Every $\ell\in\mathcal L$ is of the form $\iota_d(\varphi)$ for some $d\in\mathbb N$ and $\varphi\in F_d$.
* **(R6)** $\pi\colon\mathcal T\to\mathbb F$ is surjective: every field has a lattice representative.
* **(R7)** $\nu(X)=1$.
* **(R8)** $\nu(O)>0$ for every nonempty open set $O\subset X$.
* **(R9) Permutation symmetry.** For all $s$, $n$, $a$, $x\in\mathrm{Conf}_n$ and permutations $\sigma$ of $\{1,\dots,n\}$:
$$S^s(a_{\sigma(1)},\dots,a_{\sigma(n)};x_{\sigma(1)},\dots,x_{\sigma(n)})=S^s(a_1,\dots,a_n;x_1,\dots,x_n).$$
* **(R10) Smoothness.** For all $s$, $n$, $a$, the function $x\mapsto S^s(a;x)$ is $C^\infty$ on $\mathrm{Conf}_n$.
* **(R11) Continuity in the phase.** For all $n$, $a$ and $x\in\mathrm{Conf}_n$, the function $\xi\mapsto S^\xi(a;x)$ is continuous on $X$.
* **(R12) Phase decomposition.** For all $n$, $a$ and $x\in\mathrm{Conf}_n$: $\displaystyle\int_XS^\xi(a;x)\,\nu(d\xi)=S^{\mathrm{mix}}(a;x)$.
* **(R13) Analyticity in the times.** For all $n$, $a$ and $\vec x\in(\mathbb R^3)^n$, the function $z\mapsto\mathsf F_n(a;z,\vec x)$ is holomorphic on the ordered tube
$$\mathcal Z_n:=\{z\in\mathbb C^n:\ \mathrm{Im}z_1<\mathrm{Im}z_2<\dots<\mathrm{Im}z_n\}.$$
* **(R14) Euclidean points.** For all $n$, $a$ and $x\in(\mathbb R^4)^n$ with $t(x_1)<\dots<t(x_n)$:
$$\mathsf F_n\big(a;\ (i\,t(x_1),\dots,i\,t(x_n)),\ (\vec x_1,\dots,\vec x_n)\big)=S^{\xi_*}(a;x).$$
* **(R15) Boundary values.** For all $n$, $a$, real numbers $h_1<\dots<h_n$ and $f_1,\dots,f_n\in\mathcal S$, as $r\to0^+$,
$$\int_{(\mathbb R^4)^n}\mathsf F_n\big(a;\ (t(x_k)+i\,r\,h_k)_{k=1}^n,\ (\vec x_k)_{k=1}^n\big)\prod_{k=1}^nf_k(x_k)\,dx\ \longrightarrow\ \big\langle\Omega,\ \Phi(\iota(a_1),f_1)\cdots\Phi(\iota(a_n),f_n)\,\Omega\big\rangle .$$

*What it encodes.* (R1)–(R6): a Wightman theory whose fields are labelled by the continuum fields; every nonzero field acts nontrivially; every field comes from the lattice. (R7)–(R12): a decomposition of the unselected correlations into continuous phases. (R13)–(R15): the relativistic theory is the one obtained by analytic continuation of the selected phase: its vacuum expectation values are boundary values of a function holomorphic in the complex times that agrees with $S^{\xi_*}$ at purely imaginary times.

*Remarks.*
1. Only the selected phase $\xi_*$ carries a relativistic theory in the main theorem. Other phases enter only through (R9)–(R12).
2. For fixed $\vec x$, the purely imaginary points $\{z\in\mathcal Z_n:\mathrm{Re}z=0\}$ form a totally real submanifold of maximal dimension in the connected open set $\mathcal Z_n$. By the identity theorem, (R13) and (R14) determine $\mathsf F_n(a;\cdot,\vec x)$ from $S^{\xi_*}$; through (R15) the vacuum expectation values of $\mathfrak W$ on product test functions are then determined by $S^{\xi_*}$. (This is a consequence, not a separate clause.)
3. (R4) prevents (R2) from holding vacuously, for instance with $\mathcal L=\{0\}$.
4. In (R15) the formal statement does not separately assert that the integrand is integrable for small $r>0$. In (P1) and (R12) integrability follows from (R10) and from (R11) with (R7), respectively.
5. No Euclidean covariance, reflection positivity or cluster property of any $S^s$ is asserted.

**Definition 1.13 (Operator product expansion).** Let a hierarchy be given.

1. For $r>0$, $M\ge0$, $\eta>0$, a finite set $I$, $x\in(\mathbb R^4)^I$ and $o\in\mathbb R^4$: $(x,o)$ is an *$(r,M,\eta)$-cluster* if $|x_i-o|\le Mr$ for all $i$ and $|x_i-x_{i'}|\ge\eta r$ for all $i\neq i'$.
2. For $c>0$, a finite set $J$ and $y\in(\mathbb R^4)^J$: $y$ is *$c$-clear of $o$* if $|o-y_j|\ge c$ for all $j$ and $|y_j-y_{j'}|\ge c$ for all $j\neq j'$.
3. For $a\in\mathbb F^I$, the *total degree* is $w(a):=\sum_{i\in I}\deg a_i$.
4. For $a\in\mathbb F^I$, $b\in\mathbb F^J$, $x\in(\mathbb R^4)^I$ and $y\in(\mathbb R^4)^J$, $S^s(a,x;b,y)$ is the $(|I|+|J|)$-point function $S^s$ evaluated on the concatenated lists of fields and points, enumerated in one fixed order of $I\sqcup J$.

The hierarchy has the *OPE property* if:

* **(O1) Coefficient bounds.** For every finite set $I$, $a\in\mathbb F^I$, $M\ge0$, $\eta>0$, $\varepsilon>0$, $j\in\mathbb N$ and $\kappa\in\mathrm{Ch}_j$, for all sufficiently small $r>0$ and every $(r,M,\eta)$-cluster $(x,o)$:
$$|c_{j,\kappa}(a;x,o)|\le r^{\,j-w(a)-\varepsilon}.$$
* **(O2) Remainder bounds.** For all finite sets $I,J$, $a\in\mathbb F^I$, $b\in\mathbb F^J$, $M\ge0$, $\eta,c,\varepsilon>0$ and $D\in\mathbb N$, for all sufficiently small $r>0$, every $(r,M,\eta)$-cluster $(x,o)$, every $y$ that is $c$-clear of $o$, and every state $s\in X\sqcup\{\mathrm{mix}\}$:
$$\Big|S^s(a,x;b,y)-\sum_{j=0}^{D}\sum_{\kappa\in\mathrm{Ch}_j}c_{j,\kappa}(a;x,o)\,S^s\big((j,O_{j,\kappa}),o;\ b,y\big)\Big|\le r^{\,D+1-w(a)-\varepsilon}.$$

*What it encodes.* A cluster of fields $a$ at points $x$ of size $O(r)$ around $o$ is replaced, inside any correlation with distant spectators $b$, by the finite sum of single fields $O_{j,\kappa}$ of degree $j\le D$ at $o$, up to an error $O(r^{D+1-w(a)-\varepsilon})$.

*Nonstandard features.* One system of coefficients serves every spectator list $b$, every truncation degree $D$ and every state $s$, the mixed one and every phase. The threshold $\delta$ in "sufficiently small $r$" depends on $(I,J,a,b,M,\eta,c,\varepsilon,D)$ in (O2), and on $(I,a,M,\eta,\varepsilon,j,\kappa)$ in (O1). It is uniform in $s$, $x$, $o$ and $y$. For $Mr<c$ every configuration that occurs is separated, so the OPE concerns separated configurations only. The degree $w$ is the sum of the degree indices of Definition 1.11, not a sum of scaling dimensions; the loss $\varepsilon$ leaves room for logarithms. The statement is a finite-truncation asymptotic bound. Convergence as $D\to\infty$, uniqueness of the coefficients and their relation to perturbation theory are not asserted.

**Definition 1.14 (Centered trace, stress tensor, time-axis correlation).** For a hierarchy, the *time-axis trace correlation* is
$$G_\Theta(r):=S^{\xi_*}\big((4,\Theta),(4,\Theta);\ (\vec 0,-r/2),\ (\vec 0,r/2)\big),\qquad r\in\mathbb R,$$
the selected-phase two-point function of $\Theta$ at two points of the time axis, at times $-r/2$ and $r/2$.

*In the main theorem*, $\Theta$ is an arbitrary element of $F_4$, constrained only by the trace test (Definition 1.16). The main theorem contains no stress tensor.

*In the construction.* The *stress tensor* is a family $T=(T_{ab})_{a,b=1}^4$ of fields $T_{ab}\in F_4$ with the following properties:

* it is symmetric, $T_{ab}=T_{ba}$, and real (fixed by the field conjugation of $F_4$);
* it is conserved, $\sum_a\partial_aT_{ab}=0$ in $F_5$, where $\partial_a\colon F_d\to F_{d+1}$ is the field derivative;
* it transforms as a rank-two tensor under $O(4)$;
* it satisfies Ward identities in the mixed state and in every phase. For a field $B\in F_d$ at $x_0$, spectators at $x_1,\dots,x_n$ (all points distinct), and a real $\chi\in C^\infty_c(\mathbb R^4)$ equal to $1$ near $x_0$ and vanishing near $x_1,\dots,x_n$,
$$-\sum_a\int\partial_a\chi(y)\,S\big(T_{ab}(y),B(x_0),\dots\big)\,dy=\frac{\partial}{\partial x_0^b}S\big(B(x_0),\dots\big),$$
and similarly for rotations.

The symmetric tensors with entries in $F_4$ that are real, centered with respect to $S^{\mathrm{mix}}$, transform as rank-two tensors under signed permutations of the coordinates, and have vanishing divergence in $F_5$ form a one-dimensional real space; the Ward identity fixes the normalization [Assessment, §7.1]. The constructed centered trace is
$$\Theta=\sum_aT_{aa}-S^{\xi_*}\Big(\sum_aT_{aa}\Big)\,\mathbf 1_4,$$
where $S^{\xi_*}(\cdot)$ is the selected one-point function, which is constant in the point, and $\mathbf 1_4\in F_4$ is the unit field, whose one-point function is $1$ [Assessment, §7.2]. The detailed theorem (Remark 2.4) identifies the operators: $\Phi(\iota(4,\Theta),f)=\Phi\big(\iota(4,\sum_aT_{aa}),f\big)-S^{\xi_*}\big(\sum_aT_{aa}\big)\big(\int f\big)\,\mathrm{id}$.

**Definition 1.15 (Mass-shell kernels and Wick profiles).** A *mode* is a quadruple $(\mathsf m,j,q,h)$ with $\mathsf m\ge0$, $j,q\in\mathbb N$, and $h\colon\mathbb R^3\to\mathbb R$ continuous with $h(\lambda p)=\lambda^jh(p)$ for all $\lambda>0$ and $p\in\mathbb R^3$. With $E_{\mathsf m}(p):=\sqrt{\mathsf m^2+|p|^2}$, its *kernel* is
$$K_{\mathsf m,q,h}(r):=\int_{\mathbb R^3}\frac{E_{\mathsf m}(p)^q\,h(p)}{2E_{\mathsf m}(p)}\,e^{-rE_{\mathsf m}(p)}\,dp .$$
A *Wick profile* is a function of the form
$$W(r)=\sum_{\alpha=1}^{A}c_\alpha\prod_{\beta=1}^{n_\alpha}K_{\mathsf m_{\alpha\beta},q_{\alpha\beta},h_{\alpha\beta}}(r),$$
with $A,n_\alpha\in\mathbb N$, $c_\alpha\in\mathbb C$ and modes $(\mathsf m_{\alpha\beta},j_{\alpha\beta},q_{\alpha\beta},h_{\alpha\beta})$. An empty product equals $1$.

*What it encodes.* For $r>0$ every integral converges absolutely. $K_{\mathsf m,q,h}(r)$ has the form of a two-point function of a free field of mass $\mathsf m$ at Euclidean time separation $r$ and zero spatial separation, with $q$ time derivatives and a homogeneous momentum numerator for spatial derivatives (normalizations are absorbed in $h$ and $c_\alpha$). Products of kernels correspond to Wick contractions. Thus Wick profiles include the time-axis two-point functions of finite Wick polynomials in finitely many free fields with finitely many masses [Assessment, §7.3].

**Definition 1.16 (Trace test).** A hierarchy over a Wilson family for $(m,G,\mathfrak g)$ *passes the trace test* if:

* **(T1)** $\langle\Omega,\Phi(\iota(4,\Theta),f)\,\Omega\rangle=0$ for every $f\in\mathcal S$;
* **(T2)** $3\dim_{\mathbb R}\mathfrak g/\pi^4>0$;
* **(T3)** $\displaystyle r^8\big(\log(1/r)\big)^2\,G_\Theta(r)\longrightarrow\frac{3\dim_{\mathbb R}\mathfrak g}{\pi^4}$ as $r\to0^+$ (a limit in $\mathbb C$);
* **(T4)** for every Wick profile $W$ and every $\delta>0$ there is $r\in(0,\delta)$ with $G_\Theta(r)\neq W(r)$.

*What it encodes.* $\Theta$ has vanishing vacuum expectation in $\mathfrak W$ (T1). Its selected two-point function on the time axis behaves like $\frac{3\dim\mathfrak g}{\pi^4}\,r^{-8}(\log 1/r)^{-2}$ (T3). The factor $(\log 1/r)^{-2}$ is the signature of a trace generated by renormalization, the trace anomaly, with one-loop running; the constant agrees with the perturbative value [Assessment, §7.2]. No Wick profile agrees with $G_\Theta$ on any interval $(0,\delta)$ (T4). Here $\dim_{\mathbb R}\mathfrak g$ is the real dimension of $\mathfrak g\subset M_m(\mathbb C)$.

*Nonstandard features.* (T2) holds for every simple $\mathfrak g$; it records that the constant in (T3) is positive. All four clauses concern the selected phase, a single field $\Theta$, and in (T3)–(T4) a single direction (the time axis). (T4) excludes only the specified finite class of profiles, and only for this one function.

#### The properties along a volume sequence

**Definition 1.17 (Main properties).** Let $\mathcal W$ be a Wilson family and $P\colon\mathbb N\to\mathbb N$. A hierarchy over $\mathcal W$ has the *main properties along $P$* if:

* **(P1) Lattice origin.** $\mathcal W$ converges along $P$ (Definition 1.8) to the kernels
$$K_n(v;x):=S^{\mathrm{mix}}\big(\pi(v_1),\dots,\pi(v_n);x\big),\qquad v\in\mathcal T^n;$$
* **(P2) Reconstruction.** (R1)–(R15) hold;
* **(P3) Operator product expansion.** (O1)–(O2) hold;
* **(P4) Trace test.** (T1)–(T4) hold.

### 2. The main theorem

**Theorem 2.1 (Main theorem).** Let $(m,G,\mathfrak g)$ be a gauge group with $\mathfrak g$ simple. Then there is a regular Wilson family $\mathcal W$ for $G$ with the following property. For every strictly increasing sequence $p\colon\mathbb N\to\mathbb N$ there are a strictly increasing sequence $q\colon\mathbb N\to\mathbb N$ and a hierarchy over $\mathcal W$ that has the main properties along the volume sequence $k\mapsto p(q(k))$.

Written out, with the quantifiers in their formal order, the theorem reads as follows.

> For every integer $m\ge1$, every closed subgroup $G\subset U(m)$ and every real subspace $\mathfrak g\subset M_m(\mathbb C)$ with $\mathfrak g=\{X:\ \exp(sX)\in G\ \forall s\in\mathbb R\}$ and $\mathfrak g$ simple,
>
> **there exist** strictly increasing sequences $(L_p)$ and $(D_N)$ of positive integers, real numbers $(\beta_{N,p})$, the normalized Haar measure $h$, a set $\mathcal T$ and insertions $(I_{N,p}(v,y;\cdot))$ satisfying (Reg1)–(Reg4), such that
>
> **for every** strictly increasing $p\colon\mathbb N\to\mathbb N$
>
> **there exist** a strictly increasing $q\colon\mathbb N\to\mathbb N$; a relativistic field-theory datum $(\mathcal H,\mathcal L,D,\Omega,\Phi,{}^*,T,E,\mathcal P,\kappa,\tau,U,\rho)$; finite-dimensional spaces $F_d$ with linear maps $\iota_d\colon F_d\to\mathcal L$; a map $\pi\colon\mathcal T\to\mathbb F$; a compact metric space $X$ with a Borel measure $\nu$ and a point $\xi_*$; correlation functions $S^s$ for $s\in X\sqcup\{\mathrm{mix}\}$; continuations $\mathsf F_n$; OPE data $(\mathrm{Ch}_j,O_{j,\kappa},c_{j,\kappa})$; and $\Theta\in F_4$, such that:
>
> * (P1) for every $n$, every $v\in\mathcal T^n$ and every $f\in C^\infty_c(\mathrm{Conf}_n)$, $f$ is $p(q(k))$-admissible for all large $k$, and there are numbers $R_p$ with $C_{N,p}(v;f)\to R_p$ as $N\to\infty$ for every $p$ for which $f$ is $p$-admissible, and
> $$R_{p(q(k))}\longrightarrow\int_{(\mathbb R^4)^n}f(x)\,S^{\mathrm{mix}}\big(\pi(v_1),\dots,\pi(v_n);x\big)\,dx\qquad(k\to\infty);$$
> * (P2) (R1)–(R15); (P3) (O1)–(O2); (P4) (T1)–(T4).

**Remark 2.2 (Order of choices).** The lattice data $(L_p)$, $(D_N)$, $(\beta_{N,p})$, $\mathcal T$ and $(I_{N,p})$ are fixed before the volume sequence $p$. The refinement $q$ and the entire continuum structure (the fields $F_d$, the phases, the selected phase, the relativistic theory, the OPE data and $\Theta$) are chosen after $p$ and may depend on $p$. A single hierarchy satisfies (P1)–(P4) simultaneously. Hence the correlation functions to which the lattice moments converge are the ones whose phases are decomposed, whose selected phase is continued to the relativistic theory, which obey the OPE (spectators included), and whose trace correlation is tested.

**Remark 2.3 (What the lattice determines).** For a fixed volume sequence $P=p\circ q$ and every token list $v$, (P1) and (R10) determine the function $S^{\mathrm{mix}}(\pi(v_1),\dots,\pi(v_n);\cdot)$ on $\mathrm{Conf}_n$ from $\mathcal W$ and $P$ alone: a function continuous on $\mathrm{Conf}_n$ is determined there by its integrals against $C^\infty_c(\mathrm{Conf}_n)$. By (R6) every list of fields is of the form $(\pi(v_1),\dots,\pi(v_n))$. The theorem does not claim that the other data of the hierarchy (the phase decomposition, the selected phase, the relativistic theory, the OPE coefficients, $\Theta$) are unique.

**Remark 2.4 (The detailed theorem).** The formal development proves Theorem 2.1 as a projection of a longer theorem. It has the following form. For every gauge group with $\mathfrak g$ simple and **every real $b>0$**, there is one internal construction, a renormalization-group family, such that: its block-spin kernel has penalty parameter $b$ (D16); the internal construction predicate holds (D3); the associated Wilson family is regular; and for every *extraction order* $p=(p_{\mathrm{mesh}},p_{\mathrm{vol}})$, a pair of strictly increasing sequences, there are a refinement $q$, a limit correlation table, a final witness (stress tensor, phases, continuations, relativistic theory), relativistic theories for all phases, an OPE reader, contact devices and a scaling sequence, such that (D1), (D2) and (D4)–(D15) below hold. (D3) and (D16) are stated once, before the quantifier over $p$. Theorem 2.1 is the case $b=1$, $p_{\mathrm{mesh}}=\mathrm{id}$, $p_{\mathrm{vol}}=p$; the public $q$ is the volume component of the refinement. The extra conclusions are as follows. Items (D3) and (D5)–(D15) are summarized from their definitions and the source comments; not all of them were unfolded to the last definition.

* **(D1)** The hierarchy built from these data, over the Wilson family of the construction, has the main properties along $p_{\mathrm{vol}}\circ q_{\mathrm{vol}}$. Theorem 2.1 is the special case described above.
* **(D2) Contact extensions.** For every state $s$, every $n$ and every $a\in\mathbb F^n$ there is a distribution $\mathcal D$ on $(\mathbb R^4)^n$, that is, a continuous linear functional on $C^\infty_c((\mathbb R^4)^n)$ with its usual topology, such that $\mathcal D(f)=\int f(x)S^s(a;x)\,dx$ for every $f$ supported in $\mathrm{Conf}_n$. Uniqueness is not claimed.
* **(D3)** The construction predicate. Its parts: the bare couplings follow one selected RG trajectory that reaches the reference coupling at level $0$; the local lattice sections are gauge invariant, satisfy reality and hypercubic covariance, give $1$ on the unit label, and match each classical label to Taylor order $d$ on links obtained by parallel transport of polynomial potentials; the stencils fit in the lattice; and the transfer data of the insertions are normalized at a fixed reference level.
* **(D4)** The ordered limit holds with the *full* ultraviolet sequence and the refined volume sequence, for the internal limit table (the same content as (P1)).
* **(D5) Fixed-volume limits in position space.** For every volume index $p$ and token list $v$ there is a function, $C^\infty$ away from periodic coincidences ($x_i-x_j\notin L_p\mathbb Z^4$ for $i\neq j$), to which the smeared moments converge as $N\to\infty$ for admissible tests. Lattice difference quotients of the lattice correlations converge, locally uniformly away from periodic coincidences, to the corresponding derivatives.
* **(D6)** The RG trajectory of the family is generated exactly by an explicit recursion from chosen constants and step data.
* **(D7) Every phase.** For every phase $\xi\in X$ there is a relativistic theory that satisfies (W0)–(W3), with the same label space, and realizes the boundary values of a continuation attached to the phase $\xi$. In each such theory the zero-energy subspace is $\mathbb C\Omega_\xi$, and the weak commutant of the fields is trivial (irreducibility). A bounded comparison map from the phase's Wightman space to its Osterwalder–Schrader space is surjective, and the Euclidean vacuum of the phase is unique. There are bounds uniform in the phase: low-energy spectral weight $\mu_{A\Omega_\xi}(\{0<p^4\le u\})\le M_Au^2$ for $u\in(0,1]$, and $0\le\langle x,(e^{-sH_\xi}-P_{0})x\rangle\le M_A s^{-2}$ for $s\ge1$, for vectors $x=A\Omega_\xi$ with $A$ a finite sum of field words. The Wightman distributions depend continuously on $\xi$. The stress tensor continues to every phase. The $\nu$-average of the phase Euclidean expectations equals the mixed expectation, and the $\nu$-average of the phase Wightman distributions equals the boundary distribution of the analytic continuation of $S^{\mathrm{mix}}$, on joint Schwartz tests. The internal form of the Wightman axioms also includes positivity of the Wightman functional.
* **(D8)** Integrated forms of the OPE remainder: averages over complex measures on cluster–spectator configurations with bounded total variation, uniform over measurable choices of phases; and an OPE foundation with injectivity of the configurations involved.
* **(D9) Trace tests.** (T1); the operator identification in Definition 1.14; the short-distance law (T3); existence and uniqueness of a spectral measure for the two-point function of $\Theta$ with a prescribed log-corrected high-energy scaling limit; and three countertests. *Wick:* for every finite Gaussian (Wick) model and every pair of polynomial fields in it, there are Schwartz functions $f,g$, subject to a compact-support condition on a transform of $f\otimes g$, at which the selected Wightman two-point function of $\Theta$ differs from the model's two-point function. *Maxwell:* for every isometric embedding of $\mathcal H$ into an $n$-colour free Maxwell Fock space that maps the vacuum to the vacuum, intertwines translations and has transverse symmetric image, there are a compactly supported $f$ and real compactly supported $h_1,\dots,h_n$, causally separated from $f$, with $\langle W(-h)\Omega,\Theta(f)\Omega\rangle\neq\langle\Theta(\bar f)\Omega,W(h)\Omega\rangle$ for the Weyl (coherent) vectors $W(\pm h)\Omega$ and the images of $\Theta(\cdot)\Omega$. Equality would hold if $\Theta(f)$ commuted with the Weyl operators, so $\Theta$ is not a local field of that Maxwell theory. *Invariant:* an averaged version of the Maxwell countertest, localized in an arbitrarily small ball.
* **(D10)** Nested OPE estimates over admissible finite trees of clusters, with truncation degrees and rates at the nodes, in the mixed state and every phase.
* **(D11)–(D13) Contacts.** The contact devices use the same OPE prescription as the reader. The full contact resolution at multiple collisions satisfies summation formulas and estimates and agrees with the separated correlation away from total collapse. There is a real basis system of the OPE strata containing the unit field. There is a sequence of contact thresholds $t_n\downarrow0$ with $4t_{n+1}<t_n$ and $2(n+1)t_n$ at most the clearance at degree $n$.
* **(D14)–(D15) Free Maxwell comparison.** Along a scaling sequence $r_k\downarrow0$ with field frames $U_k$, the rescaled correlations of the mixed state, for the stress tensor and the other fields, converge, with all derivatives and uniformly on compact subsets of $\mathrm{Conf}_n$, to those of $\dim\mathfrak g$ free Maxwell fields with the Maxwell stress tensor [Assessment, §7.4]. The relevant space of conserved tensors is one-dimensional, and derivatives and rotations are compatible in the limit. A normalization and leading position-space comparison holds at degree $4$ along the same sequence.
* **(D16)** The family's block-spin kernel penalty equals $b$.

In addition, the proof of regularity for the constructed family gives (Reg1) with $b_*=2b_0=11C_{\mathfrak g}/(24\pi^2)$. This value is established in the proof and is not a conjunct of the detailed theorem. Some of the extra conclusions are the formal counterparts of results described in the group's assessment: Theorems 4.1, 6.1 and 7.2 and §§7.1–7.5 [Assessment].

### 3. Corollary: the case $SU(2)$

**Corollary 3.1.** Let $G=SU(2)=\{g\in U(2):\det g=1\}$ in its defining representation ($m=2$), and let $\mathfrak g$ be its Lie algebra $\mathfrak{su}(2)=\{X:\exp(sX)\in SU(2)\ \forall s\}$. Then $\mathfrak g$ is simple, and the conclusion of Theorem 2.1 holds for $(2,SU(2),\mathfrak{su}(2))$: there is a regular Wilson family for $SU(2)$ such that for every strictly increasing $p$ there are a strictly increasing $q$ and a hierarchy with the main properties along $p\circ q$.

Here $\dim_{\mathbb R}\mathfrak g=3$, so the constant in (T3) is $9/\pi^4$. In the construction's normalization $C_{\mathfrak g}=8$, so the constructed slope in (Reg1) is $b_*=11/(3\pi^2)$. Neither number appears in the formal corollary; both are evaluations of the general formulas. Simplicity is proved from three explicit matrices spanning $\mathfrak{su}(2)$ whose brackets show that a nonzero ideal contains all three.

### 4. What is not claimed

1. **Uniqueness of the infinite-volume limit, or independence of the subsequence.** The refinement $q$ depends on $p$, and the hierarchy depends on $p$ and $q$. Nothing relates the hierarchies obtained for different $p$ or $q$, and nothing asserts convergence along the full sequence of volumes. "This infinite-volume limit is only taken subsequentially … it remains unresolved whether the limiting correlations depend on the chosen subsequence" [Assessment, §5; also p. 1 and §8, item 1]. The source README says: "The volume limit allows refinement."
2. **Universality in the lattice data.** The spacings $a_N$, the sides $L_p$, the couplings $\beta_{N,p}$ and the insertions are produced by the construction. No statement concerns other choices, and none says that the limit is independent of them. "The construction chooses both sequences, and thus the UV convergence theorem does not assert convergence over all possible sequences of spacings"; "there is no universality result" [Assessment, §§4, 4.3]. The order of limits is fixed: $N\to\infty$ first at each fixed volume, then the volume along $p\circ q$. No diagonal limit, no exchange of limits and no rates are asserted.
3. **Coincident points.** Every Euclidean statement concerns separated configurations; values at coincident points are unconstrained. The main theorem contains no distributional extension across the diagonals. The detailed theorem supplies one (D2), without uniqueness. "Uniqueness over other contact prescriptions and raw cutoff convergence on collision diagonals are outside the claim" [source README]; "uniqueness, the full OS axioms for these extensions, and lattice convergence are not proven for these extensions" [Assessment, §7.5; also §10].
4. **Clustering of the mixed state; uniqueness and agreement of the phases.** Neither $X$ nor $\nu$ is claimed to be trivial, and $S^{\mathrm{mix}}$ is not claimed to cluster. The relativistic theory of the main theorem is built for the selected phase only, and $\xi_*$ is not characterized by any property in the main theorem. Nothing says that different phases have equal correlations or are related by a symmetry, or that a phase is itself a limit of lattice states. The assessment notes that "each component theory correlation function $S^\xi$ clusters, but this does not imply clustering of $S^{\mathrm{mix}}$" [Assessment, §6.2], and that "agreement of the component theories [is] also unresolved" [Assessment, p. 1].
5. **Mass gap.** No spectral gap is asserted; (W0) is only the spectrum condition with uniqueness of the vacuum. "It does not prove … that there is a mass gap" [Assessment, p. 1]; "The construction provides no evidence for or against a mass gap" [Assessment, §2, item 4; also §8, item 3]; "A positive mass gap … [is] outside its scope" [source README]. The low-energy and heat bounds in (D7) are polynomial, not exponential.
6. **Perturbation theory to all orders.** The OPE is a finite-truncation asymptotic statement. Its coefficients are not compared with perturbation theory, and neither convergence as $D\to\infty$ nor uniqueness of the coefficients is claimed. "Perturbative agreement to all orders remains unproved" [Assessment, §7.5; also §9.4]; "all-orders MS-bar matching [is] outside its scope" [source README]. Only the leading constant in (T3) has been compared with the one-loop prediction, and that comparison is external to the theorem [Assessment, §7.2].
7. **Euclidean axioms.** The main theorem asserts no Euclidean covariance, reflection positivity, growth bound or cluster property for the correlation functions $S^s$. These are proved inside the construction and checked independently for the selected trace hierarchy [Assessment, §10], but they are not conclusions of Theorem 2.1.
8. **Field content and lattice meaning.** The main theorem does not say that the tokens and insertions are lattice versions of gauge-invariant polynomials in the curvature, that $F_d$ is a quotient of a space of such polynomials, or how large $F_d$ is. It contains no stress tensor and does not identify $\Theta$ as the trace of one. These are properties of the construction, recorded in part in the detailed theorem (Remark 2.4, (D3), (D9), (D14)). The group reports that OpenAI informed them that the public target "omitted some of the connections to the lattice construction established by its proof" [Assessment, §9].
9. **The running coupling.** Only the existence of a positive slope $b_*$ in (Reg1) is claimed. The value $11C_{\mathfrak g}/(24\pi^2)$, and asymptotic freedom of a renormalized effective coupling [Assessment, §7.4, Theorem 7.2], are not part of Theorem 2.1. The effective coupling is not proved independent of the subsequential limit [Assessment, §7.4].
10. **Free fields.** Only finite Wick profiles (Definition 1.15) are excluded, and only for $G_\Theta$. Generalized free fields with continuous mass spectrum, infinite sums, and general composites of Gaussian fields are not excluded. The theorem "does not rule out every description in terms of composites of Gaussian fields" [Assessment, §7.3]; "general exclusion of continuous-mass generalized free fields … [is] outside its scope" [source README].
11. **Other objects.** There is no probability measure on a space of distributions [Assessment, §3 and §8, item 2], no Wilson loop observable or area law [§8, item 4], and no particle spectrum or scattering theory [§8, item 5].
12. **Analyticity.** Only analyticity in the complex times at fixed real spatial positions is asserted (R13). Analyticity in the full forward tube, with complex spatial coordinates, is not asserted. The Wightman functions are identified as boundary values only on product test functions (R15).
13. **Uniqueness of the hierarchy for a given volume sequence.** Apart from Remark 2.3, no part of the hierarchy is claimed to be unique.

### 5. Comparison with the standard formulations

#### 5.1 Wightman axioms [SW]

| Standard requirement | Form in Theorem 2.1 | Departure |
|---|---|---|
| Strongly continuous unitary representation of the covering group of $\mathcal P^\uparrow_+$ | $U$ on $\mathcal H$, a representation of $\mathcal P^\uparrow_+$ (Definition 1.9, (W2)) | No double cover; no spinor fields |
| Spectrum condition | (W0a)–(W0b): a projection-valued measure related to $T$ by Fourier transform in the Euclidean pairing, supported in $\overline V_+$ | Equivalent after $\vec p\mapsto-\vec p$ |
| Invariant vacuum, unique up to a factor | (W2c), (W0c), (W1a) | None |
| Fields are operator-valued tempered distributions on a dense invariant domain containing $\Omega$ | (W1b), (W1d); invariance of $D$ is built into the definition | Norm continuity in $f$, stronger than weak temperedness |
| Cyclicity of the vacuum | (W1b) with (W1c) | $D$ *equals* the span of the field monomials on $\Omega$ |
| Finitely many field components transforming under a finite-dimensional representation of the Lorentz group | Abstract label space $\mathcal L$ with a linear representation $\rho$ of $\mathcal P^\uparrow_+$ | $\mathcal L$ may be infinite-dimensional; $\rho$ need not be finite-dimensional, continuous, or trivial on translations |
| Hermiticity | (W1e), with an antilinear map $\ell\mapsto\ell^*$ | $\ell\mapsto\ell^*$ need not be an involution |
| Local commutativity | (W3), commutators for all pairs of labels | Bosonic fields only |
| (not standard) | (R2) faithful fields; (R3)–(R6) relations between fields, labels and lattice tokens | Additional requirements |

The relativistic theory is constructed for **one phase** $\xi_*$, and its Wightman functions are tied to the Euclidean data only through (R13)–(R15). These clauses concern analyticity in the times alone and boundary values on product test functions.

#### 5.2 Osterwalder–Schrader axioms [OS]

| Axiom | Status in Theorem 2.1 |
|---|---|
| E0: Schwinger functions are (tempered) distributions | Not asserted. The $S^s$ are functions on $\mathrm{Conf}_n$, $C^\infty$ there (R10), with no growth bound, tested only against $C^\infty_c(\mathrm{Conf}_n)$ in (P1). The extension (D2) is in the detailed theorem only. |
| E0′: linear growth in the number of points | Not asserted |
| E1: Euclidean covariance | Not asserted |
| E2: reflection positivity | Not asserted |
| E3: permutation symmetry | (R9), on $\mathrm{Conf}_n$ |
| E4: cluster property | Not asserted for any state. In its place: the phase decomposition (R7), (R8), (R11), (R12), and uniqueness of the vacuum (W0c) in the selected phase's relativistic theory. |
| Reconstruction theorem | Not stated as a theorem. Its conclusion is asserted directly for the selected phase: (R13)–(R15) together with (W0)–(W3). |

The group checked separately, outside Theorem 2.1, that the selected-phase correlations of $\Theta$ satisfy E0–E4 and E0′ in the formulation of [DMY], on Schwartz tests that vanish to all orders on the diagonals [Assessment, §10].

#### 5.3 The Jaffe–Witten formulation [JW]

| Requirement in [JW] | Status in Theorem 2.1 |
|---|---|
| A compact simple gauge group $G$ | Definition 1.1: a closed subgroup of $U(m)$ with simple Lie algebra. This covers every compact simple Lie group in a faithful unitary representation, and also some disconnected groups. |
| A quantum field theory on $\mathbb R^4$ satisfying axioms at least as strong as Wightman's or Osterwalder–Schrader's | Wightman axioms in the form (W0)–(W3), for the relativistic theory of one selected phase of a subsequential infinite-volume limit. [JW] regards a subsequential limit obtained by compactness as insufficient unless further arguments establish the required properties [Assessment, §5]. |
| Nontriviality | (T3)–(T4) |
| Local fields corresponding to gauge-invariant local polynomials in the curvature and its covariant derivatives | Abstract spaces $F_d$ with lattice origin ((P1), (R6)). The identification with curvature polynomials belongs to the construction (§4, item 8). |
| Short-distance behaviour predicted by asymptotic freedom: stress tensor, OPE with the predicted singularities | (Reg1): logarithmic growth of the bare inverse coupling, slope unspecified. (O1)–(O2): finite-order OPE bounds, not matched to perturbation theory. (T3): leading law of the trace two-point function with the one-loop constant. The stress tensor appears only in the construction. |
| Mass gap $\Delta>0$ | Not claimed |

In summary, the formulation differs from the standard ones in four structural ways. (i) Euclidean statements concern separated configurations only. (ii) The relativistic fields are faithful, labelled by an abstract space built from the quotient spaces $F_d$. (iii) A phase decomposition with a selected phase replaces clustering and uniqueness of the vacuum. (iv) Limits are taken along construction-chosen lattice sequences and a subsequence of volumes.

#### References

* [Assessment] Yang–Mills group, *Validation of the OpenAI Yang–Mills construction*, release of 10 November 2026 (text in `sources/assessment-1.txt`).
* [DMY] M. R. Douglas, Y. Mei, X. Yin, formalization of the Osterwalder–Schrader axioms and reconstruction (repository `xiyin137/OSreconstruction`).
* [JW] A. Jaffe and E. Witten, *Quantum Yang–Mills theory*, in *The Millennium Prize Problems*, Clay Math. Inst. and AMS, 2006.
* [OS] K. Osterwalder and R. Schrader, Axioms for Euclidean Green's functions I, II, Comm. Math. Phys. 31 (1973) 83–112; 42 (1975) 281–305.
* [SW] R. F. Streater and A. S. Wightman, *PCT, Spin and Statistics, and All That*, Benjamin, 1964.


## Correspondence with the Lean source

Each item of the precise statement and the Lean declaration it transcribes, linked to the exact lines.

| item | Lean declaration | where |
|---|---|---|
| Def 1.1 gauge group | `YangMills.GaugeGroup` | [PublicTheory.lean:25-33](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L25-L33) |
| Def 1.1 U(m) | `YangMills.UnitaryRepresentation` | [PublicTheory.lean:20](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L20) |
| Def 1.1 simple (i)-(ii) | `YangMills.GaugeGroup.IsSimple` | [PublicTheory.lean:39-45](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L39-L45) |
| Def 1.1 inner product (construction) | `YM.Gauge.trace_color; YM.Gauge.colorIso` | [YM/Gauge/Colors.lean:52-55,71-75](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L52-L55) |
| Def 1.1 Casimir (construction) | `YM.Gauge.casimir` | [YM/Gauge/Colors.lean:180-182](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182) |
| Def 1.1 b0 (construction) | `YM.Pert.Asymptotics.b0; YM.Gauge.slopeConstant` | [YM/Pert/Asymptotics/RawAxis.lean:13-14; YM/Gauge/Colors.lean:184](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13-L14) |
| Def 1.1 internal gauge | `YangMills.GaugeGroup.core; GaugeGroup.coreSimple; YM.Gauge.lie; YM.Gauge.Simple` | [WilsonBridge.lean:10-17; YM/Gauge/Lie.lean:126-135,179-182](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L10-L17) |
| Def 1.2(1) spacetime, time, spatial | `YangMills.Axis; SpaceAxis; timeAxis; Spacetime; Space; time; spatial` | [PublicTheory.lean:51-60](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L51-L60) |
| Def 1.2(1) cone, Minkowski square, spacelike | `YangMills.forwardCone; minkowskiSquare; spacelike` | [PublicTheory.lean:64-68](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L64-L68) |
| Def 1.2(2) configurations | `YangMills.Points` | [PublicWilson.lean:10](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L10) |
| Def 1.2(2) Conf_n | `YangMills.WilsonFamily.separated` | [PublicWilson.lean:59-71](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L59-L71) |
| Def 1.2(3) Schwartz space | `YangMills.TestFunction` | [PublicTheory.lean:70](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L70) |
| Def 1.2(3) conjugation | `YangMills.conjugateTest` | [PublicTheory.lean:73-74](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L73-L74) |
| Def 1.2(4) separated tests | `YangMills.WilsonFamily.SeparatedTest; _root_.TestFunction (Mathlib)` | [PublicWilson.lean:73; Mathlib@81a5d257:Mathlib/Analysis/Distribution/TestFunction.lean:67-72](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L73) |
| Def 1.3(1) torus | `YangMills.Site` | [PublicWilson.lean:11](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L11) |
| Def 1.3(2) configurations | `YangMills.Configuration; GaugeGroup measurable instances` | [PublicWilson.lean:12,16-17](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L12) |
| Def 1.3(3) plaquette | `YangMills.plaquette` | [PublicWilson.lean:20-23](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L20-L23) |
| Def 1.3(3) Wilson energy | `YangMills.wilsonEnergy; YangMills.Directions` | [PublicWilson.lean:13,25-27](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L13) |
| Def 1.3(4) gauge transformation | `(inline in YangMills.WilsonRegularity.invariant)` | [ChallengeSpec.lean:16-18](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L16-L18) |
| Def 1.4 Wilson measure | `YangMills.wilsonLaw` | [PublicWilson.lean:29-33](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L29-L33) |
| Def 1.4 (construction comparison) | `YangMills.law_eq; YangMills.energy_eq` | [WilsonBridge.lean:32-46](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L32-L46) |
| Def 1.5 Wilson family | `YangMills.WilsonFamily` | [PublicWilson.lean:35-46](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L35-L46) |
| Def 1.5(1) spacing a_N | `YangMills.WilsonFamily.mesh` | [PublicWilson.lean:50](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L50) |
| Def 1.5(1) physical position | `YangMills.WilsonFamily.place` | [PublicWilson.lean:51-52](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L51-L52) |
| Def 1.5 (construction) | `YangMills.wilsonFamily` | [WilsonBridge.lean:20-30](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20-L30) |
| Def 1.5 (construction) schedule | `YM.Schedule; YM.Schedule.denominator; YM.Schedule.a` | [YM/Lattice/Scale.lean:28-41,99](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L41) |
| Def 1.5 (construction) bare coupling | `YM.Family.beta; YM.RG.History.Selected` | [YM/Source/Construction.lean:38; YM/RG/History.lean:234-240](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L38) |
| Def 1.5 (construction) tokens | `YM.Register.Token; YM.Family.book; YM.Labels.Label; YM.Labels.invariantSpace; YM.Labels.Taylor` | [YM/Euclid/Register.lean:88; YM/Extraction/LatticeFamily.lean:20; YM/Labels/Polynomial.lean:51-61,103-112; YM/Labels/Jet.lean:22-39](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L88) |
| Def 1.5 (construction) insertion | `YM.Family.seen; YM.Family.O; YM.Source.TransferData.cylinder; YM.Source.initial` | [YM/Extraction/LatticeFamily.lean:26; YM/Source/Construction.lean:42; YM/Source/Insertion.lean:73-87](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L26) |
| Def 1.5 (construction) classical matching | `YM.Source.SectionData.Sound; YM.Source.Projects` | [YM/Source/Local.lean:85-89,140-147](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L85-L89) |
| Def 1.6 regular | `YangMills.WilsonRegularity` | [ChallengeSpec.lean:12-22](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22) |
| (Reg1) | `YangMills.WilsonRegularity.running` | [ChallengeSpec.lean:13-14](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L13-L14) |
| (Reg2) | `YangMills.WilsonRegularity.continuous` | [ChallengeSpec.lean:15](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L15) |
| (Reg3) | `YangMills.WilsonRegularity.invariant` | [ChallengeSpec.lean:16-18](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L16-L18) |
| (Reg4) | `YangMills.WilsonRegularity.localSupport` | [ChallengeSpec.lean:19-22](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L19-L22) |
| Def 1.6 (construction) | `YangMills.regular` | [HierarchyBridge.lean:16-25](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25) |
| Def 1.7(1) lattice moment | `YangMills.WilsonFamily.finiteMoment` | [PublicWilson.lean:54-57](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L54-L57) |
| Def 1.7(2) smeared moment | `YangMills.WilsonFamily.smear` | [PublicWilson.lean:79-81](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L79-L81) |
| Def 1.7(3) admissible | `YangMills.WilsonFamily.suitable` | [PublicWilson.lean:75-77](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L75-L77) |
| Def 1.8 ordered convergence | `YangMills.WilsonFamily.Converges` | [PublicWilson.lean:85-90](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90) |
| Def 1.9(1) Hilbert space | `YangMills.HilbertSpace` | [PublicTheory.lean:79-83](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L79-L83) |
| Def 1.9(1) labels | `YangMills.FieldLabels` | [PublicTheory.lean:96-99](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L96-L99) |
| Def 1.9(2) field system | `YangMills.FieldSystem` | [PublicTheory.lean:105-109](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L105-L109) |
| Def 1.9(2) field words | `YangMills.FieldSystem.vector; YangMills.FieldSystem.vacuumExpectation` | [PublicTheory.lean:115-124](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L115-L124) |
| Def 1.9(3) adjoint on labels | `YangMills.WightmanTheory.adjointLabel` | [PublicTheory.lean:257](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L257) |
| Def 1.9(4) translations | `YangMills.TranslationAction` | [PublicTheory.lean:169-177](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L169-L177) |
| Def 1.9(5) energy-momentum measure | `YangMills.EnergyMomentumMeasure` | [PublicTheory.lean:180-200](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L180-L200) |
| Def 1.9(6) Lorentz group | `YangMills.ProperLorentz` | [PublicTheory.lean:209-212](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L209-L212) |
| Def 1.9(6) coordinates | `YangMills.PoincareCoordinates` | [PublicTheory.lean:215](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L215) |
| Def 1.9(6) Poincare data | `YangMills.PoincareAction` | [PublicTheory.lean:219-246](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L219-L246) |
| Def 1.9 bundle | `YangMills.WightmanTheory` | [PublicTheory.lean:255-262](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L255-L262) |
| (W0a) | `YangMills.WightmanTheory.W0.spectralRepresentation` | [PublicTheory.lean:271-273](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L271-L273) |
| (W0b) | `YangMills.WightmanTheory.W0.positiveEnergy` | [PublicTheory.lean:274-275](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L274-L275) |
| (W0c) | `YangMills.WightmanTheory.W0.uniqueVacuum` | [PublicTheory.lean:276-278](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L276-L278) |
| (W1a) | `YangMills.FieldSystem.DomainAxioms.normalizedVacuum` | [PublicTheory.lean:128](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L128) |
| (W1b) | `YangMills.FieldSystem.DomainAxioms.denseDomain` | [PublicTheory.lean:129](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L129) |
| (W1c) | `YangMills.FieldSystem.DomainAxioms.cyclicVacuum` | [PublicTheory.lean:130-131](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L130-L131) |
| (W1d) | `YangMills.FieldSystem.DomainAxioms.tempered` | [PublicTheory.lean:132-133](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L132-L133) |
| (W1e) | `YangMills.FieldSystem.AdjointAxiom; YangMills.WightmanTheory.W1.adjoint` | [PublicTheory.lean:136-141,284](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L136-L141) |
| (W1) bundle | `YangMills.WightmanTheory.W1` | [PublicTheory.lean:282-284](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L282-L284) |
| (W2a) | `YangMills.WightmanTheory.W2.labelIdentity; W2.labelComposition` | [PublicTheory.lean:288-293](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L288-L293) |
| (W2b) | `YangMills.WightmanTheory.W2.domainInvariant` | [PublicTheory.lean:294-296](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L294-L296) |
| (W2c) | `YangMills.WightmanTheory.W2.vacuumInvariant` | [PublicTheory.lean:297-299](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L297-L299) |
| (W2d) | `YangMills.WightmanTheory.W2.fieldCovariance` | [PublicTheory.lean:300-307](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L300-L307) |
| (W3) | `YangMills.WightmanTheory.W3; FieldSystem.LocalCommutativity; FieldSystem.SpacelikeSeparated` | [PublicTheory.lean:145-156,310-311](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L145-L156) |
| Def 1.10 axioms | `YangMills.WightmanTheory.Axioms` | [PublicTheory.lean:315-319](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L315-L319) |
| Def 1.11 hierarchy | `YangMills.Hierarchy` | [ChallengeSpec.lean:24-51](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L24-L51) |
| (H1) | `YangMills.Hierarchy.H; labels; theory` | [ChallengeSpec.lean:25-27](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L25-L27) |
| (H2) | `YangMills.Hierarchy.Field; fieldAdd; fieldSpace; fieldFinite; toLabel; Tag` | [ChallengeSpec.lean:28-32,55](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L28-L32) |
| (H3) | `YangMills.Hierarchy.project` | [ChallengeSpec.lean:33](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L33) |
| (H4) | `YangMills.Hierarchy.Character; characterMetric; characterSets; characterBorel; characterCompact; phaseMeasure; selected` | [ChallengeSpec.lean:34-40](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L34-L40) |
| (H5) | `YangMills.Hierarchy.correlation` | [ChallengeSpec.lean:41](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L41) |
| (H6) | `YangMills.Hierarchy.continuation` | [ChallengeSpec.lean:42](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L42) |
| (H7) | `YangMills.Hierarchy.Channel; finiteChannels; actor; coefficient` | [ChallengeSpec.lean:43-47](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L43-L47) |
| (H8) | `YangMills.Hierarchy.centeredTrace` | [ChallengeSpec.lean:48](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L48) |
| Def 1.11 (construction) | `YangMills.hierarchy` | [HierarchyBridge.lean:27-42](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27-L42) |
| Def 1.11 (construction) field quotient | `YM.Table.replies; YM.Table.null; YM.Table.Field; YM.Table.criterion` | [YM/Euclid/Null.lean:31-41,74](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L31-L41) |
| Def 1.11 (construction) label space | `YM.Table.observations; YM.Table.Union; YM.Table.pin; YM.Table.pin_inj` | [YM/Euclid/Union.lean:23-30](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Union.lean#L23-L30) |
| Def 1.11 (construction) correlation reading | `YM.Table.Tag; YM.Table.classTokens; YM.Table.useAt; YM.OPE.spectator` | [YM/Euclid/Lift.lean:66-69; YM/OPE/Eye/Views.lean:25-26](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Lift.lean#L66-L69) |
| Def 1.11 (construction) wiring of public objects | `YangMills.stateSpace; labelsOf; fieldsOf; view` | [PublicView.lean:14-90](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L14-L90) |
| (R1) | `YangMills.Hierarchy.Reconstructed.axioms` | [ChallengeSpec.lean:118](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L118) |
| (R2) | `YangMills.Hierarchy.Reconstructed.faithful; YangMills.FieldSystem.Faithful` | [ChallengeSpec.lean:119; PublicTheory.lean:159-161](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L119) |
| (R3) | `YangMills.Hierarchy.Reconstructed.injective` | [ChallengeSpec.lean:120](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L120) |
| (R4) | `YangMills.Hierarchy.Reconstructed.acts` | [ChallengeSpec.lean:121](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L121) |
| (R5) | `YangMills.Hierarchy.Reconstructed.covers` | [ChallengeSpec.lean:122](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L122) |
| (R6) | `YangMills.Hierarchy.Reconstructed.represents` | [ChallengeSpec.lean:123](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L123) |
| (R7) | `YangMills.Hierarchy.Reconstructed.normalized` | [ChallengeSpec.lean:124](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L124) |
| (R8) | `YangMills.Hierarchy.Reconstructed.fullSupport` | [ChallengeSpec.lean:125; Mathlib@81a5d257:Mathlib/MeasureTheory/Measure/OpenPos.lean:39](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L125) |
| (R9) | `YangMills.Hierarchy.Reconstructed.permutation` | [ChallengeSpec.lean:126-128](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L126-L128) |
| (R10) | `YangMills.Hierarchy.Reconstructed.smooth` | [ChallengeSpec.lean:129-130](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L129-L130) |
| (R11) | `YangMills.Hierarchy.Reconstructed.characterContinuity` | [ChallengeSpec.lean:131-132](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L131-L132) |
| (R12) | `YangMills.Hierarchy.Reconstructed.mixture` | [ChallengeSpec.lean:133-134](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L133-L134) |
| (R13) | `YangMills.Hierarchy.Reconstructed.analytic; YangMills.Hierarchy.orderedTube` | [ChallengeSpec.lean:95-96,135-136](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L95-L96) |
| (R14) | `YangMills.Hierarchy.Reconstructed.root; imaginaryTimes; spatialPoints` | [ChallengeSpec.lean:105-110,137-138](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L105-L110) |
| (R15) | `YangMills.Hierarchy.Reconstructed.boundary; complexShift; tensorTest; FieldSystem.vacuumExpectation` | [ChallengeSpec.lean:99-102,113-115,139-143; PublicTheory.lean:121-124](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L99-L102) |
| Def 1.12 OPE point types | `YangMills.Hierarchy.OPEPoint; OPEPoints; OPEComplexTimes; OPESpacePoints` | [ChallengeSpec.lean:83-92](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L83-L92) |
| Def 1.13(1) cluster | `YangMills.Hierarchy.Within` | [ChallengeSpec.lean:65-66](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L65-L66) |
| Def 1.13(2) clear spectators | `YangMills.Hierarchy.Clear` | [ChallengeSpec.lean:67-68](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L67-L68) |
| Def 1.13(3) total degree | `YangMills.Hierarchy.weight` | [ChallengeSpec.lean:63](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L63) |
| Def 1.13(4) grouped correlation | `YangMills.Hierarchy.grouped` | [ChallengeSpec.lean:58-61](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L58-L61) |
| (O1) | `YangMills.Hierarchy.OperatorProductExpansion.coefficients` | [ChallengeSpec.lean:71-73](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L71-L73) |
| (O2) | `YangMills.Hierarchy.OperatorProductExpansion.remainder` | [ChallengeSpec.lean:74-80](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L74-L80) |
| Def 1.14 time-axis pair | `YangMills.Hierarchy.timePair` | [ChallengeSpec.lean:146-148](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L146-L148) |
| Def 1.14 G_Theta | `YangMills.Hierarchy.traceTwo` | [ChallengeSpec.lean:149](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L149) |
| Def 1.14 (construction) stress tensor | `YM.Table.Stress; YM.Table.Conserved; YM.Table.Tensorial; YM.Table.StressLaws; YM.Spec.Algebra; YM.Spec.Locals` | [YM/Euclid/Stress.lean:57-66,90-97; YM/Spec/Closed.lean:28-43](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L57-L66) |
| Def 1.14 (construction) centered trace | `YM.TraceExtension.center; theta; centerIn; stressTrace; euclideanVEV; selected` | [YM/TraceExtension/WilsonTrace.lean:47-53; YM/TraceExtension/Centered.lean:17,34,63-64](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L47-L53) |
| Def 1.14 (construction) operator identification | `YM.Nonperturbative.Headline.TraceExclusions.identified` | [YM/Nonperturbative/HeadlineSpec.lean:87-91](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L87-L91) |
| Def 1.15 mode | `YangMills.Hierarchy.Mode` | [ChallengeSpec.lean:152-158](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L152-L158) |
| Def 1.15 kernel | `YangMills.Hierarchy.Mode.kernel` | [ChallengeSpec.lean:159-161](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L159-L161) |
| Def 1.15 track | `YangMills.Hierarchy.Track` | [ChallengeSpec.lean:162-164](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L162-L164) |
| Def 1.15 Wick profile | `YangMills.Hierarchy.wickProfile` | [ChallengeSpec.lean:165-166](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L165-L166) |
| (T1) | `YangMills.Hierarchy.TraceTest.centered` | [ChallengeSpec.lean:169-171](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L169-L171) |
| (T2) | `YangMills.Hierarchy.TraceTest.amplitudePositive` | [ChallengeSpec.lean:172](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L172) |
| (T3) | `YangMills.Hierarchy.TraceTest.shortDistance` | [ChallengeSpec.lean:173-174](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L173-L174) |
| (T4) | `YangMills.Hierarchy.TraceTest.excludes` | [ChallengeSpec.lean:175](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L175) |
| Def 1.16 (construction) constant | `YangMills.award_eq (private); YM.Trace.Verse.award` | [TraceBridge.lean:24-33; YM/TraceExtension/Verse/Day.lean:41](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L24-L33) |
| (P1) | `YangMills.Hierarchy.Properties.wilson` | [ChallengeSpec.lean:178](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L178) |
| (P2) | `YangMills.Hierarchy.Properties.reconstruction` | [ChallengeSpec.lean:179](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L179) |
| (P3) | `YangMills.Hierarchy.Properties.ope` | [ChallengeSpec.lean:180](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L180) |
| (P4) | `YangMills.Hierarchy.Properties.nonfree` | [ChallengeSpec.lean:181](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L181) |
| Thm 2.1 | `YangMills.JointExistence` | [ChallengeSpec.lean:186-188](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L186-L188) |
| Thm 2.1 (reference statement) | `YangMills.jointExistence (Challenge)` | [Challenge.lean:5-6](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Challenge.lean#L5-L6) |
| Thm 2.1 (proof) | `YangMills.jointExistence (Solution)` | [Solution.lean:4-10](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10) |
| Thm 2.1 (comparator configuration) | `comparator.json` | [comparator.json:1-6](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/comparator.json#L1-L6) |
| Rem 2.4 detailed theorem | `YangMills.constructed` | [Construction.lean:15-40](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40) |
| Rem 2.4 headline spec | `YM.Nonperturbative.Headline.WilsonExistence; YM.Nonperturbative.existence` | [YM/Nonperturbative/HeadlineSpec.lean:143-155; YM/Nonperturbative/Headlines.lean:19-36](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L143-L155) |
| Rem 2.4 extraction orders | `YM.Extraction.Sequence; Sequence.full; Order; Order.refine` | [YM/Extraction/Orders.lean:20-40](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L20-L40) |
| (D1) | `(hierarchy F Q).Properties (p.refine q).per` | [Construction.lean:22; HierarchyBridge.lean:44-133; TraceBridge.lean:35-44](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L22) |
| (D2) | `YangMills.Hierarchy.Contacts; YangMills.contactDistribution` | [ContactSpec.lean:12-14; ContactBridge.lean:14-49](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean#L12-L14) |
| (D3) | `YM.Family.Makes` | [YM/Source/Construction.lean:44-62](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62) |
| (D4) | `YM.Extraction.Order.Ordered (with Sequence.full)` | [YM/Extraction/Limits.lean:32-35](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35) |
| (D5) | `YM.FullVolume.PositionsUV; YM.FullVolume.Cluster` | [YM/FullVolume/Profiles.lean:25-36; YM/FullVolume/Strings.lean:55-58](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36) |
| (D6) | `YM.Spec.Calibrated` | [YM/Spec/Closed.lean:58-61](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61) |
| (D7) | `YM.Independent.Core.reconstruction (YM.EveryPhase.Completed); YM.Nonperturbative.Headline.Reconstruction; Headline.WightmanAxioms; forall i, (view (L.actors i)).Axioms; YM.EveryPhase.Almanac` | [YM/EveryPhase/Extension.lean:51-71; YM/Nonperturbative/HeadlineSpec.lean:52-81; Construction.lean:26-27; YM/EveryPhase/Pack.lean:117-132](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71) |
| (D8) | `YM.Independent.Core.ope (YM.OPE.Orbits.Foundation); Core.joint; Headline.SeparatedOPE.profiles` | [YM/Independent/Core.lean:18-34; YM/OPE/Orbits/Kernel.lean:62-64; YM/Nonperturbative/HeadlineSpec.lean:24-48](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18-L34) |
| (D9) | `YM.Nonperturbative.Headline.TraceExclusions; YM.Integration.ManuscriptTraceTests.Tests; YM.TraceExtension.HighEnergy` | [YM/Nonperturbative/HeadlineSpec.lean:84-120; YM/Integration/ManuscriptTraceTests.lean:62-75; YM/TraceExtension/Endpoint.lean:67-84](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120) |
| (D10) | `YM.Nonperturbative.Headline.NestedOPE` | [YM/Nonperturbative/HeadlineSpec.lean:128-138](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128-L138) |
| (D11) | `M.basis = Q.port` | [Construction.lean:29](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L29) |
| (D12) | `YM.Contacts.Solstice.MultipleLight` | [YM/Contacts/Solstice/Result.lean:52-63](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L52-L63) |
| (D13) | `YM.Contacts.Transport.SystemBasis; YM.Contacts.Solstice.Thresholds` | [YM/Contacts/Transport/Register.lean:47-51; YM/Contacts/Solstice/Gates.lean:23-28](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L47-L51) |
| (D14) | `YM.Pert.FirstExtension; YM.Climb.Scaling` | [YM/Pert/FirstTarget.lean:26-39; YM/Climb/Cells.lean:24-31](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39) |
| (D15) | `YM.Pert.Position.FourMeters` | [YM/Pert/Position/Four.lean:45-47](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47) |
| (D16) | `C.path.levels.clock.kernel.penalty = b` | [Construction.lean:16](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L16) |
| Rem 2.4 slope value | `YangMills.regular; YM.Pert.Asymptotics.zeroUp_bound` | [HierarchyBridge.lean:18-23; YM/Pert/Asymptotics/RawAxis.lean:15-28](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L18-L23) |
| Cor 3.1 group | `YangMills.su2; YM.Next.Foundations.SUtwo` | [ConcreteSU2.lean:8-10; YM/Next/FOUNDATIONS/SU2.lean:36-48](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L8-L10) |
| Cor 3.1 simplicity | `YangMills.su2Simple; YM.Examples.SU2.simple` | [ConcreteSU2.lean:12; YM/Examples/SU2.lean:79-106](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L12) |
| Cor 3.1 statement | `YangMills.su2Theory` | [ConcreteSU2.lean:15-18](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18) |
| Sec 4 sources | `README.md`; the Yang–Mills group's assessment | [README.md](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/README.md); [assessment](https://github.com/yang-mills-group/YM/blob/main/docs/assessment-1.pdf) |

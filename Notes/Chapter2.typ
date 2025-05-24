#import "../Note.typ": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Introduction to Quantum Mechanics",
  chapter: 2,
  author: "Vivi",
  toc-title: "Time-Independent Schrödinger Equation",
)
= Stationary States
In the Schrödinger equation,
$
  i planck.reduce (diff Psi) / (diff t) &= - planck.reduce^2 / (2 m) (diff^2 Psi) / (diff x^2) + V(x) Psi,
$
we assume that the potential $V(x)$ is time-independent, i.e., $V = V(x)$, in which case the wave function $Psi(x,t)$ can be separated into two parts:
$
  Psi(x,t) = psi(x) phi(t).
$
For separated wave functions, we have
$
  (diff Psi) / (diff t) &= psi (diff phi) / (diff t), \
  (diff^2 Psi) / (diff x^2) &= (diff^2 psi) / (diff x^2) phi,
$
thus the Schrödinger equation becomes
$
  i planck.reduce psi (diff phi) / (diff t) = - planck.reduce^2 / (2 m) (diff^2 psi) / (diff x^2) phi + V psi phi.
$
Dividing both sides by $psi phi$, we get
$
  i planck.reduce 1/phi (dif phi)/(dif t) = - planck.reduce^2 /(2 m) 1/psi (dif^2 psi)/(dif x^2) + V .
$
Since the left-hand side of the equation depends only on $t$ and the right-hand side depends only on $x$, both sides must be equal to a constant, which we denote by $E$:
$
  i planck.reduce 1/phi (dif phi)/(dif t) = E, 
$
or,
$
  (dif phi)/(dif t) = - (i E) / planck.reduce phi,
$<SchrödingerEquation-t>
and
$
  - planck.reduce^2 /(2 m) 1/psi (dif^2 psi)/(dif x^2) + V = E,
$
or
$
  - planck.reduce^2 /(2 m) (dif^2 psi)/(dif x^2) + V psi = E psi.
$<SchrödingerEquation-x>
Then we have turned the Schrödinger equation, a partial differential equation, into two ordinary differential equations, @SchrödingerEquation-t and @SchrödingerEquation-x.\
The solution to @SchrödingerEquation-t is
$
  phi(t) = e^(-(i E t) / planck.reduce),
$
as we care only about the product $Psi(x,t) = psi(x) phi(t)$.
The equation @SchrödingerEquation-x is called the time-independent Schrödinger equation.\
There are three important properties of the solutions to the time-independent Schrödinger equation:
+ They are stationary states. Although the wave function itself,
  $
    Psi(x,t) = psi(x) e^(-(i E t) / planck.reduce),
  $<StationaryStates>
  oscillates in time, the probability density
  $
    |Psi(x, t)|^2 &= Psi^* Psi \
    &= psi^* e^((i E t) /planck.reduce) psi e^(-(i E t)/planck.reduce) \
    &=|psi(x)|^2,
  $
  is time-independent. The same thing happens when calculating the expectation value of any dynamical variable,
  $
    angle.l Q(x, p) angle.r &= integral Psi^* [Q(x, -i planck.reduce dif / (dif x))] Psi dif x \
    &= integral psi^* [Q(x, -i planck.reduce dif / (dif x))] psi dif x
  $
  is constant in time. In particular, $angle.l x angle.r$ is constant in time, hence $angle.l p angle.r = m (dif angle.l x angle.r)/(dif t)=0$.
+ They are states of definite energy. In classical mechanics, the total energy (kinetic plus potential) is called the Hamiltonian:
  $
    H(x, p) = p^2/(2m) + V(x),
  $
  which is corresponded to the Hamiltonian operator, by replacing $p$ with $-i planck.reduce (diff)/(diff x)$:
  $
    hat(H) = -planck.reduce^2/(2m) (diff^2)/(diff x^2) + V(x).
  $
  Using Hamiltonian operator, the time-independent Schrödinger equation (equation @SchrödingerEquation-x) can be written as:
  $
    hat(H) psi = E psi.
  $
  The expectation value of the total energy is
  $
    angle.l H angle.r &= integral Psi^* hat(H) Psi dif x \
    &= integral psi^* hat(H) psi dif x \
    &= integral psi^* E psi dif x \
    &= E integral |psi|^2 dif x \
    &= E,
  $
  and
  $
    angle.l H^2 angle.r &= integral Psi^* hat(H)^2 Psi dif x \
    &= integral psi^* hat(H)^2 psi dif x \
    &= integral psi^* E^2 psi dif x \
    &= E^2 integral |psi|^2 dif x \
    &= E^2.
  $
  So the variance of $H$ is
  $
    sigma_H^2 = angle.l H^2 angle.r - angle.l H angle.r^2 = E^2 - E^2 = 0,
  $
  which means that every measurement of the total energy is certain to return the value $E$.

+ The general solution is a linear combination of separated solutions (stationary states). The time-independent Schrödinger equation (equation @SchrödingerEquation-x) yields an infinite collection of solutions, ${psi_n (x)}$, each with its associated separation constant, ${E_n}$; thus there is a different wave function for each allowed energy:
  $
    Psi_n (x,t) = psi_n (x) e^(-i (E_n t)/planck.reduce).
  $
  The general solution is a linear combination of these solutions:
  $
    Psi(x,t) &= sum_(n=1)^oo c_n Psi_n (x,t) \
    &= sum_(n=1)^oo c_n psi_n (x) e^(-i (E_n t)/planck.reduce),
  $<GeneralSolution>
  where the coefficients ${c_n}$ can be chosen to satisfy the initial conditions:
  $
    Psi(x,0) = sum_(n=1)^oo c_n psi_n (x).
  $
  $|c_n|^2$ is the probability that a measurement of the energy would return to the value $E_n$. Thus of course,
  $
    sum_(n=1)^oo |c_n|^2 = 1,
  $
  and the expectation value of the energy is
  $
    angle.l E angle.r = sum_(n=1)^oo |c_n|^2 E_n.
  $

= The Infinite Square Well
The infinite square well potential is defined as
$
  V(x) = cases(
    0 &0 <= x <= a ,
    oo  &"otherwise",
  )
$
Outside the well, $psi(x) = 0$. Inside the well, the time-independent Schrödinger equation (equation @SchrödingerEquation-x) becomes
$
  -planck.reduce^2/(2m) (dif^2 psi)/(dif x^2) = E psi,
$
or
$
  (dif^2 psi)/(dif x^2) = -k^2 psi, quad k = sqrt(2m E)/planck.reduce.
$<InfiniteSquareWell1>
 The general solution to @InfiniteSquareWell1 is
$
  psi(x) = A sin(k x) + B cos(k x).
$
Continuity of $psi(x)$ requires that
$
  psi(0) = 0,
$
which means $B = 0$, and
$
  psi(a) = 0,
$
which means
$
  k a = 0, plus.minus pi, plus.minus 2pi, dots
$
But $k = 0$ is trivial and the negative solutions give nothing new, so the distinct solutions are
$
  k_n = (n pi)/a, quad n = 1, 2, 3, dots
$
Hence the possible values of $E$ are
$
  E_n = (planck.reduce^2 k_n^2)/(2m) = (n^2 pi^2 planck.reduce^2)/(2m a^2).
$
To find $A$, we normalize $psi(x)$:
$
  1 &= integral_0^a |psi(x)|^2 dif x \
  &= |A|^2 integral_0^a sin^2(k x) dif x \
  &= |A|^2 a/2,
$
which means $A = sqrt(2/a)$. Then the solutions are
$
  psi_n (x) = sqrt(2/a) sin((n pi)/a x).
$

As a collection, the functions ${psi_n (x)}$ have some interesting and important properties:
+ They are alternately even and odd: $psi_1(x)$ is odd, $psi_2(x)$ is even, $psi_3(x)$ is odd, and so on.
+ As $n$ increases, each successive state has one more node: $psi_1(x)$ has none, $psi_2(x)$ has one, $psi_3(x)$ has two, and so on.
+ They are mutually orthonormal, in the sense that
  $
    integral psi_m (x)^* psi_n (x) dif x = delta_(n m),
  $
  where $delta_(n m)$ is the Kronecker delta.
+ They are complete, in the sense that any function $f(x)$ can be expressed as a linear combination of them:
  $
    f(x) &= sum_(n=1)^oo c_n psi_n(x) \
    &= sqrt(2/a) sum_(n=1)^oo c_n sin((n pi)/a x),
  $
  where $c_n$ can be evaluated by
  $
    integral psi_m (x)^* f(x) dif x &= integral psi_m^*(x) (sum_(n=1)^oo c_n psi_n (x)) dif x \
    &= sum_(n=1)^oo c_n integral psi_m (x)^* psi_n (x) dif x \
    &= sum c_n delta_(m n) \
    &= c_m.
  $<Coefficients>
Actually, the first is true whenever $V(x)$ is symmetric; the second is true for any $V(x)$; the third and fourth are true for any $V(x)$.\
The stationary states(equation @StationaryStates) of the infinite square well are
$
  Psi_n (x, t) &= psi_n (x) e^(-i (E_n t)/planck.reduce) \
  &= sqrt(2/a) sin((n pi)/a x) e^(-i((n^2 pi^2 planck.reduce)/(2m a^2))t).
$
Then the general solution(equation @GeneralSolution) is
$
  Psi(x, t) &= sum_(n=1)^oo c_n Psi_n (x, t) \
  &= sum_(n=1)^oo c_n sqrt(2/a) sin((n pi)/a x) e^(-i((n^2 pi^2 planck.reduce)/(2m a^2))t).
$
The coefficients ${c_n}$ can be determined by the initial condition $Psi(x, 0)$, using @Coefficients.

= The Harmonic Oscillator
The potential energy of a classical harmonic oscillator is
$
  V(x) = 1/2 k x^2,
$
with the solution $x(t) = A sin(omega t) + B cos(omega t)$, where $omega = sqrt(k/m)$.\
The quantum problem is to solve the Schrödinger equation for the potential
$
  V(x) = 1/2 m omega^2 x^2.
$
The time-independent Schrödinger equation (equation @SchrödingerEquation-x) becomes
$
  -planck.reduce^2/(2m) (dif^2 psi)/(dif x^2) + 1/2 m omega^2 x^2 psi = E psi.
$<HarmonicOscillator1>

== Algebraic Method
Using the momentum operator $hat(p) = -i planck.reduce (dif)/(dif x)$, equation @HarmonicOscillator1 can be written as
$
  1/(2m) [hat(p)^2 + (m omega x)^2] psi = E psi.
$
The basic idea is to factor the Hamiltonian,
$
  hat(H) = 1/(2m) [hat(p)^2 + (m omega x)^2],
$
with two ladder operators,
$
  hat(a)_plus.minus = 1/sqrt(2 planck.reduce m omega) (minus.plus i hat(p) + m omega x).
$<LadderOperators>
The commutator of two operators $hat(A)$ and $hat(B)$ is
$
  [hat(A), hat(B)] = hat(A) hat(B) - hat(B) hat(A).
$
The commutator of $hat(x) = x$ and $hat(p) = -i planck.reduce (dif)/(dif x)$ can be calculated as
$
  [hat(x), hat(p)] f(x) &= hat(x) hat(p) f(x) - hat(p) hat(x) f(x) \
  &= x (-i planck.reduce (dif)/(dif x) f(x)) - (-i planck.reduce (dif)/(dif x))(x f(x)) \
  &= -i planck.reduce [x (dif f(x))/(dif x) - x (dif f(x))/(dif x) - f(x)] \
  &= i planck.reduce f(x),
$
which means $[hat(x), hat(p)] = i planck.reduce$.\
The product $hat(a)_- hat(a)_+$ is
$
  hat(a)_- hat(a)_+ &= 1/(2 planck.reduce m omega) (i hat(p) + m omega x)(-i hat(p) + m omega x) \
  &= 1/(2 planck.reduce m omega) (hat(p)^2 + (m omega x)^2 - i m omega (x hat(p) - hat(p) x)) \
  &= 1/(2 planck.reduce m omega) (hat(p)^2 + (m omega x)^2 - i m omega [hat(x), hat(p)]) \
  &= 1/(2 planck.reduce m omega) (hat(p)^2 + (m omega x)^2 + planck.reduce m omega) \
  &= 1/(planck.reduce omega) hat(H) + 1/2,
$
thus $hat(H) = planck.reduce omega (hat(a)_- hat(a)_+ - 1/2)$.\
Similarly, the product $hat(a)_+ hat(a)_-$ is
$
  hat(a)_+ hat(a)_- = 1/(planck.reduce omega) hat(H) - 1/2,
$
thus $hat(H) = planck.reduce omega (hat(a)_+ hat(a)_- + 1/2).$\
In terms of $hat(a)_plus.minus$, the Schrödinger equation becomes
$
  planck.reduce omega (hat(a)_plus.minus hat(a)_minus.plus plus.minus 1/2) psi = E psi.
$<HarmonicOscillator2>

#theorem[
  If $psi$ satisfies the Schrödinger equation with energy $E$, i.e.,
  $
    hat(H) psi = E psi,
  $
  then $hat(a)_plus.minus psi$ satisfies the Schrödinger equation with energy $E plus.minus planck.reduce omega$, i.e.,
  $
    hat(H) hat(a)_plus.minus psi = (E plus.minus planck.reduce omega) hat(a)_plus.minus psi.
  $
]

#proof[
  $
    hat(H) hat(a)_plus.minus psi &= planck.reduce omega (hat(a)_plus.minus hat(a)_minus.plus plus.minus 1/2) hat(a)_plus.minus psi \
    &= planck.reduce omega (hat(a)_plus.minus hat(a)_minus.plus hat(a)_plus.minus plus.minus 1/2 hat(a)_plus.minus) psi \
    &= planck.reduce omega hat(a)_plus.minus (hat(a)_minus.plus hat(a)_plus.minus plus.minus 1/2) psi \
    &= hat(a)_plus.minus planck.reduce omega (hat(a)_plus.minus hat(a)_minus.plus plus.minus 1 plus.minus 1/2) psi \
    &= hat(a)_plus.minus (hat(H) plus.minus planck.reduce omega) psi \
    &= (E plus.minus planck.reduce omega) hat(a)_plus.minus psi.
  $
]

That's why $hat(a)_+$ is called the raising operator and $hat(a)_-$ is called the lowering operator.\
The ground state of the harmonic oscillator is the state annihilated by $hat(a)_-$:
$
  hat(a)_- psi_0 = 0.
$
Substituting $hat(a)_-$ with its expression, we get
$
  1/sqrt(2 planck.reduce m omega) (i hat(p) + m omega x) psi_0 &= 0 \
  (planck.reduce (dif)/(dif x) + m omega x) psi_0 &= 0 \
  (dif psi_0)/(dif x) &= -(m omega)/(planck.reduce) x psi_0,
$
which is a first-order differential equation. The solution is
$
  psi_0(x) = A e^(- (m omega)/(2 planck.reduce) x^2).
$
The normalization condition is
$
  1 &= integral_(-oo)^(oo) |psi_0(x)|^2 dif x \
  &= |A|^2 integral_(-oo)^(oo) e^(- (m omega)/(planck.reduce) x^2) dif x \
  &= |A|^2 sqrt((pi planck.reduce)/(m omega)),
$
which means $A = ((m omega)/(pi planck.reduce))^(1/4)$, and hence
$
  psi_0(x) = ((m omega)/(pi planck.reduce))^(1/4) e^(- (m omega)/(2 planck.reduce) x^2).
$
To determine the energy of the ground state, we plug it into the Schrödinger equation (equation @HarmonicOscillator2) and note that $hat(a)_- psi_0 = 0$:
$
  planck.reduce omega (hat(a)_+ hat(a)_- + 1/2) psi_0 = E_0 psi_0,
$
thus $E_0 = 1/2 planck.reduce omega$.\
Then the excited states can be obtained by applying the raising operator to the ground state, increasing the energy by $planck.reduce omega$ each time:
$
  psi_n = A_n (hat(a)_+)^n psi_0, quad E_n = (n + 1/2) planck.reduce omega,
$<HarmonicOscillatorExcitedStates>
where $A_n$ is the normalization constant.\
We know that $hat(a)_plus.minus psi_n$ is proportional to $psi_(n plus.minus 1)$,
$
  hat(a)_+ psi_n = c_n psi_(n + 1), quad hat(a)_- psi_n = d_n psi_(n - 1).
$

#theorem[
  For "any" functions $f(x)$ and $g(x)$, 
  $
    integral_(-oo)^oo f^* (hat(a)_plus.minus g) dif x = integral_(-oo)^oo (hat(a)_minus.plus f)^* g dif x.
  $
]

#proof[
  $
    integral_(-oo)^oo f^* (hat(a)_plus.minus g) dif x &= 1/sqrt(2 planck.reduce m omega) integral_(-oo)^oo f^* (minus.plus planck.reduce (dif)/(dif x) + m omega x) g dif x \
    &= 1/sqrt(2 planck.reduce m omega) [minus.plus planck.reduce f^* g |_(-oo)^oo + integral_(-oo)^oo [(plus.minus planck.reduce (dif)/(dif x) + m omega x) f]^* g dif x] \
    &= integral_(-oo)^oo (hat(a)_minus.plus f)^* g dif x.
  $
]

In particular,
$
  integral_(-oo)^oo (hat(a)_plus.minus psi_n)^* (hat(a)_plus.minus psi_n) dif x = integral_(-oo)^oo (hat(a)_minus.plus hat(a)_plus.minus psi_n)^* psi_n dif x.
$
From equations @HarmonicOscillator2 and @HarmonicOscillatorExcitedStates, we have
$
  planck.reduce omega (hat(a)_plus.minus hat(a)_minus.plus plus.minus 1/2) psi_n &= E_n psi_n \
  &= planck.reduce omega (n + 1/2) psi_n,
$
which means
$
  hat(a)_+ hat(a)_- psi_n = n psi_n, quad hat(a)_- hat(a)_+ psi_n = (n + 1) psi_n,
$
thus,
$
  integral_(-oo)^oo (hat(a)_+ psi_n)^* (hat(a)_+ psi_n) dif x &= |c_n|^2 integral_(-oo)^oo psi_(n+1)^* psi_(n+1) dif x \
  &= (n + 1) integral_(-oo)^oo psi_n^* psi_n dif x,
$
so $|c_n|^2 = n + 1$.\
Similarly, we can get $|d_n|^2 = n$.\
Hence,
$
  hat(a)_+ psi_n = sqrt(n + 1) psi_(n + 1), quad hat(a)_- psi_n = sqrt(n) psi_(n - 1).
$
Using mathematical induction, we have
$
  psi_n = 1/sqrt(n!) (hat(a)_+)^n psi_0.
$
As in the case of the infinite square well, the stationary states of the harmonic oscillator are orthonormal:
$
  integral_(-oo)^oo psi_m^* psi_n dif x = delta_(m n).
$

#proof[
  $
    n integral_(-oo)^oo psi_m^* psi_n dif x &= integral_(-oo)^oo psi_m^* hat(a)_+ hat(a)_- psi_n dif x \
    &= integral_(-oo)^oo (hat(a)_+ hat(a)_- psi_m)^* psi_n dif x \
    &= m integral_(-oo)^oo psi_m^* psi_n dif x.
  $
  Unless $m = n$, $integral_(-oo)^oo psi_m^* psi_n dif x = 0$.
]

Orthonormality means we can again use
$
  c_n = integral psi_n^* Psi(x, 0) dif x
$
to determine the coefficients ${c_n}$. $|c_n|^2$ is the probability of measuring the energy to obtain the value $E_n$.\
Using the definition (equation @LadderOperators), it is convenient to express $x$ and $hat(p)$ in terms of ladder operators:
$
  x &= sqrt(planck.reduce/(2m omega)) (hat(a)_+ + hat(a)_-), \
  hat(p) &= i sqrt(planck.reduce m omega/2) (hat(a)_+ - hat(a)_-).
$

== Analytic Method
By introducing the dimensionless variable $xi = sqrt(m omega/planck.reduce) x$, equation @HarmonicOscillator1 becomes
$
  (dif^2 psi)/(dif xi^2) = (xi^2 - K) psi,
$<HarmonicOscillatorDimensionless>
where
$
  K = (2E)/(planck.reduce omega)
$<DimensionlessEnergy>
is the dimensionless energy.\
At very large $xi$, the energy $K$ is negligible, and the solution is
$
  psi(xi) tilde e^(-xi^2/2),
$
which suggests that the solution can be separated into two parts:
$
  psi(xi) = h(xi) e^(-xi^2/2).
$<SeparatedSolution>
Differentiating equation @SeparatedSolution twice, we get
$
  (dif psi)/(dif xi) &= ((dif h)/(dif xi) - xi h) e^(-xi^2/2), \
  (dif^2 psi)/(dif xi^2) &= ((dif^2 h)/(dif xi^2) - 2xi (dif h)/(dif xi) + (xi^2 - 1) h) e^(-xi^2/2).
$
Substituting these into equation @HarmonicOscillatorDimensionless, we get
$
  (dif^2 h)/(dif xi^2) - 2xi (dif h)/(dif xi) + (K - 1) h = 0.
$<HarmonicOscillatorDimensionless2>
Rewrite $h(xi)$ as a power series:
$
  h(xi) = sum_(n=0)^oo a_n xi^n,
$
whose derivatives are
$
  (dif h)/(dif xi) &= sum_(n=0)^oo n a_n xi^(n-1), \
  (dif^2 h)/(dif xi^2) &= sum_(n=0)^oo n(n-1) a_n xi^(n-2) \
  &= sum_(n=0)^oo (n+2)(n+1) a_(n+2) xi^n.
$
Substituting these into equation @HarmonicOscillatorDimensionless2, we get
$
  sum_(n=0)^oo [(n+2)(n+1) a_(n+2) - 2n a_n + (K - 1) a_n] xi^n = 0.
$
Since $xi$ is arbitrary, the coefficient of each power of $xi$ must vanish:
$
  (n+2)(n+1) a_(n+2) - 2n a_n + (K - 1) a_n = 0,
$
or
$
  a_(n+2) = (2n - K + 1)/((n+1)(n+2)) a_n.
$<RecursionRelation>
Starting with $a_0$, it generates all the even-numbered coefficients,
$
  a_2 &= (1 - K)/2 a_0, \
  a_4 &= (5 - K)/12 a_2 = ((5 - K)(1 - K))/24 a_0, \
  dots
$
and starting with $a_1$, it generates all the odd-numbered coefficients,
$
  a_3 &= (3 - K)/6 a_1, \
  a_5 &= (7 - K)/20 a_3 = ((7 - K)(3 - K))/120 a_1, \
  dots
$
We write the complete solution as
$
  h(xi) = h_"even" (xi) + h_"odd"  (xi),
$
where
$
  h_"even" (xi) = a_0 + a_2 xi^2 + a_4 xi^4 + dots
$
is an even function of $xi$, built on $a_0$, and
$
  h_"odd" (xi) = a_1 xi + a_3 xi^3 + a_5 xi^5 + dots
$
is an odd function of $xi$, built on $a_1$.\
However, not all solutions so obtained are normalizable. For normalizable solutions, the power series must terminate. There must occur some highest $j$, say $n$. From equation @RecursionRelation, this means that the numerator must vanish for some $n$:
$
  2n - K + 1 = 0 quad => quad K = 2n + 1,
$
which leads to the quantization condition for the energy(equation @DimensionlessEnergy):
$
  E = (n + 1/2) planck.reduce omega, quad n = 0, 1, 2, dots
$
For allowed values of $K$, the recursion formula (equation @RecursionRelation) reads
$
  a_(j+2) &= (2j - (2n + 1) + 1)/((j+1)(j+2)) a_j \
  &= (-2(n-j))/((j+1)(j+2)) a_j.
$
If $n = 0$, there is only one coefficient, $a_0$. This gives the ground state wave function:
$
  h(xi) = a_0,
$
and hence
$
  psi_0(xi) = a_0 e^(-xi^2/2).
$
If $n = 1$, we take $a_0 = 0$, which gives the first excited state:
$
  h(xi) = a_1 xi,
$
and hence
$
  psi_1(xi) = a_1 xi e^(-xi^2/2).
$
If $n = 2$, $a_2 = -2 a_0$, which gives the second excited state:
$
  h(xi) &= a_0 + a_2 xi^2 \
  &= a_0 (1 - 2 xi^2),
$
and hence
$
  psi_2(xi) = a_0 (1 - 2 xi^2) e^(-xi^2/2).
$
In conclusion, the normalized stationary states of the harmonic oscillator are given by
$
  psi_n (xi) = ((m omega)/(pi planck.reduce))^(1/4) 1/sqrt(2^n n!) H_n (xi) e^(-xi^2/2),
$<HarmonicOscillatorStationaryStates>
where $H_n (xi)$ is the $n$-th order Hermite polynomial.\
The quantum harmonic oscillator is strikingly different from its classical counterpart--not only are the energies quantized, but the position distributions have some bizarre features.
For instance, the probability of finding the particle outside the classically allowed region (i.e., $|x| > A$, where $A = sqrt((2E)/(m omega^2))$) is nonzero.
And in all odd states, the probability of finding the particle at $x = 0$ is zero, even though the classical oscillator spends most of its time near $x = 0$.

= The Free Particle
We turn next to the free particle, which is described by the potential $V(x) = 0$.\
Classically this would be motion at constant velocity, but in quantum mechanics the problem is surprisingly subtle. The time-independent Schrödinger equation (equation @SchrödingerEquation-x) becomes
$
  -planck.reduce^2/(2m) (dif^2 psi)/(dif x^2) = E psi,
$
or
$
  (dif^2 psi)/(dif x^2) = -k^2 psi, quad k = sqrt(2m E)/planck.reduce.
$

So far, it's the same as the infinite square well(equation @InfiniteSquareWell1), but the boundary conditions are different.\
The general solution in exponential form is given by
$
  psi(x) = A e^(i k x) + B e^(-i k x).
$
Unlike the infinite square well, we have no boundary conditions to restrict the values of $k$ (and hence $E$); the free particle can have any (positive) energy. Tacking on the time dependence, $e^(-(i E t)/planck.reduce)$, we have
$
  Psi(x, t) &= A e^(i k x) e^(-(i E t)/planck.reduce) + B e^(-i k x) e^(-(i E t)/planck.reduce) \
  &= A e^(i k (x - (planck.reduce k)/(2 m)t)) + B e^(-i k (x + (planck.reduce k)/(2 m)t)),
$
or
$
  Psi_k(x, t) = A e^(i (k x - (planck.reduce k^2)/(2 m)t)),
$
where 
$
  k = plus.minus sqrt(2 m E) / planck.reduce, quad cases(
    k > 0 arrow.r.double quad "traveling to the right",
    k < 0 arrow.r.double quad "traveling to the left".
  )
$
The "stationary states" of the free particle are propagating waves, with wave length $lambda = (2 pi)/abs(k)$, and, according to the de Broglie relation, momentum $p = planck.reduce k$, which is not normalizable:
$
  integral_(-oo)^(oo) Psi_k^* Psi_k dif x &= abs(A)^2 integral_(-oo)^(oo) dif x.
$
This means that a free particle cannot exist in a stationary state, or have a definite energy.\
But the general solution is still a linear combination of these solutions, but now an integral instead of a sum:
$
  Psi(x, t) &= 1/sqrt(2 pi) integral_(-oo)^(oo) phi.alt(k) e^(i (k x - (planck.reduce k^2)/(2 m)t)) dif k,
$<FreeParticleGeneralSolution>
which can be normalized for appropriate $phi.alt(k)$, necessarily carrying a range of $k$s, hence a range of energies and speeds, called a *wave packet*.\
For a free particle the solution takes the form of @FreeParticleGeneralSolution, we need to determine $phi.alt(k)$ as to match the initial wave function:
$
  Psi(x, 0) = 1/sqrt(2 pi) integral_(-oo)^(oo) phi.alt(k) e^(i k x) dif k,
$ 
which means, according to the Fourier transform, that
$
  phi.alt(k) = 1/sqrt(2 pi) integral_(-oo)^(oo) Psi(x, 0) e^(-i k x) dif x.
$
The speed of these waves is 
$
  v_("quantum") &= (planck.reduce abs(k)) / (2m) \
  &= sqrt(E/(2m)).
$<FreeParticleSpeed>
On the other hand, the classical speed of a free particle with energy $E=1/2 m v^2$ is
$
  v_("classical") = sqrt((2E)/m),
$
which is twice the quantum speed.\
In fact, $v_"quantum"$ in @FreeParticleSpeed is the phase velocity of the wave, and the group velocity is twice the phase velocity---just right to match the classical speed. \
The problem is to determine the group velocity of the wave packet with the generic form
$
  Psi(x, t) = 1/sqrt(2 pi) integral_(-oo)^(oo) phi.alt(k) e^(i (k x - omega t)) dif k,
$
where in our case $omega = (planck.reduce k^2)/(2 m)$.\
Assume that $psi(k)$ is narrowly peaked about $k_0$, so that we can expand $omega$ in a Taylor series about $k_0$, keeping only the first two terms:
$
  omega(k) approx omega(k_0) + omega'_0 (k - k_0),
$
where $omega'_0 = lr((dif omega)/(dif k) |)_(k=k_0)$. \
Changing variables from $k$ to $s = k - k_0$, we have
$
  Psi(x, t) &approx 1/sqrt(2 pi) integral_(-oo)^(oo) phi.alt(s + k_0) e^(i [(k_0 + s)x - (omega_0 + omega'_0 s)t]) dif s \
  &= 1/sqrt(2 pi) e^(i (k_0 x - omega_0 t)) integral_(-oo)^(oo) phi.alt(s + k_0) e^(i s (x - omega'_0 t)) dif s.
$
The term in front is a sinusoidal (the "ripples"), traveling with the phase velocity $v_"phase" = omega_0/k_0$, the integral(the "envelope") propagates with the group velocity $v_"group" = omega'_0$.\
Thus,
$
  v_"phase" &= omega / k, \
  v_"group" &= (dif omega)/(dif k).
$
In our case, $omega = (planck.reduce k^2)/(2 m)$, so
$
  v_"phase" &= (planck.reduce k)/(2m), \
  v_"group" &= (planck.reduce k)/m = 2 v_"phase".
$

= The Delta-Function Potential
== Bound States and Scattering States
For the infinite square well and the harmonic oscillator, the solutions to the time-independent Schrödinger equation are normalizable, and labeled by a discrete index $n$; for the free particle, the solutions are not normalizable, and labeled by a continuous variable $k$. The former represent physically realizable states in their own right, the latter do not; but in both cases, the general solution is a linear combination of stationary states---for the first type the combination is a sum over $n$, for the second type an integral over $k$. \
In classical mechanics, a one-dimensional time-independent potential $V(x)$ can give rise to two different kinds of motion: *bound states*, in which the potential $V(x)$ rises higher than the particle's total energy $E$ on either side, it cannot escape; and *scattering states*, in which the potential $V(x)$ is lower than the particle's total energy $E$ on one side (or both), it can escape.\
The two kinds of solutions to the time-independent Schrödinger equation correspond precisely to these two kinds of motion. The distinction is even cleaner in quantum domain, because the phenomenon of *tunneling* allows the particle to "leak" through any finite potential barrier, so the only thing that matters is the potential at infinity:
$
  cases(
    E lt V(-infinity) "and" V(+infinity) arrow.double "bound state",
    E gt V(-infinity) "or" V(+infinity) arrow.double "scattering state",
  )
$
In real life most potentials go to zero at infinity, in which case the criterion simplifies even further:
$
  cases(
    E lt 0 arrow.double "bound state",
    E gt 0 arrow.double "scattering state",
  )
$
Because the infinite square well and the harmonic oscillator potentials go to infinity as $x arrow plus.minus infinity$, they admit bound states only; because the free particle potential is zero everywhere, it only allows scattering states. From this section we shall explore potentials that allow both kinds of states.

== The Delta-Function Well

The *Dirac delta function* is an infinitely narrow, infinitesimally narrow spike at the origin, with area $1$:
$
  delta(x) eq.triple cases(
    0 quad "if" x eq.not 0,
    infinity quad "if" x = 0
  ), quad "with" integral_(-infinity)^infinity delta(x) dif x = 1.
$
Technically, it isn't a function at all, since it is not finite at $x = 0$(mathematically, it is a *distribution* or a *generalized function*). \
Notice that $delta(x - a)$ would be a spike of area $1$ at $x = a$. Integrating a function $f(x)$ against the delta function, we have
$
  integral_(-infinity)^infinity f(x) delta(x - a) dif x &= integral_(-infinity)^infinity f(a) delta(x - a) dif x \
  &= f(a) integral_(-infinity)^infinity delta(x - a) dif x \
  &= f(a).
$
In fact, the integral need not go from $-infinity$ to $infinity$; it can go from $a - epsilon$ to $a + epsilon$, for any $epsilon > 0$:
$
  integral_(a - epsilon)^(a + epsilon) f(x) delta(x - a) dif x = f(a).
$
Let's consider a potential of the form
$
  V(x) = -alpha delta(x),
$
where $alpha$ is a positive constant. The time-independent Schrödinger equation (equation @SchrödingerEquation-x) becomes
$
  -planck.reduce^2/(2m) (dif^2 psi)/(dif x^2) - alpha delta(x) psi = E psi;
$
it yields both bound states ($E < 0$) and scattering states ($E > 0$). \
First, we consider the bound states. In the region $x < 0, V(x) = 0$, so
$
  (dif^2 psi)/(dif x^2) = - (2 m E) / planck.reduce^2 psi = kappa^2 psi,
$
where $kappa = sqrt(-2m E)/planck.reduce$ is real and positive. The general solution is
$
  psi(x) = A e^(-kappa x) + B e^(kappa x),
$
but the first term diverges as $x arrow -infinity$, so $A = 0$:
$
  psi(x) = B e^(kappa x), quad (x < 0).
$
In the region $x > 0, V(x) = 0$, too, so the general solution is of the same form, but now the second term diverges as $x arrow +infinity$, so $B = 0$:
$
  psi(x) = F e^(-kappa x), quad (x > 0).
$
It remains only to stitch the two solutions together at $x = 0$. The standard boundary condition for $psi$ tells
+ $psi$ is always continuous;
+ $(dif psi)/(dif x)$ is discontinuous except at points where $V(x)$ is infinite.
In this case, the first condition gives
$
  B = F = psi(0),
$
then
$
  psi(x) = cases(
    B e^(kappa x)"," quad &(x < 0),
    B e^(-kappa x)"," quad &(x > 0)
  )
$
The delta function determines the discontinuity in the derivative of $psi$ at $x = 0$. Intergrating the time-independent Schrödinger equation (Equation @SchrödingerEquation-x) from $-epsilon$ to $+epsilon$, we have:
$
  - planck.reduce^2/(2m) integral_(-epsilon)^(+epsilon) (dif^2 psi)/(dif x^2) dif x + integral_(-epsilon)^(+epsilon) V(x) psi(x) dif x &= E integral_(-epsilon)^(+epsilon) psi(x) dif x \
  - planck.reduce^2/(2m) lr((dif psi)/(dif x) |)_(-epsilon)^(+epsilon) + integral_(-epsilon)^(+epsilon) V(x) psi(x) dif x &= E integral_(-epsilon)^(+epsilon) psi(x) dif x,
$
and taking the limit $epsilon arrow 0$, we get
$
  - planck.reduce^2/(2m) lim_(epsilon arrow 0) (lr((dif psi)/(dif x) |)_(-epsilon)^(+epsilon)) + integral_(-epsilon)^(+epsilon) V(x) psi(x) dif x &= 0 \
  lim_(epsilon arrow 0) (lr((dif psi)/(dif x) |)_(-epsilon)^(+epsilon)) &= (2m) / planck.reduce^2 integral_(-epsilon)^(+epsilon) V(x) psi(x) dif x,
$ <SecondBoundaryCondition>
where if $V(x)$ is finite, the second term vanishes, then $(dif psi)/(dif x)$ is discontinuous. \
When $V(x) = -alpha delta(x)$, we have
$
  lim_(epsilon arrow 0) (lr((dif psi)/(dif x) |)_(-epsilon)^(+epsilon)) &= -(2m alpha) / planck.reduce^2  integral_(-epsilon)^(+epsilon) delta(x) psi(x) dif x \
  (- B kappa) - (+ B kappa) &= -(2m alpha) / planck.reduce^2 psi(0) \
  2 B kappa &= (2m alpha) / planck.reduce^2 B \
  kappa &= (m alpha) / planck.reduce^2,
$
and the allowed energy is
$
  E &= - (planck.reduce^2 kappa^2)/(2m) \
  &= - (m alpha^2) / (2 planck.reduce^2).
$
Fincally, we normalize $psi$:
$
  1 &= integral_(-infinity)^(+infinity) |psi(x)|^2 dif x \
  &= 2 B^2 integral_0^(+infinity) e^(-2 kappa x) dif x \
  &= B^2 / kappa,
$
which gives
$
  B &= sqrt(kappa) \
  &= sqrt(m alpha) / (planck.reduce).
$
Evidently, the delta-function well, regardless of its "strength" $alpha$, has only one bound state:
$
  psi(x) = sqrt(m alpha) / (planck.reduce) e^(-(m alpha abs(x))/planck.reduce^2) quad E = - (m alpha^2) / (2 planck.reduce^2).
$
Next, we consider the scattering states, with $E > 0$. In the region $x < 0, V(x) = 0$, the Schrödinger equation reads
$
  (dif^2 psi)/(dif x^2) = - (2 m E) / planck.reduce^2 psi = -k^2 psi,
$
where$k = sqrt(2 m E) / planck.reduce$ is real and positive. The general solution is
$
  psi(x) = A e^(i k x) + B e^(-i k x).
$
Similarly, for $x > 0$,
$
  psi(x) = F e^(i k x) + G e^(-i k x).
$
The continuity of $psi(x)$ at $x = 0$ requires
$
  A + B = F + G = psi(0).
$ <ScatteringState1>
The second boundary condition (equation @SecondBoundaryCondition) gives
$
  lim_(epsilon arrow 0) (lr((dif psi)/(dif x) |)_(-epsilon)^(+epsilon)) &= (2m) / planck.reduce^2 integral_(-epsilon)^(+epsilon) V(x) psi(x) dif x \
  i k (F - G) - i k (A - B) &= -(2m alpha) / planck.reduce^2 psi(0) \
  i k (F - G - A + B) &= -(2m alpha) / planck.reduce^2 (A + B),
$
or, more compactly,
$
  F - G = A(1 + 2i beta) - B(1 - 2i beta), quad "where" beta eq.triple (m alpha) / (planck.reduce^2 k).
$ <ScatteringState2>
Having imposed both boundary conditions, we are left with two equations (Equations @ScatteringState1 and @ScatteringState2) in four unknowns ($A$, $B$, $F$, and $G$). Normalization won't help, because the scattering states are not normalizable. \
As we know, $e^(i k x)$ gives a wave traveling to the right, and $e^(-i k x)$ gives a wave traveling to the left. Thus, $A e^(i k x)$ is a wave coming in from the left, and $B e^(-i k x)$ is a wave returning to the left; $G e^(-i k x)$ is a wave coming in from the right, and $F e^(i k x)$ is a wave returning to the right. In a typical scattering experiment particles are fired from one direction, say from the left, then the amplitude of the wave coming in from the right is zero, $G = 0$. \
$A$ is the amplitude of the *incident wave*; $B$ is the amplitude of the *reflected wave*; $F$ is the amplitude of the *transmitted wave*. Solving Equations @ScatteringState1 and @ScatteringState2 for $B$ and $F$, we have
$
  B &= (i beta) / (1 - i beta) A, \
  F &= 1 / (1 - i beta) A.
$
(In scattering from the right, $A = 0$, $G$ is the incident amplitude, $F$ is the reflected amplitude, and $B$ is the transmitted amplitude.) \
The _relative_ probability that an incident particle will be reflected back, *refelction coefficient*, is
$
  R eq.triple abs(B)^2 / abs(A)^2 &= (beta^2) / (1 + beta^2) \
  &= 1 / (1 + (2 planck.reduce^2 E) / (m alpha^2)).
$
The _relative_ probability that an incident particle will continue on through, *transmission coefficient*, is
$
  T eq.triple abs(F)^2 / abs(A)^2 &= 1 / (1 + beta^2) \
  &= 1 / (1 + (m alpha^2) / (2planck.reduce^2 E))
$
Of course, $R + T = 1$, as it should be. On the other hand, the higher the energy $E$, the greater the probability of transmission, and the lower the probability of reflection.\
For a delta-function _barrier_, $V(x) = + alpha delta(x)$, which kills the bound state, the reflection and transmission coefficients, depending only on $alpha^2$, are unchanged. Strange to say, the particle is just as likely to pass through the barrier as to cross over the well! Unlike classical mechanics, where the particle is reflected back if $E lt V_max$ or transmitted if $E gt V_max$, in quantum mechanics the particle can be transmitted even if $E lt V_max$, this is called *tunneling*.\

= The Finite Square Well
Consider the finite square well
$
  V(x) = cases(
    -V_0 quad &-a &lt.eq x lt.eq a \
    0 quad &abs(x) &gt a
  ),
$
where $V_0$ is a (positive) constant. Like the delta-function well, this potential admits both bound states (with $E < 0$) and scattering states (with $E > 0$). \
First, we consider the bound states. In the region $x < -a, V(x) = 0$, so
$
  (dif^2 psi)/(dif x^2) = kappa^2 psi,
$
where 
$
  kappa = sqrt(-2m E)/planck.reduce
$ <kappa>
is real and positive. The general solution is
$
  psi(x) = A e^(-kappa x) + B e^(kappa x),
$
but the first term diverges as $x arrow -infinity$, so $A = 0$:
$
  psi(x) = B e^(kappa x), quad (x < -a).
$
In the region $-a < x < a, V(x) = -V_0$, so
$
  (dif^2 psi)/(dif x^2) = - l^2 psi,
$
where 
$
  l = sqrt(2m (E + V_0)) / planck.reduce
$ <l>
is real and positive. The general solution is
$
  psi(x) = C sin(l x) + D cos(l x), quad (-a < x < a).
$
In the region $x > a, V(x) = 0$,
$
  psi(x) = F e^(-kappa x) + G e^(kappa x),
$
but the second term diverges as $x arrow +infinity$, so $G = 0$:
$
  psi(x) = F e^(-kappa x), quad (x > a).
$
Since the potential is even, the wave function must be even or odd. \
+ The even solution is
  $
    psi(x) = cases(
      F e^(-kappa x)"," quad &(x > a),
      D cos(l x)"," quad &(0 < x < a),
      psi(-x)"," quad &(x < 0)
    )
  $
  The continuity of $psi(x)$ at $x = a$ gives
  $
    F e^(-kappa a) = D cos(l a),
  $<Continuity1>
  and the continuity of $(dif psi)/(dif x)$ at $x = a$ gives
  $
    -kappa F e^(-kappa a) = -l D sin(l a),
  $
  deviding by @Continuity1, we have
  $
    kappa = l tan(l a),
  $ <Continuity>
  which is a formula for the allowed energies, since $kappa$ and $l$ are functions of $E$. To solve for $E$, Let
  $
    z eq.triple l a,
  $
  and
  $
    z_0 eq.triple a / planck.reduce sqrt(2m V_0).
  $
  By @kappa and @l, we have
  $
    kappa^2 + l^2 = (2m V_0) / planck.reduce^2,
  $
  so
  $
    kappa a = sqrt(z_0^2 - z^2).
  $
  Then @Continuity becomes
  $
    tan z = sqrt((z_0 / z)^2 - 1).
  $
+ The odd solution is
  $
    psi(x) = cases(
      F e^(-kappa x)"," quad &(x > a),
      C sin(l x)"," quad &(0 < x < a),
      -psi(-x)"," quad &(x < 0)
    )
  $
  The continuity of $psi(x)$ at $x = a$ gives
  $
    F e^(-kappa a) = C sin(l a),
  $ <Continuity2>
  and the continuity of $(dif psi)/(dif x)$ at $x = a$ gives
  $
    -kappa F e^(-kappa a) = l C cos(l a),
  $
  deviding by @Continuity2, we have
  $
    kappa = -l cot(l a).
  $
  Similarly, we have
  $
    - cot z = sqrt((z_0 / z)^2 - 1).
  $
Two limiting cases are of special interest:
+ *Wide, deep well* If $z_0$ is very large,
  $
    tan z &= sqrt((z_0 / z)^2 - 1) approx infinity \
    z &= (n pi) / 2, quad n = 1, 3, 5, dots
  $
  and
  $
    -cot z &= sqrt((z_0 / z)^2 - 1) approx infinity \
    z &= n pi, quad n = 1, 2, 3, dots
  $
  Then in summary,
  $
    z = (n pi) / 2, quad n = 1, 2, 3, dots
  $
  It follows that
  $
    E_n + V_0 &= (z^2 planck.reduce^2) / (2m a^2) \
    &= (n^2 pi^2 planck.reduce^2) / (2 m (2 a)^2),
  $
  which is precisely the energy of a particle in an infinite square well of width $2a$.
+ *Narrow, shallow well* As $z_0$ decreases, there are fewer and fewer bound states, until finally, for $z_0 lt pi / 2$, only one remains. However, there is always one bound state, no matter how "weak" the well is. \
Then we consider the scattering states, with $E > 0$. In the region $x < -a, V(x) = 0$, we have
$
  psi(x) = A e^(i k x) + B e^(-i k x),
$
where
$
  k eq.triple sqrt(2m E) / planck.reduce.
$
Inside the well, $-a < x < a, V(x) = -V_0$,
$
  psi(x) = C sin(l x) + D cos(l x),
$
where
$
  l eq.triple sqrt(2m (E + V_0)) / planck.reduce.
$
In the region $x > a, V(x) = 0$,
$
  psi(x) = F e^(i k x) + G e^(-i k x),
$
or assuming there is no incoming wave from the right, $G = 0$:
$
  psi(x) = F e^(i k x).
$
Here $A$ is the incident amplitude, $B$ is the reflected amplitude, and $F$ is the transmitted amplitude. \
The continuity of $psi(x)$ at $x = -a$ gives
$
  A e^(-i k a) + B e^(i k a) = -C sin(l a) + D cos(l a),
$
and the continuity of $(dif psi)/(dif x)$ at $x = -a$ gives
$
  i k[A e^(-i k a) - B e^(i k a)] = -l [C cos(l a) + D sin(l a)],
$
the continuity of $psi(x)$ at $x = a$ gives
$
  C sin(l a) + D cos(l a) = F e^(i k a),
$
and the continuity of $(dif psi)/(dif x)$ at $x = a$ gives
$
  l[C cos(l a) - D sin(l a)] = i k F e^(i k a).
$
Eliminating $C$ and $D$ from these four equations, we have
$
  B &= i sin(2 l a) / (2 k l) (l^2 - k^2) F, \
  F &= (e^(2 i k a) A) / (cos(2 l a) - i (k^2 + l^2) / (2 k l) sin(2 l a)).
$
The transmission coefficient is
$
  T^(-1) = 1 + V_0^2 / (4 E (E + V_0)) sin^2((2 a) / planck.reduce sqrt(2m (E + V_0))).
$
Notice that when
$
  (2 a) / planck.reduce sqrt(2m (E + V_0)) = n pi, quad n = 1, 2, 3, dots
$
the transmission coefficient $T = 1$. The energies for perfect transmission are
$
  E_n + V_0 = (n^2 pi^2 planck.reduce^2) / (2 m (2 a)^2),
$
which happen to be the energy of a particle in an infinite square well of width $2a$.
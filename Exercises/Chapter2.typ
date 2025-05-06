#import "../Assignment.typ": *
#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Introduction to Quantum Mechanics",
  author: "Vivi",
  chapter: 2,
)

#prob[
  Prove the following three theorems:
  + For normalizable solutions, the separation constant $E$ must be real.
    _Hint: Write $E$ (in Equation 2.7) as $E_0 + i Gamma$ (with $E_0$ and $Gamma$ real), and show that if Equation 1.20 is to hold for all $t$, $Gamma$ must be zero._
  + The time-independent wave function $psi(x)$ can always be taken to be real (unlike $Psi(x, t)$, which is necessarily complex).
    _Hint: If $psi(x)$ satisfies Equation 2.5, for a given $E$, so too does its complex conjugate, and hence also the real linear combinations $(psi + psi^*)$ and $i(psi - psi^*)$._
  + If $V(x)$ is an even function (that is, $V(-x) = V(x)$) then $psi(x)$ can always be taken to be either even or odd.
    _Hint: If $psi(x)$ satisfies Equation 2.5, for a given $E$, so too does $psi(-x)$, and hence also the even and odd linear combinations $psi(x) plus.minus psi(-x)$._
]

#sol[
  + Suppose $E = E_0 + i Gamma$ for some real $E_0$ and $Gamma$. Then the time-dependent wave function $Psi(x, t)$ can be written as
    $ 
      Psi(x, t) &= psi(x)e^(-i (E t)/planck.reduce) \
      &= psi(x)e^(-i ((E_0 + i Gamma)t)/planck.reduce) \
      &= psi(x)e^((Gamma t)/planck.reduce)e^(-i (E_0 t)/planck.reduce). 
    $
    Thus,
    $ 
      integral_(-infinity)^infinity abs(Psi(x, t))^2 dif x &= integral_(-infinity)^infinity abs(psi(x))^2 e^((2 Gamma t)/planck.reduce) dif x \
      &= e^((2 Gamma t)/planck.reduce) integral_(-infinity)^infinity abs(psi(x))^2 dif x, 
    $
    which varies with time, unless $Gamma = 0$. Therefore, the separation constant $E$ must be real.

  + If $psi(x)$ satisfies $hat(H) psi = E psi$, then its complex conjugate $psi^*(x)$ also satisfies $hat(H) psi^* = E psi^*$.
    
    If $psi_1(x)$ and $psi_2(x)$ are two solutions of $hat(H) psi = E psi$, then any linear combination $psi_3(x) = c_1 psi_1(x) + c_2 psi_2(x)$ is also a solution.
    
    Thus for any complex solution $psi(x)$, we can construct two real solutions $psi_1(x) = 1/2(psi(x) + psi^*(x))$ and $psi_2(x) = 1/(2i)(psi(x) - psi^*(x))$.

  + If $psi(x)$ satisfies $-planck.reduce^2/(2m) (diff^2 psi(x))/(dif x^2) + V(x)psi(x) = E psi(x)$, then
    $ 
      -planck.reduce^2/(2m) (diff^2 psi(-x))/(dif(-x)^2) + V(-x)psi(-x) &= -planck.reduce^2/(2m) (diff^2 psi(-x))/(dif x^2) + V(x)psi(-x) \
      &= E psi(-x), 
    $
    which means $psi(-x)$ is also a solution.
    Thus we can construct two solutions $psi_1(x) = 1/2(psi(x) + psi(-x))$, which is even, and $psi_2(x) = 1/2(psi(x) - psi(-x))$, which is odd.
]

#prob[
  Show that $E$ must exceed the minimum value of $V(x)$, for every normalizable solution to the time-independent Schrödinger equation. 
  What is the classical analog to this statement? _Hint: Rewrite Equation 2.5 in the form_
  $
    (diff^2 psi)/(dif x^2) = (2m)/(planck.reduce^2) [V(x) - E] psi.
  $
  _if $E < V_("min")$, then $psi$ and its second derivative always have the same sign—argue that such a function cannot be normalized._
]

#sol[
  Rewrite time-independent Schrödinger equation as
  $
    (diff^2 psi)/(dif x^2) = (2m)/(planck.reduce^2) [V(x) - E] psi.
  $
  If $E < V_("min")$, then $V(x) - E > 0$ for all $x$. Thus $psi$ and its second derivative always have the same sign, which means $psi$ cannot be normalized.

  In classical mechanics, this statement is analogous that if the total energy of a particle is less than the minimum potential energy, the particle's kinetic energy is negative, then the particle cannot exist in the system.
]

#prob[
  Show that there is no acceptable solution to the (time-independent) Schrödinger equation for the infinite square well with $E = 0$ or $E < 0$. 
  (This is a special case of the general theorem in Problem 2.2, but this time do it by explicitly solving the Schrödinger equation, 
  and showing that you cannot satisfy the boundary conditions.)
]

#sol[
  When $E = 0$, the time-independent Schrödinger equation for the infinite square well becomes
  $
    (diff^2 psi)/(dif x^2) = -(2m E)/(planck.reduce^2) psi = 0,
  $
  which leads to $psi(x) = 0$, which is not normalizable.

  When $E < 0$, the time-independent Schrödinger equation for the infinite square well becomes
  $
    (diff^2 psi)/(dif x^2) = kappa^2 psi,
  $
  where $kappa = sqrt(-2m E)/planck.reduce$. The general solution to this equation is
  $
    psi(x) = A e^(kappa x) + B e^(-kappa x),
  $
  then the boundary conditions $psi(0) = psi(a) = 0$ lead to $A = B = 0$, which means $psi(x) = 0$, which is not normalizable.
]

#prob[
  Calculate $angle.l x angle.r$, $angle.l x^2 angle.r$, $angle.l p angle.r$, $angle.l p^2 angle.r$, $sigma_x$, and $sigma_p$, 
  for the nth stationary state of the infinite square well. Check that the uncertainty principle is satisfied. 
  Which state comes closest to the uncertainty limit?
]

#sol[
  The expectation value of $x$ is
  $ 
    angle.l x angle.r &= integral_0^a x abs(psi_n(x))^2 dif x \
    &= integral_0^a x (sqrt(2/a) sin((n pi x)/a))^2 dif x \
    &= 2/a integral_0^a x sin^2((n pi x)/a) dif x \
    &= 1/a [1/2 x^2 - a/(2n pi) x sin((2n pi x)/a) - a^2/(4n^2 pi^2) cos((2n pi x)/a)]_0^a \
    &= a/2.
  $
  
  The expectation value of $x^2$ is
  $
    angle.l x^2 angle.r &= integral_0^a x^2 abs(psi_n(x))^2 dif x \
    &= integral_0^a x^2 (sqrt(2/a) sin((n pi x)/a))^2 dif x \
    &= 2/a integral_0^a x^2 sin^2((n pi x)/a) dif x \
    &= 1/a [1/3 x^3 - a/(2n pi) x^2 sin((2n pi x)/a) - a^2/(2n^2 pi^2) x cos((2n pi x)/a) + a^3/(4n^3 pi^3) sin((2n pi x)/a)]_0^a \
    &= 1/a (a^3/3 - a^3/(2n^2 pi^2)) \
    &= a^2 (1/3 - 1/(2n^2 pi^2)).
  $

  The expectation value of $p$ is
  $
    angle.l p angle.r &= m (dif angle.l x angle.r)/(dif t) \
    &= 0
  $

  The expectation value of $p^2$ is
  $
    angle.l p^2 angle.r &= integral_0^a psi_n^*(x) (planck.reduce/i dif/(dif x))^2 psi_n dif x \
    &= -planck.reduce^2 integral_0^a psi_n^*(x) (dif^2 psi_n)/(dif x^2) dif x \
    &= -planck.reduce^2 (-(2m E_n)/planck.reduce^2) integral_0^a abs(psi_n(x))^2 dif x \
    &= 2m E_n \
    &= (n^2 pi^2 planck.reduce^2)/a^2.
  $

  The standard deviation of $x$ is
  $
    sigma_x &= sqrt(angle.l x^2 angle.r - angle.l x angle.r^2) \
    &= a sqrt(1/12 - 1/(2n^2 pi^2)).
  $

  The standard deviation of $p$ is
  $
    sigma_p &= sqrt(angle.l p^2 angle.r - angle.l p angle.r^2) \
    &= (n pi planck.reduce)/a.
  $

  The uncertainty principle is
  $
    sigma_x sigma_p &= a sqrt(1/12 - 1/(2n^2 pi^2)) dot n pi planck.reduce/a \
    &= planck.reduce/2 sqrt(n^2 pi^2/3 - 2) \
    &>= planck.reduce/2 sqrt(pi^2/3 - 2) \
    &>= planck.reduce/2.
  $
]

#prob[
  A particle in the infinite square well has as its initial wave function an even mixture of the first two stationary states:
  $
    Psi(x, 0) = A [psi_1(x) + psi_2(x)].
  $
  + Normalize $Psi(x, 0)$. (That is, find $A$. This is very easy, if you exploit the orthonormality of $psi_1$ and $psi_2$. 
    Recall that, having normalized $Psi$ at $t = 0$, you can rest assured that it stays normalized—if you doubt this, check it explicitly after doing part (b).)
  + Find $Psi(x, t)$ and $abs(Psi(x, t))^2$. Express the latter as a sinusoidal function of time, as in Example 2.1. 
    To simplify the result, let $omega = pi^2 planck.reduce/(2m a^2)$.
  + Compute $angle.l x angle.r$. Notice that it oscillates in time. What is the angular frequency of the oscillation? 
    What is the amplitude of the oscillation? (If your amplitude is greater than $a/2$, go directly to jail.)
  + Compute $angle.l p angle.r$. (As Peter Lorre would say, "Do it ze kveek vay, Johnny!")
  + If you measured the energy of this particle, what values might you get, and what is the probability of getting each of them? 
    Find the expectation value of $H$. How does it compare with $E_1$ and $E_2$?
]

#sol[
  + $
      1 &= integral_0^a abs(Psi(x, 0))^2 dif x \
      &= A^2 integral_0^a [psi_1(x) + psi_2(x)]^* [psi_1(x) + psi_2(x)] dif x \
      &= A^2 integral_0^a [abs(psi_1(x))^2 + abs(psi_2(x))^2 + psi_1^*(x)psi_2(x) + psi_2^*(x)psi_1(x)] dif x \
      &= 2A^2,
    $
    so $A = 1/sqrt(2)$.

  + $
      Psi(x, t) &= 1/sqrt(2) [psi_1(x) e^(-i (E_1 t)/planck.reduce) + psi_2(x) e^(-i (E_2 t)/planck.reduce)] \
      &= 1/sqrt(2) [psi_1(x) e^(-i omega t) + psi_2(x) e^(-4i omega t)] \
      &= 1/sqrt(2) [sqrt(2/a) sin((pi x)/a) e^(-i omega t) + sqrt(2/a) sin((2pi x)/a) e^(-4i omega t)] \
      &= 1/sqrt(a) e^(-i omega t) [sin((pi x)/a) + sin((2pi x)/a) e^(-3i omega t)].
    $
    $
      abs(Psi(x, t))^2 &= 1/a [sin((pi x)/a) + sin((2pi x)/a) e^(-3i omega t)] [sin((pi x)/a) + sin((2pi x)/a) e^(3i omega t)] \
      &= 1/a [sin^2((pi x)/a) + sin^2((2pi x)/a) + 2 sin((pi x)/a)sin((2pi x)/a) cos(3omega t)].
    $

  + $
      angle.l x angle.r &= integral_0^a x abs(Psi(x, t))^2 dif x \
      &= 1/a integral_0^a x [sin^2((pi x)/a) + sin^2((2pi x)/a) + 2 sin((pi x)/a)sin((2pi x)/a) cos(3omega t)] dif x \
      &= 1/a integral_0^a x [sin^2((pi x)/a) + sin^2((2pi x)/a)] dif x + 2/a cos(3omega t) integral_0^a x sin((pi x)/a)sin((2pi x)/a) dif x \
      &= 1/a [a^2/4 + a^2/4] + 1/a cos(3omega t) integral_0^a x [cos((pi x)/a) - cos((3pi x)/a)] dif x \
      &= a/2 + 1/a cos(3omega t) [a/pi x sin((pi x)/a) + a^2/pi^2 cos((pi x)/a) - a/(3pi) x sin((3pi x)/a) - a^2/(9pi^2) cos((3pi x)/a)]_0^a \
      &= a/2 + 1/a cos(3omega t) [-a^2/(pi^2) - a^2/pi^2 + a^2/(9pi^2) + a^2/(9pi^2)] \
      &= a/2 - 16/(9pi^2) a cos(3omega t) \
      &= a/2 [1 - 32/(9pi^2) cos(3omega t)],
    $
    where the angular frequency of the oscillation is $3omega = (3pi^2 planck.reduce)/(2m a^2)$ and the amplitude of the oscillation is $(16a)/(9pi^2) approx 0.18a$.

  + $
      angle.l p angle.r &= m (dif angle.l x angle.r)/(dif t) \
      &= m dif / (dif t) [a/2 (1 - 32/(9pi^2) cos(3omega t))] \
      &= (16m a)/(9pi^2) 3omega sin(3omega t) \
      &= (8planck.reduce)/(3a) sin(3omega t).
    $

  + The possible values of energy are $E_1 = (pi^2 planck.reduce^2)/(2m a^2)$ and $E_2 = (2pi^2 planck.reduce^2)/(m a^2)$, with probability $1/2$ for each.
    The expectation value of $H$ is
    $
      angle.l H angle.r &= 1/2 E_1 + 1/2 E_2 \
      &= 1/2 ((pi^2 planck.reduce^2)/(2m a^2)) + 1/2 ((2pi^2 planck.reduce^2)/(m a^2)) \
      &= (5pi^2 planck.reduce^2)/(4m a^2).
    $
]

#prob[
  Although the overall phase constant of the wave function is of no physical significance (it cancels out whenever you calculate a measurable quantity), 
  the relative phase of the coefficients in Equation 2.17 does matter. For example, suppose we change the relative phase of $psi_1$ and $psi_2$ in Problem 2.5:
  $
    Psi(x, 0) = A [psi_1(x) + e^(i phi.alt) psi_2(x)],
  $
  where $phi.alt$ is some constant. Find $Psi(x, t)$, $abs(Psi(x, t))^2$, and $angle.l x angle.r$, and compare your results with what you got before. 
  Study the special cases $phi.alt = pi/2$ and $phi.alt = pi$. (For a graphi.altcal exploration of this problem see the applet in footnote 9 of this chapter.)
]

#sol[
  $
    1 &= integral_0^a abs(Psi(x, 0))^2 dif x \
    &= A^2 integral_0^a [abs(psi_1(x))^2 + abs(psi_2(x))^2 + e^(i phi.alt)psi_1^*(x)psi_2(x) + e^(-i phi.alt)psi_2^*(x)psi_1(x)] dif x \
    &= 2A^2,
  $
  so $A = 1/sqrt(2)$.
  $
    Psi(x, t) &= 1/sqrt(2) [psi_1(x) e^(-i (E_1 t)/planck.reduce) + e^(i phi.alt)psi_2(x) e^(-i (E_2 t)/planck.reduce)] \
    &= 1/sqrt(2) [psi_1(x) e^(-i omega t) + e^(i phi.alt)psi_2(x) e^(-4i omega t)] \
    &= 1/sqrt(2) [sqrt(2/a) sin((pi x)/a) e^(-i omega t) + e^(i phi.alt)sqrt(2/a) sin((2pi x)/a) e^(-4i omega t)] \
    &= 1/sqrt(a) e^(-i omega t) [sin((pi x)/a) + sin((2pi x)/a) e^(i phi.alt) e^(-3i omega t)].
  $
  $
    abs(Psi(x, t))^2 &= 1/a [sin(pi x/a) + sin(2pi x/a) e^(-3i omega t)] [sin(pi x/a) + sin(2pi x/a) e^(3i omega t)] \
    &= 1/a [sin^2(pi x/a) + sin^2(2pi x/a) + sin(pi x/a)sin(2pi x/a) (e^(i phi.alt) e^(-3i omega t) + e^(-i phi.alt) e^(3i omega t))] \
    &= 1/a [sin^2(pi x/a) + sin^2(2pi x/a) + 2 sin(pi x/a)sin(2pi x/a) cos(3omega t - phi.alt)].
  $
  Then $angle.l x angle.r = a/2 [1 - 32/(9pi^2) cos(3omega t - phi.alt)]$. \
  When $phi.alt = pi/2$, $angle.l x angle.r = a/2 [1 + 32/(9pi^2) sin(3omega t)]$, \
  When $phi.alt = pi$, $angle.l x angle.r = a/2 [1 + 32/(9pi^2) cos(3omega t)]$.
]

#prob[
  A particle in the infinite square well has the initial wave function
  $
    Psi(x, 0) =
    cases(
      A x"," & 0 <= x <= a/2,
      A(a - x)"," & a/2 <= x <= a., 
    )
  $
  + Sketch $Psi(x, 0)$, and determine the constant $A$.
  + Find $Psi(x, t)$.
  + What is the probability that a measurement of the energy would yield the value $E_1$?
  + Find the expectation value of the energy, using Equation 2.21.
]

#sol[
  + $
      1 &= integral_0^a abs(Psi(x, 0))^2 dif x \
      &= A^2 [integral_0^(a/2) x^2 dif x + integral_(a/2)^a (a - x)^2 dif x] \
      &= A^2 [lr(x^3/3 |)_0^(a/2) - lr((a - x)^3/3 |)_(a/2)^a] \
      &= A^2 [a^3/24 + a^3/24] \
      &= (A^2 a^3)/12,
    $
    so $A = (2 sqrt(3))/(a sqrt(a))$.
  
  + $
      c_n &= integral_0^a Psi(x, 0) psi_n^*(x) dif x \
      &= A sqrt(2/a) [integral_0^(a/2) x sin((n pi x)/a) dif x + integral_(a/2)^a (a - x) sin((n pi x)/a) dif x] \
      &= A sqrt(2/a) a/(n pi) [-x lr(cos((n pi x)/a) |)_0^(a/2) + integral_0^(a/2) cos((n pi x)/a) dif x \- (a - x) lr(cos((n pi x)/a) |)_(a/2)^a - integral_(a/2)^a cos((n pi x)/a) dif x] \
      &= A sqrt(2/a) a/(n pi) [a/(n pi) lr(sin((n pi x)/a) |)_0^(a/2) - a/(n pi) lr(sin((n pi x)/a) |)_(a/2)^a] \
      &= A sqrt(2/a) a/(n pi) [a/(n pi) sin((n pi)/2) + a/(n pi) sin((n pi)/2)] \
      &= (4 sqrt(6))/(n^2 pi^2) sin(n pi/2) \
      &= cases(
        (4 sqrt(6))/(n^2 pi^2) (-1)^((n - 1)/2) thick & "odd" n,
        0 thick & "even" n,
      )
    $
    So $
      Psi(x, t) &= sum_(n = 1, 3, 5, dots) c_n psi_n(x) e^(-i (E_n t)/planck.reduce) \
      &= sum_(n = 1, 3, 5, dots) (4 sqrt(6))/(n^2 pi^2) (-1)^((n - 1)/2) sqrt(2/a) sin(n pi x/a) e^(-i (E_n t)/planck.reduce) \
      &= (4 sqrt(6))/(pi^2) sqrt(2/a) sum_(n = 1, 3, 5, dots) ((-1)^((n - 1)/2))/(n^2) sin(n pi x/a) e^(-i (E_n t)/planck.reduce),
    $
    where $E_n = (n^2 pi^2 planck.reduce^2)/(2m a^2)$.
  
  + The probability that a measurement of the energy would yield the value $E_1$ is
    $
      P(E_1) &= abs(c_1)^2 \
      &= ((4 sqrt(6))/(pi^2))^2 \
      &= 96/(pi^4) approx 0.9855
    $
    
  + The expectation value of the energy is
    $
      angle.l H angle.r &= sum_(n = 1, 3, 5, dots) abs(c_n)^2 E_n \
      &= sum_(n = 1, 3, 5, dots) ((4 sqrt(6))/(n^2 pi^2))^2 (n^2 pi^2 planck.reduce^2)/(2m a^2) \
      &= sum_(n = 1, 3, 5, dots) (48 planck.reduce^2)/(n^2 pi^2 m a^2) \
      &= (48 planck.reduce^2)/(pi^2 m a^2) sum_(n = 1, 3, 5, dots) 1/n^2 \
      &= (48 planck.reduce^2)/(pi^2 m a^2) (pi^2)/8 \
      &= (6 planck.reduce^2)/(m a^2).
    $
]

#prob[
  A particle of mass $m$ in the infinite square well (of width $a$) starts out in the state
  $
    Psi(x, 0) =
    cases(
      A thick& 0 <= x <= a/2, 
      0 & a/2 < x <= a,
    )
  $
  for some constant $A$, so it is (at $t = 0$) equally likely to be found at any point in the left half of the well. What is the probability that a measurement of the energy (at some later time $t$) would yield the value $(pi^2 planck.reduce^2) / (2m a^2)$?
]

#sol[
  $
    1 &= integral_0^a abs(Psi(x, 0))^2 dif x \
    &= A^2 [integral_0^(a/2) dif x] \
    &= (A^2 a)/2,
  $
  so $A = sqrt(2/a)$.
  $
    c_1 &= integral_0^a Psi(x, 0) psi_1^*(x) dif x \
    &= A sqrt(2/a) integral_0^(a/2) sin((pi x)/a) dif x \
    &= A sqrt(2/a) (a/pi) [-lr(cos((pi x)/a) |)_0^(a/2)] \
    &= 2/pi.
  $
  The probability that a measurement of the energy would yield the value $pi^2 planck.reduce^2 / (2m a^2) = E_1$ is
  $
    P(E_1) &= abs(c_1)^2 \
    &= (2/pi)^2 \
    &= 4/pi^2 approx 0.4053.
  $
]

#prob[
  For the wave function in Example 2.2, find the expectation value of $H$, at time $t = 0$, the "old fashioned" way:
  $
    angle.l H angle.r = integral Psi(x, 0)^* hat(H) Psi(x, 0) dif x.
  $
  Compare the result we got in Example 2.3. Note: Because $angle.l H angle.r$ is independent of time, there is no loss of generality in using $t = 0$.
]

#sol[
  $
    hat(H) Psi(x, 0) &= (-planck.reduce^2)/(2m) (dif^2)/(dif x^2) Psi(x, 0) \
    &= (-planck.reduce^2)/(2m) (dif^2)/(dif x^2) [A x(a - x)] \
    &= (-planck.reduce^2)/(2m) (-2A) \
    &= (planck.reduce^2 A)/m.
  $
  $
    angle.l H angle.r &= integral Psi(x, 0)^* hat(H) Psi(x, 0) dif x \
    &= (planck.reduce^2 A^2)/m integral_0^a x(a - x) dif x \
    &= (planck.reduce^2 A^2)/m [lr(a x^2/2 - x^3/3 |)_0^a] \
    &= (planck.reduce^2 A^2 a^3)/(6m) \
    &= (5 planck.reduce^2)/(m a^2).
  $
]

#prob[
  + Construct $psi_2(x)$.
  + Sketch $psi_0$, $psi_1$, and $psi_2$.
  + Check the orthogonality of $psi_0$, $psi_1$, and $psi_2$, by explicit integration. 
    _Hint: If you exploit the even-ness and odd-ness of the functions, there is really only one integral left to do._
]

#sol[
  + $
      psi_0 = (m omega / (pi planck.reduce))^(1/4) e^(-(m omega)/(2planck.reduce)x^2),
    $
    $
      hat(a)_+ psi_0 &= 1/sqrt(2planck.reduce m omega) (-i hat(p) + m omega hat(x)) psi_0 \
      &= 1/sqrt(2planck.reduce m omega) (m omega / (pi planck.reduce))^(1/4) (- planck.reduce (dif)/(dif x) + m omega x) e^(-(m omega)/(2planck.reduce)x^2) \
      &= 1/sqrt(2planck.reduce m omega) (m omega / (pi planck.reduce))^(1/4) [- planck.reduce (-(m omega)/planck.reduce x) + m omega x] e^(-(m omega)/(2planck.reduce)x^2) \
      &= 1/sqrt(2planck.reduce m omega) (m omega / (pi planck.reduce))^(1/4) 2 m omega x e^(-(m omega)/(2planck.reduce)x^2).
    $
    $
      (hat(a)_+)^2 psi_0 &= 1/sqrt(2planck.reduce m omega) (-i hat(p) + m omega hat(x)) (hat(a)_+ psi_0) \
      &= 1/(2 planck.reduce m omega) (m omega / (pi planck.reduce))^(1/4) 2 m omega (- planck.reduce (dif)/(dif x) + m omega x) x e^(-(m omega)/(2planck.reduce)x^2) \
      &= 1/(2 planck.reduce m omega) (m omega / (pi planck.reduce))^(1/4) 2 m omega [- planck.reduce (1 -(m omega)/planck.reduce x^2) + m omega x^2] e^(-(m omega)/(2planck.reduce)x^2) \
      &= (m omega / (pi planck.reduce))^(1/4) [(2 m omega)/planck.reduce x^2 - 1] e^(-(m omega)/(2planck.reduce)x^2).
    $
    Therefore,
    $
      psi_2 &= 1/sqrt(2) (hat(a)_+)^2 psi_0 \
      &= 1/sqrt(2) (m omega / (pi planck.reduce))^(1/4) [(2 m omega)/planck.reduce x^2 - 1] e^(-(m omega)/(2planck.reduce)x^2).
    $
  
  + 
  
  + As $psi_0$ and $psi_2$ are even and $psi_1$ is odd, the only integral left to do is
    $
      integral_(-infinity)^infinity psi_0^* psi_2 dif x &= integral_(-infinity)^infinity (m omega / (pi planck.reduce))^(1/4) e^(-(m omega)/(2planck.reduce)x^2) 1/sqrt(2) (m omega / (pi planck.reduce))^(1/4) [(2 m omega)/planck.reduce x^2 - 1] e^(-(m omega)/(2planck.reduce)x^2) dif x \
      &= 1/sqrt(2) (m omega / (pi planck.reduce))^(1/2) integral_(-infinity)^infinity [(2 m omega)/planck.reduce x^2 - 1] e^(-(m omega)/planck.reduce x^2) dif x \
      &= 1/sqrt(2) (m omega / (pi planck.reduce))^(1/2) [(2 m omega)/planck.reduce integral_(-infinity)^infinity x^2 e^(-(m omega)/planck.reduce x^2) dif x - integral_(-infinity)^infinity e^(-(m omega)/planck.reduce x^2) dif x] \
      &= 1/sqrt(2) (m omega / (pi planck.reduce))^(1/2) [(2 m omega)/planck.reduce (planck.reduce)/(2 m omega) sqrt((pi planck.reduce)/(m omega)) - sqrt((pi planck.reduce)/(m omega))] \
      &= 0.
    $
]

#prob[
  + Compute $angle.l x angle.r$, $angle.l p angle.r$, $angle.l x^2 angle.r$, and $angle.l p^2 angle.r$, for the states $psi_0$ (Equation 2.60) and $psi_1$ (Equation 2.63), by explicit integration.
  + Check the uncertainty principle for these states.
  + Compute $angle.l T angle.r$ and $angle.l V angle.r$ for these states. 
    _(No new integration allowed!) Is their sum what you would expect?_
]

#sol[
  + For $psi_0 = ((m omega) / (pi planck.reduce))^(1/4) e^(-(m omega)/(2planck.reduce)x^2)$, which is even, we have
    $
      angle.l x angle.r &= integral_(-infinity)^infinity x abs(psi_0(x))^2 dif x \
      &= 0,
    $
    $
      angle.l p angle.r &= m (dif)/(dif t) angle.l x angle.r \
      &= 0,
    $
    $
      angle.l x^2 angle.r &= integral_(-infinity)^infinity x^2 abs(psi_0(x))^2 dif x \
      &= integral_(-infinity)^infinity x^2 ((m omega) / (pi planck.reduce))^(1/2) e^(-(m omega)/planck.reduce x^2) dif x \
      &= (m omega / (pi planck.reduce))^(1/2) integral_(-infinity)^infinity x^2 e^(-(m omega)/planck.reduce x^2) dif x \
      &= (m omega / (pi planck.reduce))^(1/2) [(planck.reduce)/(2 m omega) sqrt((pi planck.reduce)/(m omega))] \
      &= planck.reduce/(2 m omega),
    $
    $
      angle.l p^2 angle.r &= integral_(-infinity)^infinity psi_0^* (planck.reduce/i dif/(dif x))^2 psi_0 dif x \
      &= - planck.reduce^2 integral_(-infinity)^infinity psi_0^* (dif^2 psi_0)/(dif x^2)  dif x \
      &= - planck.reduce^2 sqrt((m omega) / (pi planck.reduce)) integral_(-infinity)^infinity e^(-(m omega)/(2planck.reduce)x^2) dif / (dif x) [-(m omega)/planck.reduce x e^(-(m omega)/(2planck.reduce)x^2)] dif x \
      &= planck.reduce m omega sqrt((m omega) / (pi planck.reduce)) integral_(-infinity)^infinity (1 - (m omega)/planck.reduce x^2 ) e^(-(m omega)/(planck.reduce)x^2) dif x \
      &= planck.reduce m omega sqrt((m omega) / (pi planck.reduce)) (sqrt((pi planck.reduce)/(m omega)) - (m omega)/(planck.reduce) (planck.reduce)/(2 m omega) sqrt((pi planck.reduce)/(m omega))) \
      &= (planck.reduce m omega) / 2.
    $
    For $psi_1 = ((m omega) / (pi planck.reduce))^(1/4) sqrt((2 m omega)/(planck.reduce)) x e^(-(m omega)/(2planck.reduce)x^2)$, which is odd, we have
    $
      angle.l x angle.r &= integral_(-infinity)^infinity x abs(psi_1(x))^2 dif x \
      &= 0,
    $
    $
      angle.l p angle.r &= m (dif)/(dif t) angle.l x angle.r \
      &= 0,
    $
    $
      angle.l x^2 angle.r &= integral_(-infinity)^infinity x^2 abs(psi_1(x))^2 dif x \
      &= sqrt((m omega) / (pi planck.reduce)) (2 m omega)/(planck.reduce) integral_(-infinity)^infinity x^4 e^(-(m omega)/(planck.reduce)x^2) dif x \
      &= sqrt((m omega) / (pi planck.reduce)) (2 m omega)/(planck.reduce) [(3planck.reduce^2)/(4 m^2 omega^2) sqrt((pi planck.reduce)/(m omega))] \
      &= (3 planck.reduce)/(2 m omega),
    $
]

#prob[
  Find $angle.l x angle.r$, $angle.l p angle.r$, $angle.l x^2 angle.r$, $angle.l p^2 angle.r$, and $angle.l T angle.r$, for the $n$th stationary state of the harmonic oscillator, using the method of Example 2.5. 
  Check that the uncertainty principle is satisfied.
]

#sol[
  The expectation value of $x$ is
  $
    angle.l x angle.r &= sqrt(planck.reduce/(2m omega)) integral_(-infinity)^infinity psi_n^* (hat(a)_+ + hat(a)_-) psi_n dif x \
    &= sqrt(planck.reduce/(2m omega)) [sqrt(n + 1) integral_(-infinity)^infinity psi_n^* psi_(n+1) + sqrt(n) integral_(-infinity)^infinity psi_n^* psi_(n-1) dif x] \
    &= 0.
  $
  Thus the expectation value of $p$ is 
  $
    angle.l p angle.r &= (dif)/(dif t) angle.l x angle.r \
    &= 0.
  $
  The expectation value of $x^2$ is
  $
    angle.l x^2 angle.r &= planck.reduce/(2m omega) integral_(-infinity)^infinity psi_n^* (hat(a)_+ + hat(a)_-)^2 psi_n dif x \
    &= planck.reduce/(2m omega) integral_(-infinity)^infinity psi_n^* (hat(a)_+^2 + hat(a)_-^2 + hat(a)_+ hat(a)_- + hat(a)_- hat(a)_+) psi_n dif x \
    &= planck.reduce/(2m omega) [sqrt(n+1) integral_(-infinity)^infinity psi_n^* hat(a)_+ psi_(n+1) + sqrt(n) integral_(-infinity)^infinity psi_n^* hat(a)_- psi_(n-1) dif x + (n+n+1)integral_(-infinity)^infinity psi_n^* psi_n dif x] \
    &= planck.reduce/(2m omega) [sqrt(n+1) sqrt(n+2) integral_(-infinity)^infinity psi_n^* psi_(n+2) + n sqrt(n-1) integral_(-infinity)^infinity psi_n^* psi_(n-2) dif x + 2n+1] \
    &= (n+1/2) planck.reduce/(m omega).
  $
  The expectation value of $p^2$ is
  $
    angle.l p^2 angle.r &= - planck.reduce m omega/2 integral_(-infinity)^infinity psi_n^* (hat(a)_+ - hat(a)_-)^2 psi_n dif x \
    &= - planck.reduce m omega/2 integral_(-infinity)^infinity psi_n^* (hat(a)_+^2 + hat(a)_-^2 - hat(a)_+ hat(a)_- - hat(a)_- hat(a)_+) psi_n dif x \
    &= - planck.reduce m omega/2 [sqrt(n+1) integral_(-infinity)^infinity psi_n^* hat(a)_+ psi_(n+1) + sqrt(n) integral_(-infinity)^infinity psi_n^* hat(a)_- psi_(n-1) dif x - (n+n+1)integral_(-infinity)^infinity psi_n^* psi_n dif x] \
    &= - planck.reduce m omega/2 [sqrt(n+1) sqrt(n+2) integral_(-infinity)^infinity psi_n^* psi_(n+2) + n sqrt(n-1) integral_(-infinity)^infinity psi_n^* psi_(n-2) dif x - (2n+1)] \
    &= (n+1/2) planck.reduce m omega.
  $
  The expectation value of $T$ is
  $
    angle.l T angle.r &= 1/(2m) angle.l p^2 angle.r \
    &= 1/2 (n+1/2) planck.reduce omega.
  $
  The standard deviation of $x$ is
  $
    sigma_x &= sqrt(angle.l x^2 angle.r - angle.l x angle.r^2) \
    &= sqrt((n+1/2) planck.reduce/(m omega)).
  $
  The standard deviation of $p$ is
  $
    sigma_p &= sqrt(angle.l p^2 angle.r - angle.l p angle.r^2) \
    &= sqrt((n+1/2) planck.reduce m omega).
  $
  The uncertainty principle is
  $
    sigma_x sigma_p &= sqrt((n+1/2) planck.reduce/(m omega)) sqrt((n+1/2) planck.reduce m omega) \
    &= (n+1/2) planck.reduce >= planck.reduce/2.
  $
]

#prob[
  A particle in the harmonic oscillator potential starts out in the state
  $
    Psi(x, 0) = A [3 psi_0(x) + 4 psi_1(x)].
  $
  + Find $A$.
  + Construct $Psi(x, t)$ and $abs(Psi(x, t))^2$. Don't get too excited if $abs(Psi(x, t))^2$ oscillates at exactly the classical frequency; what would it have been had I specified $psi_2(x)$, instead of $psi_1(x)$?
  + Find $angle.l x angle.r$ and $angle.l p angle.r$. Check that Ehrenfest's theorem (Equation 1.38) holds, for this wave function.
  + If you measured the energy of this particle, what values might you get, and with what probabilities?
]

#sol[
  + $
      1 &= integral_(-infinity)^infinity abs(Psi(x, 0))^2 dif x \
      &= abs(A)^2 (9 + 16),
    $
    so $A = 1/5$.
    
  + $
      Psi(x, t) &= 1/5 [3 psi_0(x) e^(-i (E_0 t)/planck.reduce) + 4 psi_1(x) e^(-i (E_1 t)/planck.reduce)] \
      &= 1/5 [3 psi_0(x) e^(-1/2 i omega t) + 4 psi_1(x) e^(-3/2 i omega t)].
    $
    $
      abs(Psi(x, t))^2 &= 1/25 [9 abs(psi_0(x))^2 + 16 abs(psi_1(x))^2 + 12 psi_0(x) psi_1(x) (e^(i omega t) + e^(-i omega t))] \
      &= 1/25 [9 abs(psi_0(x))^2 + 16 abs(psi_1(x))^2 + 24 psi_0(x) psi_1(x) cos(omega t)].
    $
    
  + $
      angle.l x angle.r &= integral_(-infinity)^infinity Psi(x, 0)^* x Psi(x, 0) dif x \
      &= 1/25 [9 integral_(-infinity)^infinity psi_0 x psi_0 dif x + 16 integral_(-infinity)^infinity psi_1 x psi_1 dif x + 24 cos(omega t) integral_(-infinity)^infinity psi_0 x psi_1 dif x] \
      &= 24/25 cos(omega t) integral_(-infinity)^infinity psi_0 x psi_1 dif x \
      &= 24/25 cos(omega t) sqrt((m omega)/(pi planck.reduce)) sqrt((2m omega)/planck.reduce) integral_(-infinity)^infinity x e^(-(m omega)/(2planck.reduce)x^2) x e^(-(m omega)/(2planck.reduce)x^2) dif x \
      &= 24/25 cos(omega t) sqrt(1/(2pi)) integral_(-infinity)^infinity e^(-(m omega)/planck.reduce x^2) dif x \
      &= 24/25 sqrt(planck.reduce/(2m omega)) cos(omega t).
    $
    Then,
    $
      angle.l p angle.r &= m (dif)/(dif t) angle.l x angle.r \
      &= -24/25 sqrt((planck.reduce m omega)/2) sin(omega t).
    $
    We have
    $
      (dif angle.l p angle.r)/(dif t) = -24/25 sqrt((planck.reduce m omega)/2) omega cos(omega t),
    $
    and
    $
      (dif V)/(dif x) = m omega^2 x.
    $
    Therefore,
    $
      - angle.l (dif V)/(dif x) angle.r &= - m omega^2 angle.l x angle.r \
      &= - 24/25 sqrt((planck.reduce m omega)/2) omega cos(omega t) \
      &= (dif angle.l p angle.r)/(dif t),
    $
    so Ehrenfest's theorem holds.
    
  + We can get the energy $E_0 = (planck.reduce omega)/2$ with probability $9/25$ and the energy $E_1 = (3planck.reduce omega)/2$ with probability $16/25$.
]
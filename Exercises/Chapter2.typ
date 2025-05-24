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

// ...existing code...

#prob[
  In the ground state of the harmonic oscillator, what is the probability (correct
  to three significant digits) of finding the particle outside the classically allowed region?
  _Hint: Classically, the energy of an oscillator is $E = (1/2)k a^2 = (1/2)m omega^2 a^2$, where $a$
  is the amplitude. So the "classically allowed region" for an oscillator of energy $E$ extends
  from $-sqrt((2E)/(m omega^2))$ to $+sqrt((2E)/(m omega^2))$. Look in a math table under "Normal Distribution" or
  "Error Function" for the numerical value of the integral, or evaluate it by computer._
]
#sol[
  For the ground state of the harmonic oscillator,
  $
    psi_0(x) = ((m omega) / (pi planck.reduce))^(1/4) e^(-(m omega)/(2planck.reduce)x^2),
  $
  the probability of finding the particle outside the classically allowed region $(- x_0, x_0)$ is
  $
    P &= 2 integral_(x_0)^infinity abs(psi_0(x))^2 dif x \
    &= 2 sqrt((m omega) / (pi planck.reduce)) integral_(x_0)^infinity e^(-(m omega)/(planck.reduce)x^2) dif x \
    &= 2 sqrt((m omega) / (pi planck.reduce)) sqrt((pi planck.reduce)/(m omega)) (1 - 2 F(sqrt(2))) \
    &approx 0.157,
  $
]

#prob[
  Use the recursion formula 
  $
    a_(j+2) = (-2(n-j))/((j+1)(j+2)) a_j
  $
  to work out $H_5(xi)$ and $H_6(xi)$.
  Invoke the convention that the coefficient of the highest power of $xi$ is $2^n$ to fix the overall
  constant.
]
#sol[
  $n = 5$:
  $
    a_3 = (-2 times 4)/(2 times 3) a_1 = -4/3 a_1
  $
  $
    a_5 = (-2 times 2)/(4 times 5) a_3 = -1/5 a_3 = 4/15 a_1,
  $
  then,
  $
    H_5(xi) &= a_1 xi + a_3 xi^3 + a_5 xi^5 \
    &= a_1 (xi - 4/3 xi^3 + 4/15 xi^5),
  $
  setting $a_1 = 15 dot 2^5 / 4 = 120$, we have
  $
    H_5(xi) &= 120 (xi - 4/3 xi^3 + 4/15 xi^5) \
    &= 32 xi^5 - 160 xi^3 + 120 xi.
  $

  $n = 6$:
  $
    a_2 = (-2 times 6)/(1 times 2) a_0 = -6 a_0,
  $
  $
    a_4 = (-2 times 4)/(3 times 4) a_2 = -2/3 a_2 = 4 a_0,
  $
  $
    a_6 = (-2 times 2)/(5 times 6) a_4 = -2/15 a_4 = -8/15 a_0,
  $
  then,
  $
    H_6(xi) &= a_0 + a_2 xi^2 + a_4 xi^4 + a_6 xi^6 \
    &= a_0 (1 - 6 xi^2 + 4 xi^4 - 8/15 xi^6).
  $
  Setting $a_0 = -15 dot 2^6 / 8 = -120$, we have
  $
    H_6(xi) &= -120 (1 - 6 xi^2 + 4 xi^4 - 8/15 xi^6) \
    &= 64 xi^6 - 480 xi^4 + 720 xi^2 - 120.
  $
]

#prob[
  In this problem we explore some of the more useful theorems (stated without proof) involving Hermite polynomials.
  
  + The Rodrigues formula says that
    $
      H_n (xi) = (-1)^n e^(xi^2) (dif^n)/(dif xi^n) e^(-xi^2).
    $
    Use it to derive $H_3$ and $H_4$.
  
  + The following recursion relation gives you $H_(n+1)(xi)$ in terms of the two preceding Hermite polynomials:
    $
      H_(n+1)(xi) = 2xi H_n(xi) - 2n H_(n-1)(xi).
    $
    Use it, together with your answer in (a), to obtain $H_5$ and $H_6$.
  
  + If you differentiate an $n$th-order polynomial, you get a polynomial of order $(n - 1)$. For the Hermite polynomials, in fact,
    $
      (dif H_n)/(dif xi) = 2n H_(n-1)(xi).
    $
    Check this, by differentiating $H_5$ and $H_6$.
  
  + $H_n (xi)$ is the $n$th $z$-derivative, at $z = 0$, of the generating function
    $
      e^(-z^2+2z xi) = sum_(n=0)^infinity (z^n)/(n!) H_n (xi).
    $
    Use this to obtain $H_1$, $H_2$, and $H_3$.
]

#sol[
  + $
      (dif)/(dif xi) e^(-xi^2) &= -2xi e^(-xi^2), \
      (dif^2)/(dif xi^2) e^(-xi^2) &= (dif)/(dif xi) (-2xi e^(-xi^2)) \
      &= (4xi^2 - 2) e^(-xi^2), \
      (dif^3)/(dif xi^3) e^(-xi^2) &= (dif)/(dif xi) (4xi^2 - 2) e^(-xi^2) \
      &= (-8xi^3 + 12xi) e^(-xi^2), \
      (dif^4)/(dif xi^4) e^(-xi^2) &= (dif)/(dif xi) (-8xi^3 + 12xi) e^(-xi^2) \
      &= (16xi^4 - 48xi^2 + 12) e^(-xi^2).
    $
    
    Therefore, we have
    $
      H_3(xi) &= (-1)^3 e^(xi^2) (dif^3)/(dif xi^3) e^(-xi^2) \
      &= -e^(xi^2) (-8xi^3 + 12xi) e^(-xi^2) \
      &= 8xi^3 - 12xi, \
      
      H_4(xi) &= (-1)^4 e^(xi^2) (dif^4)/(dif xi^4) e^(-xi^2) \
      &= e^(xi^2) (16xi^4 - 48xi^2 + 12) e^(-xi^2) \
      &= 16xi^4 - 48xi^2 + 12.
    $
  
  + $
      H_5(xi) &= 2xi H_4(xi) - 2 times 4 H_3(xi) \
      &= 2xi (16xi^4 - 48xi^2 + 12) - 8(8xi^3 - 12xi) \
      &= 32xi^5 - 96xi^3 + 24xi - 64xi^3 + 96xi \
      &= 32xi^5 - 160xi^3 + 120xi, \
      
      H_6(xi) &= 2xi H_5(xi) - 2 times 5 H_4(xi) \
      &= 2xi (32xi^5 - 160xi^3 + 120xi) - 10(16xi^4 - 48xi^2 + 12) \
      &= 64xi^6 - 320xi^4 + 240xi^2 - 160xi^4 + 480xi^2 - 120 \
      &= 64xi^6 - 480xi^4 + 720xi^2 - 120.
    $
  + $
      (dif H_5)/(dif xi) &= (dif)/(dif xi) (32xi^5 - 160xi^3 + 120xi) \
      &= 160xi^4 - 480xi^2 + 120 \
      &= 10(16xi^4 - 48xi^2 + 12) \
      &= 10 H_4(xi) \
      &= 2 times 5 H_4(xi), \
      
      (dif H_6)/(dif xi) &= (dif)/(dif xi) (64xi^6 - 480xi^4 + 720xi^2 - 120) \
      &= 384xi^5 - 1920xi^3 + 1440xi \
      &= 12(32xi^5 - 160xi^3 + 120xi) \
      &= 12 H_5(xi) \
      &= 2 times 6 H_5(xi).
    $
    
  + $
      (dif)/(dif z) e^(-z^2+2z xi) &= (-2z + 2xi) e^(-z^2+2z xi),
    $
    setting $z = 0$ gives us $H_1(xi) = 2xi$.
    $
      (dif^2)/(dif z^2) e^(-z^2+2z xi) &= (dif)/(dif z) ((-2z + 2xi) e^(-z^2+2z xi)) \
      &= -2 e^(-z^2+2z xi) + (-2z + 2xi)(-2z + 2xi) e^(-z^2+2z xi) \
      &= [-2 + (-2z + 2xi)^2] e^(-z^2+2z xi},
    $
    setting $z = 0$ gives us $H_2(xi) = 4xi^2 - 2$.
    $
      (dif^3)/(dif z^3) e^(-z^2+2z xi) &= (dif)/(dif z) ([-2 + (-2z + 2xi)^2] e^(-z^2+2z xi}) \
      &= -2 times 2(-2z + 2xi) e^(-z^2+2z xi} + [-2 + (-2z + 2xi)^2] (-2z + 2xi) e^(-z^2+2z xi} \
      &= [(-2z + 2xi)^3 - 6(-2z + 2xi)] e^(-z^2+2z xi},
    $
    setting $z = 0$ gives us $H_3(xi) = 8xi^3 - 12xi$.
]
#prob[
  Show that $[A e^(i k x) + B e^(-i k x)]$ and $[C cos k x + D sin k x]$ are equivalent ways
  of writing the same function of $x$, and determine the constants $C$ and $D$ in terms of $A$
  and $B$, and vice versa. _Comment:_ In quantum mechanics, when $V = 0$, the exponentials
  represent _traveling waves_, and are most convenient in discussing the free particle, whereas
  sines and cosines correspond to _standing waves_, which arise naturally in the case of the
  infinite square well.
]
#sol[
  $
    C cos k x + D sin k x &= A e^(i k x) + B e^(-i k x) \
    &= A [cos k x + i sin k x] + B [cos k x - i sin k x] \
    &= (A + B) cos k x + i (A - B) sin k x,
  $
  so we have
  $
    C &= A + B, \
    D &= i (A - B).
  $
  $
    A e^(i k x) + B e^(-i k x) &= C cos k x + D sin k x \
    &= C / 2 (e^(i k x) + e^(-i k x)) + D / 2i (e^(i k x) - e^(-i k x)) \
    &= (C/2 + D/2i) e^(i k x) + (C/2 - D/2i) e^(-i k x),
  $
  so we have
  $
    A &= C/2 + D/2i, \
    B &= C/2 - D/2i.
  $
]

#prob[
  Find the probability current
  $
    J(x, t) = (i planck.reduce)/(2m)(Psi (diff Psi^*)/(dif x) - Psi^* (diff Psi)/(dif x))
  $
   for the free particle wave
  function Equation
  $
    Psi_k(x, t) = A e^(i (k x - (planck.reduce k^2)/(2m)t)),
  $ 
  Which direction does the probability flow?
]
#sol[
  $
    J(x, t) &= (i planck.reduce)/(2m)(Psi (diff Psi^*)/(dif x) - Psi^* (diff Psi)/(dif x)) \
    &= (i planck.reduce)/(2m) abs(A)^2 [e^(i (k x - (planck.reduce k^2)/(2m)t)) (-i k) e^(-i (k x - (planck.reduce k^2)/(2m)t)) - e^(-i (k x - (planck.reduce k^2)/(2m)t)) (i k) e^(i (k x - (planck.reduce k^2)/(2m)t))] \
    &= (i planck.reduce)/(2m) abs(A)^2 (-2i k) \
    &= (planck.reduce k)/(m) abs(A)^2.
  $
  It flows in the positive $x$ direction.
]

#prob[
  This problem is designed to guide you through a "proof" of Plancherel's
  theorem, by starting with the theory of ordinary Fourier series on a _finite_ interval, and
  allowing that interval to expand to infinity.
  + Dirichlet's theorem says that "any" function $f(x)$ on the interval $[-a, +a]$ can be
    expanded as a Fourier series:
    $
      f(x) = sum_(n=0)^infinity [a_n sin((n pi x)/a) + b_n cos((n pi x)/a)].
    $
    Show that this can be written equivalently as
    $
      f(x) = sum_(n=-infinity)^infinity c_n e^(i (n pi x)/a).
    $
    What is $c_n$, in terms of $a_n$ and $b_n$?
  + Show (by appropriate modification of Fourier's trick) that
    $
      c_n = 1/(2a) integral_(-a)^(+a) f(x) e^(-i (n pi x)/a) dif x.
    $
      
  + Eliminate $n$ and $c_n$ in favor of the new variables $k = ((n pi)/a)$ and $F(k) =
    sqrt(2/pi) a c_n$. Show that (a) and (b) now become
    $
      f(x) = 1/sqrt(2pi) sum_(n=-infinity)^infinity F(k) e^(i k x) Delta k;  F(k) = 1/sqrt(2pi) integral_(-a)^(+a) f(x) e^(-i k x) dif x,
    $
    where $Delta k$ is the increment in $k$ from one $n$ to the next.
      
  + Take the limit $a -> infinity$ to obtain Plancherel's theorem. _Comment:_ In view of their
    quite different origins, it is surprising (and delightful) that the two formulas—one
    for $F(k)$ in terms of $f(x)$, the other for $f(x)$ in terms of $F(k)$—have such a similar
    structure in the limit $a -> infinity$.
]
#sol[
  + $
      f(x) &= sum_(n=0)^infinity [a_n sin((n pi x)/a) + b_n cos((n pi x)/a)] \
      &= b_0 + sum_(n=1)^infinity a_n sin((n pi x)/a) + sum_(n=1)^infinity b_n cos((n pi x)/a) \
      &= b_0 + sum_(n=1)^infinity a_n / (2i) [e^(i (n pi x)/a) - e^(-i (n pi x)/a)] + sum_(n=1)^infinity b_n / 2 [e^(i (n pi x)/a) + e^(-i (n pi x)/a)] \
      &= b_0 + sum_(n=1)^infinity (a_n / (2i) + b_n / 2) e^(i (n pi x)/a) + sum_(n=1)^infinity (-a_n / (2i) + b_n / 2) e^(-i (n pi x)/a).
    $
    Let
    $
      c_0 &= b_0, \
      c_n &= a_n / (2i) + b_n / 2 quad n > 0, \
      c_n &= -a_(-n) / (2i) + b_(-n) / 2 quad n lt 0,
    $
    then we have
    $
      f(x) = sum_(n=-infinity)^infinity c_n e^(i (n pi x)/a).
    $
  + $
      1 / (2a) integral_(-a)^(+a) f(x) e^(-i (n pi x)/a) &= 1 / (2a) integral_(-a)^(+a) [sum_(m=-infinity)^infinity c_m e^(i (m pi x)/a)] e^(-i (n pi x)/a) dif x \
      &= 1 / (2a) sum_(m=-infinity)^infinity c_m integral_(-a)^(+a) e^(i ((m-n) pi x)/a) dif x,
    $
    where when $m = n$,
    $
      integral_(-a)^(+a) e^(i ((m-n) pi x)/a) dif x &= integral_(-a)^(+a) e^(0) dif x \
      &= 2a,
    $
    and when $m eq.not n$,
    $
      integral_(-a)^(+a) e^(i ((m-n) pi x)/a) dif x &= lr(e^(i ((m-n) pi x)/a)|)_(-a)^a / (i (m-n) pi/a) \
      &= (e^(i (m-n) pi) - e^(-i (m-n) pi)) / (i (m-n) pi/a) \
      &= ((-1)^(m-n) - (-1)^(n-m)) / (i (m-n) pi/a) \
      &= 0,
    $
    then we have
    $
      1 / (2a) integral_(-a)^(+a) f(x) e^(-i (n pi x)/a) &= 1 / (2a) sum_(m=-infinity)^infinity c_m [2a delta_(m n)] \
      &= sum_(m=-infinity)^infinity c_m delta_(m n) \
      &= c_n.
    $
  + $
      f(x) &= sum_(n=-infinity)^infinity c_n e^(i (n pi x)/a) \
      &= sum_(n=-infinity)^infinity sqrt(pi/2) 1/a F(k) e^(i k x) \
      &= sum_(n=-infinity)^infinity sqrt(1/(2 pi)) pi/a F(k) e^(i k x) \
      &= sqrt(1/(2 pi)) sum_(n=-infinity)^infinity F(k) e^(i k x) Delta k,
    $
    and
    $
      F(k) &= sqrt(2 / pi) a c_n \
      &= sqrt(1/(2 pi)) integral_(-a)^(+a) f(x) e^(-i (n pi x)/a) dif x \
      &= sqrt(1/(2 pi)) integral_(-a)^(+a) f(x) e^(-i k x) dif x.
    $
  + $
      f(x) = sqrt(1/(2 pi)) integral_(-infinity)^(+infinity) F(k) e^(i k x) dif k.
    $
]

#prob[
  A free particle has the initial wave function
  $
    Psi(x, 0) = A e^(-a abs(x)),
  $
  where $A$ and $a$ are positive real constants.
  + Normalize $Psi(x, 0)$.
  + Find $phi.alt(k)$.
  + Construct $Psi(x, t)$, in the form of an integral.
  + Discuss the limiting cases ($a$ very large, and $a$ very small).
]
#sol[
  + $
      1 &= integral_(-infinity)^(+infinity) abs(Psi(x, 0))^2 dif x \
      &= abs(A)^2 integral_(-infinity)^(+infinity) e^(-2a abs(x)) dif x \
      &= 2 abs(A)^2 integral_0^(+infinity) e^(-2a x) dif x \
      &= 2 abs(A)^2 lr(e^(-2a x) / (-2a) |)_0^(+infinity) \
      &= abs(A)^2 / a,
    $
    so $A = sqrt(a)$.
  + $
      phi.alt(k) &= 1/sqrt(2 pi) integral_(-infinity)^(+infinity) Psi(x, 0) e^(-i k x) dif x \
      &= 2 A / sqrt(2 pi) integral_0^(+infinity) e^(-a x) cos(k x) dif x \
      &= A / sqrt(2 pi) integral_0^(+infinity) e^(-a x) [e^(i k x) + e^(-i k x)] dif x \
      &= A / sqrt(2 pi) [integral_0^(+infinity) e^((i k -a) x) dif x + integral_0^(+infinity) e^((-i k -a) x) dif x] \
      &= A / sqrt(2 pi) lr([e^((i k -a) x) / (i k - a) + e^((-i k -a) x) / (-i k - a)]|)_0^(+infinity) \
      &= A / sqrt(2 pi) [(-1)/(i k - a) + 1/(i k + a)] \
      &= A / sqrt(2 pi) (- i k - a + i k - a) / ((i k - a)(i k + a)) \
      &= sqrt(a / (2 pi)) (2 a) / (a^2 + k^2).
    $
  + $
      Psi(x, t) &= 1/sqrt(2 pi) integral_(-infinity)^(+infinity) phi.alt(k) e^(i (k x - (planck.reduce k^2)/(2m)t)) dif k \
      &= 1/sqrt(2 pi) integral_(-infinity)^(+infinity) sqrt(a / (2 pi)) (2 a) / (a^2 + k^2) e^(i (k x - (planck.reduce k^2)/(2m)t)) dif k \
      &= a^(3/2) / pi integral_(-infinity)^(+infinity) e^(i (k x - (planck.reduce k^2)/(2m)t)) / (a^2 + k^2) dif k.
    $
  + For very large $a$, $Psi(x,0)$ is a sharp spike and
    $
      phi.alt(k) approx sqrt(a / (2 pi)) (2 a) / a^2 = sqrt(2 / (pi a))
    $
    is broad and flat, position is well-defined but momentum is ill-defined. \
    For very small $a$, $Psi(x,0)$ is broad and flat and
    $
      phi.alt(k) approx sqrt(a / (2 pi)) (2 a) / k^2 = sqrt((2 a^3) / pi) 1 / k^2
    $
    is a sharp spike, position is ill-defined but momentum is well-defined.
]

#prob[
  A free particle has the initial wave function
  $
    Psi(x, 0) = A e^(-a x^2),
  $
  where $A$ and $a$ are (real and positive) constants.
  + Normalize $Psi(x, 0)$.
  + Find $Psi(x, t)$. Hint: Integrals of the form
    $
      integral_(-infinity)^(+infinity) e^(-(a x^2 + b x)) dif x
    $
    can be handled by "completing the square": Let $y ≡ sqrt(a) (x + b/(2a))$, and note that $(a x^2 + b x) = y^2 - b^2/(4a)$. Answer:
    $
      Psi(x, t) = ((2a)/pi)^(1/4) 1/gamma e^(-a x^2/gamma^2), "where" gamma ≡ sqrt(1 + (2i planck.reduce t)/m).
    $
  + Find $abs(Psi(x, t))^2$. Express your answer in terms of the quantity 
    $
      w ≡ sqrt(a/(1 + ((2 planck.reduce t)/m)^2)).
    $
    Sketch $abs(Psi)^2$ (as a function of $x$) at $t = 0$, and again for some very large $t$. Qualitatively, what happens to $abs(Psi)^2$, as time goes on?
  + Find $angle.l x angle.r$, $angle.l p angle.r$, $angle.l x^2 angle.r$, $angle.l p^2 angle.r$, $sigma_x$, and $sigma_p$. Partial answer: $angle.l p^2 angle.r = a planck.reduce^2$, but it may take some algebra to reduce it to this simple form.
  + Does the uncertainty principle hold? At what time $t$ does the system come closest to the uncertainty limit?
]
#sol[
  + $
      1 &= integral_(-infinity)^(+infinity) abs(Psi(x, 0))^2 dif x \
      &= abs(A)^2 integral_(-infinity)^(+infinity) e^(-2a x^2) dif x \
      &= abs(A)^2 sqrt((2 pi) / (4 a)) \
      &= abs(A)^2 sqrt(pi / (2 a)),
    $
    so $A = ((2 a) / pi)^(1/4)$.
  + $
      integral_(-infinity)^(+infinity) e^(-(a x^2 + b x)) dif x &= integral_(-infinity)^(+infinity) e^(- y^2 + b^2/(4 a)) 1/sqrt(a) dif y \
      &= 1 / sqrt(a) e^(b^2/(4 a)) integral_(-infinity)^(+infinity) e^(-y^2) dif y \
      &= 1 / sqrt(a) e^(b^2/(4 a)) sqrt(pi) \
      &= sqrt(pi / a) e^(b^2/(4 a)).
    $
    $
      phi.alt(k) &= 1/sqrt(2 pi) integral_(-infinity)^(+infinity) Psi(x, 0) e^(-i k x) dif x \
      &= 1/sqrt(2 pi) integral_(-infinity)^(+infinity) A e^(-a x^2) e^(-i k x) dif x \
      &= A/sqrt(2 pi) integral_(-infinity)^(+infinity) e^(-(a x^2 + i k x)) dif x \
      &= A/sqrt(2 pi) sqrt(pi / a) e^(-k^2/(4 a)) \
      &= ((2 a) / pi)^(1/4) / sqrt(2 pi) sqrt(pi / a) e^(-k^2/(4 a)) \
      &= e^(-k^2/(4 a)) / (2 pi a)^(1/4).
    $
    $
      Psi(x, t) &= 1/sqrt(2 pi) integral_(-infinity)^(+infinity) phi.alt(k) e^(i (k x - (planck.reduce k^2)/(2m)t)) dif k \
      &= 1/sqrt(2 pi) integral_(-infinity)^(+infinity) e^(-k^2/(4 a)) / (2 pi a)^(1/4) e^(i (k x - (planck.reduce k^2)/(2m)t)) dif k \
      &= 1/sqrt(2 pi) 1 / (2 pi a)^(1/4) integral_(-infinity)^(+infinity) e^(-k^2/(4 a)) e^(i (k x - (planck.reduce k^2)/(2m)t)) dif k \
      &= 1/sqrt(2 pi) 1 / (2 pi a)^(1/4) integral_(-infinity)^(+infinity) e^(-[(1/(4a) + (i planck.reduce t)/(2m)) k^2 - i x k]) dif k \
      &= 1/sqrt(2 pi) 1 / (2 pi a)^(1/4) sqrt(pi / (1/(4a) + (i planck.reduce t)/(2m))) e^(-x^2/(4(1/(4a) + (i planck.reduce t)/(2m)))) \
      &= ((2 a) / pi)^(1/4) e^(-(a x^2) / (1 + (2 i planck.reduce a t) / m)) / sqrt(1 + (2 i planck.reduce a t) / m) \
      &= ((2 a) / pi)^(1/4) 1/gamma e^(-(a x^2) / gamma^2),
    $
    where $gamma = sqrt(1 + (2 i planck.reduce t) / m)$.
  + $
      abs(Psi(x, t))^2 &= sqrt((2 a) / pi) (e^(-(a x^2) / (1 + (2 i planck.reduce t) / m)) e^(-(a x^2) / (1 - (2 i planck.reduce t) / m))) / sqrt((1 + (2 i planck.reduce t) / m) (1 - (2 i planck.reduce t) / m)) \
      &= sqrt((2 a) / pi) (e^(-(2 a x^2) / (1 + ((2 planck.reduce t) / m)^2))) / sqrt(1 + ((2 planck.reduce t) / m)^2) \
      &= sqrt(2 / pi) omega e^(- 2 omega^2 x^2),
    $
    where $omega = sqrt(a/(1 + ((2 planck.reduce t) / m)^2))$. \
    As $t$ increases, the wave function spreads out.
  + $
      angle.l x angle.r &= integral_(-infinity)^(+infinity) x abs(Psi(x, t))^2 dif x \
      &= 0;
    $
    $
      angle.l p angle.r &= m (dif angle.l x angle.r)/(dif t)  \
      &= 0;
    $
    $
      angle.l x^2 angle.r &= integral_(-infinity)^(+infinity) x^2 abs(Psi(x, t))^2 dif x \
      &= sqrt(2 / pi) omega integral_(-infinity)^(+infinity) x^2 e^(- 2 omega^2 x^2) dif x \
      &= sqrt(2 / pi) omega (1/(4 omega^2)) [lr(x e^(- 2 omega^2 x^2)|)_(-infinity)^(+infinity) +  integral_(-infinity)^(+infinity) e^(- 2 omega^2 x^2) dif x ] \
      &= sqrt(2 / pi) omega (1/(4 omega^2)) sqrt(2 pi) (1 /(2 omega)) \
      &= 1/(4 omega^2) ;
    $
    $
      angle.l p^2 angle.r &= integral_(-infinity)^(+infinity) Psi^*(x, t) (-i planck.reduce diff / (diff x))^2 Psi(x, t) dif x \
      &= - planck.reduce^2 integral_(-infinity)^(+infinity) Psi^*(x, t) (diff^2 Psi)/(diff x^2) dif x \
      &= - planck.reduce^2 sqrt((2 a) / pi) 1 / sqrt((1 + (2 i planck.reduce t) / m) (1 - (2 i planck.reduce t) / m)) integral_(-infinity)^(+infinity) e^(-(a x^2) / (1 - (2 i planck.reduce t) / m)) diff^2 / (diff x^2) e^(-(a x^2) / (1 + (2 i planck.reduce t) / m)) dif x \
      &= - planck.reduce^2 sqrt((2 a) / pi) 1 / sqrt(1 + ((2 planck.reduce t) / m)^2 ) ((-2 a) / (1 + (2 i planck.reduce t) / m)) integral_(-infinity)^(+infinity) e^(-(a x^2) / (1 - (2 i planck.reduce t) / m)) diff / (diff x) x e^(-(a x^2) / (1 + (2 i planck.reduce t) / m)) dif x \
      &= planck.reduce^2 sqrt((2 a) / pi) 1 / sqrt(1 + ((2 planck.reduce t) / m)^2 ) ((2 a) / (1 + (2 i planck.reduce t) / m)) integral_(-infinity)^(+infinity) e^(-(a x^2) / (1 - (2 i planck.reduce t) / m)) (1 - (2 a x^2) / (1 + (2 i planck.reduce t) / m)) e^(-(a x^2) / (1 + (2 i planck.reduce t) / m)) dif x \
      &=  (2 planck.reduce^2 sqrt((2 a) / pi)a) / ((1 + (2 i planck.reduce t) / m)^2 sqrt(1 + ((2 planck.reduce t) / m)^2 )) integral_(-infinity)^(+infinity) e^(-(2 a x^2) / (1 + ((2 planck.reduce t) / m)^2)) (1 + (2 i planck.reduce t) / m - 2 a x^2) dif x \
      &= (2 planck.reduce^2 sqrt((2 a) / pi)a) / ((1 + (2 i planck.reduce t) / m)^2 sqrt(1 + ((2 planck.reduce t) / m)^2 )) [sqrt((pi (1 + ((2 planck.reduce t) / m)^2)) / (2 a))(1 + (2 i planck.reduce t) / m) - 2 a 1 / (4 omega^3) sqrt(pi / 2)] \
      &= (2 planck.reduce^2 sqrt((2 a) / pi)a) / ((1 + (2 i planck.reduce t) / m)^2 sqrt(1 + ((2 planck.reduce t) / m)^2 )) [sqrt((pi (1 + ((2 planck.reduce t) / m)^2)) / (2 a))(1 + (2 i planck.reduce t) / m) - 2 a ((1 + ((2 planck.reduce t) / m)^2)sqrt(1 + ((2 planck.reduce t) / m)^2)) / (4 a sqrt(a)) sqrt(pi / 2)] \
      &= (2 planck.reduce^2 sqrt((2 a) / pi)a) / ((1 + (2 i planck.reduce t) / m)^2 sqrt(1 + ((2 planck.reduce t) / m)^2 )) [sqrt(pi / 2) 1 / omega (1 + (2 i planck.reduce t) / m) - (1 + ((2 planck.reduce t) / m)^2) / (2 omega) sqrt(pi / 2)] \
      &= (2 planck.reduce^2 a sqrt(a) / omega) / (1 + (2 i planck.reduce t) / m sqrt(1 + ((2 planck.reduce t) / m)^2 )) - (planck.reduce^2 a sqrt(a) / omega (1 + ((2 planck.reduce t) / m)^2)) / ((1 + (2 i planck.reduce t) / m)^2 sqrt(1 + ((2 planck.reduce t) / m)^2 )) \
      &= (2 planck.reduce^2 a) / (1 + (2 i planck.reduce t) / m) - (planck.reduce^2 a (1 + ((2 planck.reduce t) / m)^2)) / (1 + (2 i planck.reduce t) / m)^2 \
      &= planck.reduce^2 a [(2(1 + ((2 i planck.reduce t) / m) ) - (1 + ((2 planck.reduce t) / m)^2)) / (1 + (2 i planck.reduce t) / m)^2] \
      &= planck.reduce^2 a [(1 - ((2 planck.reduce t) / m)^2 + (4 i planck.reduce t) / m) / (1 - ((2 planck.reduce t) / m)^2 + (4 i planck.reduce t) / m)] \
      &= planck.reduce^2 a.
    $
    $
      sigma_x &= sqrt(angle.l x^2 angle.r - angle.l x angle.r^2) \
      &= sqrt(1/(4 omega^2) - 0) \
      &= 1/(2 omega),
    $
    and
    $
      sigma_p &= sqrt(angle.l p^2 angle.r - angle.l p angle.r^2) \
      &= sqrt(planck.reduce^2 a - 0) \
      &= planck.reduce sqrt(a).
    $
  + $
      sigma_x sigma_p &= 1/(2 omega) planck.reduce sqrt(a) \
      &= planck.reduce / 2 sqrt(1 + ((2 planck.reduce t) / m)^2) gt.eq planck.reduce / 2.
    $
    The uncertainty principle holds, and the system comes closest to the uncertainty limit at $t = 0$.
]

#prob[
  Evaluate the following integrals:
  + $integral_(-1)^(+1) (x^3 - 3x^2 + 2x - 1) delta(x + 2) dif x$.
  + $integral_0^infinity [cos(3x) + 2] delta(x - pi) dif x$.
  + $integral_(-1)^(+1) exp(|x| + 3) delta(x - 2) dif x$.
]
#sol[
  + $
      integral_(-1)^(+1) (x^3 - 3x^2 + 2x - 1) delta(x + 2) dif x &= lr((x^3 - 3x^2 + 2x - 1)|)_(x = -2) \
      &= (-2)^3 - 3(-2)^2 + 2(-2) - 1 \
      &= -8 - 12 - 4 - 1 \
      &= -25.
    $
  + $
      integral_0^infinity [cos(3x) + 2] delta(x - pi) dif x &= lr([cos(3x) + 2]|)_(x = pi) \
      &= cos(3 pi) + 2 \
      &= -1 + 2 \
      &= 1.
    $
  + $
      integral_(-1)^(+1) exp(|x| + 3) delta(x - 2) dif x = 0
    $
]

#prob[
  Delta functions live under integral signs, and two expressions ($D_1(x)$ and $D_2(x)$) involving delta functions are said to be equal if
  $
    integral_(-infinity)^(+infinity) f(x) D_1(x) dif x = integral_(-infinity)^(+infinity) f(x) D_2(x) dif x,
  $
  for every (ordinary) function $f(x)$.
  + Show that
    $
      delta(c x) = 1/abs(c) delta(x),
    $
    where $c$ is a real constant. (Be sure to check the case where $c$ is negative.)
  + Let $theta(x)$ be the step function:
    $
      theta(x) ≡
      cases(
        1"," quad & x > 0,
        0"," & x < 0.
      )
    $
    (In the rare case where it actually matters, we define $theta(0)$ to be $1/2$.) Show that $(dif theta) / (dif x) = delta(x)$.
]
#sol[
  + Let $y = c x$, then $dif y = c dif x$, then
    $
      integral_(-infinity)^(+infinity) f(x) delta(c x) dif x &= cases(
        1 / c integral_(-infinity)^(+infinity) f(y / c) delta(y) dif y = 1/ c f(0) quad & c > 0 \
        1 / c integral_(+infinity)^(-infinity) f(y / c) delta(y) dif y = -1 / c integral_(-infinity)^(+infinity) f(y / c) delta(y) dif y = -1 / c f(0) quad & c < 0
      )\
      &= 1 / abs(c) f(0) \
      &= integral_(-infinity)^(+infinity) f(x) 1/abs(c) delta(x) dif x,
    $
    so $delta(c x) = 1/abs(c) delta(x)$.
  + $
      integral_(-infinity)^(+infinity) f(x) (dif theta)/(dif x) dif x &= f theta |_(-infinity)^(+infinity) - integral_(-infinity)^(+infinity) theta(x) (dif f)/(dif x) dif x \
      &= f(+infinity) - integral_0^(+infinity) (dif f)/(dif x) dif x \
      &= f(+infinity) - (f(infinity) - f(0)) \
      &= f(0) \
      &= integral_(-infinity)^(+infinity) f(x) delta(x) dif x,
    $
    so $(dif theta) / (dif x) = delta(x)$.
]

#prob[
  Check the uncertainty principle for the wave function in
  $
    psi(x) &= sqrt(m alpha) / (planck.reduce) e^(-(m alpha abs(x))/planck.reduce^2) \
    &= cases(
      sqrt(m alpha) / (planck.reduce) e^(-(m alpha x)/planck.reduce^2) quad & x gt.eq 0,
      sqrt(m alpha) / (planck.reduce) e^((m alpha x)/planck.reduce^2) quad & x lt.eq 0.
    )
  $
  _Hint: Calculating $angle.l p^2 angle.r$ can be tricky, because the derivative of $psi$ has a step discontinuity at $x = 0$. You may want to use the result in Problem 2.23(b). Partial answer: $angle.l p^2 angle.r = ((m alpha) / planck.reduce)^2$._
]
#sol[
  $
    angle.l x angle.r &= 0;
  $
  $
    angle.l p^2 angle.r &= m (dif angle.l x angle.r)/(dif t) \
    &= 0;
  $
  $
    angle.l x^2 angle.r &= integral_(-infinity)^(+infinity) x^2 abs(psi(x))^2 dif x \
    &= 2 (m alpha) / planck.reduce^2 integral_0^(+infinity) x^2 e^(-(2 m alpha x) / planck.reduce^2) dif x \
    &= (2 m alpha) / planck.reduce^2 planck.reduce^2 / (2 m alpha) integral_0^(+infinity) 2 x e^(- (2 m alpha x) / planck.reduce^2) dif x \
    &= 2 planck.reduce^2 / (2 m alpha) integral_0^(+infinity) e^(- (2 m alpha x) / planck.reduce^2) dif x \
    &= planck.reduce^2 / (m alpha) planck.reduce^2 / (2 m alpha) \
    &= planck.reduce^4 / (2 m^2 alpha^2)
  $
  $
    (dif psi) / (dif x) &= cases(
      sqrt(m alpha) / (planck.reduce) (-(m alpha) / planck.reduce^2) e^(-(m alpha x)/planck.reduce^2) quad & x gt.eq 0,
      sqrt(m alpha) / (planck.reduce) ((m alpha) / planck.reduce^2) e^((m alpha x)/planck.reduce^2) quad & x lt.eq 0.
    ) \
    &= (sqrt(m alpha) / (planck.reduce))^3 [-theta(x)e^(-(m alpha x)/planck.reduce^2) + theta(-x)e^((m alpha x)/planck.reduce^2)]
  $
  $
    (dif^2 psi) / (dif x^2) &= (sqrt(m alpha) / (planck.reduce))^3 [-delta(x) e^(-(m alpha x)/planck.reduce^2) + theta(x) (m alpha) / (planck.reduce^2) e^(-(m alpha x)/planck.reduce^2) - delta(-x) e^((m alpha x)/planck.reduce^2) + theta(-x) (m alpha) / (planck.reduce^2) e^((m alpha x)/planck.reduce^2)] \
    &= (sqrt(m alpha) / (planck.reduce))^3 [-delta(x) (e^(-(m alpha x)/planck.reduce^2) + e^((m alpha x)/planck.reduce^2)) + (m alpha) / (planck.reduce^2) (theta(x) + theta(-x)) e^(-(m alpha abs(x))/planck.reduce^2)] \
    &= (sqrt(m alpha) / (planck.reduce))^3 [-2 delta(x) + (m alpha) / (planck.reduce^2) e^(-(m alpha abs(x))/planck.reduce^2)] \
  $
  $
    angle.l p^2 angle.r &= integral_(-infinity)^(+infinity) psi^* (-i planck.reduce dif / (dif x))^2 psi dif x \
    &= - planck.reduce^2 integral_(-infinity)^(+infinity) psi^* (dif^2 psi)/(dif x^2) dif x \
    &= - planck.reduce^2 (sqrt(m alpha) / (planck.reduce))^4 integral_(-infinity)^(+infinity) e^(-(m alpha abs(x))/planck.reduce^2) [-2 delta(x) + (m alpha) / (planck.reduce^2) e^(-(m alpha abs(x))/planck.reduce^2)] dif x \
    &= - ((m alpha) / planck.reduce)^2 [-2 integral_(-infinity)^(+infinity) delta(x) e^(-(m alpha abs(x))/planck.reduce^2) dif x + 2(m alpha) / (planck.reduce^2) integral_0^(+infinity) e^(-(2 m alpha x)/planck.reduce^2) dif x] \
    &= - ((m alpha) / planck.reduce)^2 [-2 + (2 m alpha) / (planck.reduce^2) planck.reduce^2 / (2 m alpha)] \
    &= ((m alpha) / planck.reduce)^2.
  $
  $
    sigma_x &= sqrt(angle.l x^2 angle.r - angle.l x angle.r^2) \
    &= sqrt(planck.reduce^4 / (2 m^2 alpha^2) - 0) \
    &= planck.reduce^2 / (sqrt(2) m alpha);
  $
  $
    sigma_p &= sqrt(angle.l p^2 angle.r - angle.l p angle.r^2) \
    &= sqrt(((m alpha) / planck.reduce)^2 - 0) \
    &= (m alpha) / planck.reduce.
  $
  $
    sigma_x sigma_p &= planck.reduce^2 / (sqrt(2) m alpha) (m alpha) / planck.reduce \
    &= planck.reduce / sqrt(2) gt.eq planck.reduce / 2.
  $
]

#prob[
  Check that the bound state of the delta-function Well
  $
    psi_"bound" (x) = sqrt(m alpha) / (planck.reduce) e^(-(m alpha abs(x))/planck.reduce^2)
  $ is orthogonal to the scattering states
  $
  psi_"scattering" (x) = cases(
    A e^(i k x) + B e^(-i k x) quad x < 0 \
    F e^(i k x) + G e^(-i k x) quad x > 0
  )
  $
]
#sol[
  $
    angle.l psi_"bound" (x), psi_"scattering" (x) angle.r &= integral_(-infinity)^(+infinity) psi^*_"bound" (x) psi_"scattering" (x) dif x \
    &= sqrt(m alpha) / (planck.reduce) [integral_(-infinity)^0 e^((m alpha x) / planck.reduce^2) (A e^(i k x) + B e^(-i k x)) dif x + integral_0^(+infinity) e^(-(m alpha x) / planck.reduce^2) (F e^(i k x) + G e^(-i k x)) dif x] \
    &= sqrt(m alpha) / (planck.reduce) [A integral_(-infinity)^0 e^(((m alpha) / planck.reduce^2 + i k) x) dif x + B integral_(-infinity)^0 e^(((m alpha) / planck.reduce^2 - i k) x) dif x \
    &+ F integral_0^(+infinity) e^((-(m alpha) / planck.reduce^2 + i k) x) dif x + G integral_0^(+infinity) e^((-(m alpha) / planck.reduce^2 - i k) x) dif x] \
    &= sqrt(m alpha) / (planck.reduce) [A lr(e^(((m alpha) / planck.reduce^2 + i k) x) / ((m alpha) / planck.reduce^2 + i k) |)_(-infinity)^0 + B lr(e^(((m alpha) / planck.reduce^2 - i k) x) / ((m alpha) / planck.reduce^2 - i k) |)_(-infinity)^0 + F lr(e^((-(m alpha) / planck.reduce^2 + i k) x) / (-(m alpha) / planck.reduce^2 + i k) |)_0^(+infinity) + G lr(e^((-(m alpha) / planck.reduce^2 - i k) x) / (-(m alpha) / planck.reduce^2 - i k) |)_0^(+infinity)] \
    &= sqrt(m alpha) / (planck.reduce) [A / ((m alpha) / planck.reduce^2 + i k) + B / ((m alpha) / planck.reduce^2 - i k) - F / (-(m alpha) / planck.reduce^2 + i k) - G / (-(m alpha) / planck.reduce^2 - i k)] \
    &= sqrt(m alpha) / (planck.reduce) [(A + G) / ((m alpha) / planck.reduce^2 + i k) + (B + F) / ((m alpha) / planck.reduce^2 - i k)] \
    &= sqrt(m alpha) / (planck.reduce) [((A + G)((m alpha) / planck.reduce^2 - i k) + (B + F)((m alpha) / planck.reduce^2 + i k)) / (((m alpha) / planck.reduce^2)^2 + k^2)] \
    &= sqrt(m alpha) / (planck.reduce) [((A + B + F + G)((m alpha) / planck.reduce^2) + i k (B + F - A - G)) / (((m alpha) / planck.reduce^2)^2 + k^2)] \
    &= sqrt(m alpha) / (planck.reduce) [((A + B + A + B)((m alpha) / planck.reduce^2) + i k (B - A + A(1 + 2 i beta) - B(1 - 2 i beta))) / (((m alpha) / planck.reduce^2)^2 + k^2)] \
    &= sqrt(m alpha) / (planck.reduce) [(2 (A + B)(m alpha) / planck.reduce^2 - 2 k beta (A + B)) / (((m alpha) / planck.reduce^2)^2 + k^2)] \
    &= sqrt(m alpha) / (planck.reduce) [(2 (A + B)(m alpha) / planck.reduce^2 - 2 (m alpha) / planck.reduce^2 (A + B)) / (((m alpha) / planck.reduce^2)^2 + k^2)] \
    &= 0
  $
]

#prob[
  What is the Fourier transform of $delta(x)$? Using Plancherel's theorem, show that
  $
    delta(x) = 1/(2pi) integral_(-infinity)^(+infinity) e^(i k x) dif k.
  $
  _Comment:_ This formula gives any respectable mathematician apoplexy. Although the integral is clearly infinite when $x = 0$, it doesn't converge (to zero or anything else) when $x eq.not 0$, since the integrand oscillates forever. There are ways to patch it up (for instance, you can integrate from $-L$ to $+L$, and interpret Equation 2.147 to mean the average value of the finite integral, as $L -> infinity$). The source of the problem is that the delta function doesn't meet the requirement (square-integrability) for Plancherel's theorem (see footnote 42). In spite of this, Equation 2.147 can be extremely useful, if handled with care.
]
#sol[
  $
    Delta(k) &= 1/sqrt(2 pi) integral_(-infinity)^(+infinity) delta(x) e^(-i k x) dif x \
    &= 1/sqrt(2 pi)
  $
  $
    delta(x) &= 1/sqrt(2 pi) integral_(-infinity)^(+infinity) Delta(k) e^(i k x) dif k \
    &= 1/sqrt(2 pi) integral_(-infinity)^(+infinity) e^(i k x) dif k
  $
]

#prob[
  Consider the _double_ delta-function potential
  $
    V(x) = -alpha [delta(x + a) + delta(x - a)],
  $
  where $alpha$ and $a$ are positive constants.
  + Sketch this potential.
  + How many bound states does it possess? Find the allowed energies, for $alpha = planck.reduce^2/(m a)$ and for $alpha = planck.reduce^2/(4m a)$, and sketch the wave functions.
  + What are the bound state energies in the limiting cases (i) $a -> 0$ and (ii) $a -> infinity$ (holding $alpha$ fixed)? Explain why your answers are reasonable, by comparison with the single delta-function well.
]
#sol[
  + 
  + As $V$ is even, the solutions can be even or odd. \
    For even solutions,
    $
      psi(x) &= cases(
        A e^(kappa x) quad &x < -a \
        B (e^(kappa x) + e^(-kappa x)) quad &-a < x < a \
        A e^(-kappa x) quad &x > a
      )
    $
    Continuity of $psi$ at $x = plus.minus a$ gives
    $
      A e^(-kappa a) = B (e^(kappa a) + e^(-kappa a)),
    $
    or
    $
      A = B(1 + e^(2 kappa a)).
    $
    Continuity of $(dif psi) / (dif x)$ at $x = plus.minus a$ gives
    $
      lim_(epsilon arrow 0) (lr((dif psi)/(dif x) |)_(a-epsilon)^(a+epsilon)) &= -(2m alpha) / planck.reduce^2 psi(a) \
      - kappa A e^(-kappa a)  - B(kappa e^(kappa a) - kappa e^(-kappa a)) &= -(2m alpha) / planck.reduce^2 A e^(-kappa a) \
      ((2m alpha) / planck.reduce^2 - kappa) A e^(-kappa a) &= B(kappa e^(kappa a) - kappa e^(-kappa a)) \
      ((2m alpha) / planck.reduce^2 - kappa) B (e^(kappa a) + e^(-kappa a)) &= B(kappa e^(kappa a) - kappa e^(-kappa a)) \
      (2m alpha) / planck.reduce^2 (e^(kappa a) + e^(-kappa a)) &= 2 kappa e^(kappa a) \
      e^(-2 kappa a) &= (planck.reduce^2 kappa) / (m alpha) - 1,
    $
    which has only one solution;
    For odd solutions,
    $
      psi(x) &= cases(
        -A e^(kappa x) quad &x < -a \
        B (e^(kappa x) - e^(-kappa x)) quad &-a < x < a \
        A e^(-kappa x) quad &x > a
      )
    $
    Continuity of $psi$ at $x = plus.minus a$ gives
    $
      A e^(-kappa a) = B (e^(kappa a) - e^(-kappa a)),
    $
    or
    $
      A = B(e^(2 kappa a) - 1).
    $
    Continuity of $(dif psi) / (dif x)$ at $x = plus.minus a$ gives
    $
       lim_(epsilon arrow 0) (lr((dif psi)/(dif x) |)_(a-epsilon)^(a+epsilon)) &= -(2m alpha) / planck.reduce^2 psi(a) \
      - kappa A e^(-kappa a)  - B(kappa e^(kappa a) + kappa e^(-kappa a)) &= -(2m alpha) / planck.reduce^2 A e^(-kappa a) \
      ((2m alpha) / planck.reduce^2 - kappa) A e^(-kappa a) &= B kappa(e^(kappa a) + e^(-kappa a)) \
      ((2m alpha) / planck.reduce^2 - kappa) B (e^(kappa a) - e^(-kappa a)) &= B kappa(e^(kappa a) + e^(-kappa a)) \
      (2m alpha) / planck.reduce^2 (e^(kappa a) - e^(-kappa a)) &= 2 kappa e^(kappa a) \
      e^(-2 kappa a) &= 1 - (planck.reduce^2 kappa) / (m alpha),
    $
    which has one solution if $alpha gt planck.reduce^2/(2 m a)$, and no solutions if $alpha lt.eq planck.reduce^2/(2 m a)$. \
    In conclusion, there are two bound states if $alpha gt planck.reduce^2/(2 m a)$, and one bound state if $alpha lt.eq planck.reduce^2/(2 m a)$.
  + + When $a arrow 0$, there is only one (even) bound state, the equation says
      $ 
      (planck.reduce^2 kappa) / (m alpha) - 1 &= e^(-2 kappa a) approx 1 \
      kappa &= (2m alpha) / planck.reduce^2.
      $
      Then the energy is
      $
        E &= - (kappa^2 planck.reduce^2) / (2m) \
        &= - (2m alpha^2) / planck.reduce^2 \
        &= - (m (2 alpha)^2) / (2 planck.reduce^2),
      $
      which is just the energy of a single delta-function well with strength $2 alpha$.
    + When $a arrow infinity$, there are two bound states, the even one says
      $
      (planck.reduce^2 kappa) / (m alpha) - 1 &= e^(-2 kappa a) approx 0 \
      kappa &=  (m alpha) / planck.reduce^2.
      $
      Then the energy is
      $
        E &= - (kappa^2 planck.reduce^2) / (2m) \
        &= - (m alpha^2) / (2planck.reduce^2);
      $
      and the odd one says
      $
        1 - (planck.reduce^2 kappa) / (m alpha) &= e^(-2 kappa a) approx 0 \
        kappa &=  (m alpha) / planck.reduce^2.
      $
      Then the energy is
      $
        E &= - (kappa^2 planck.reduce^2) / (2m) \
        &= - (m alpha^2) / (2planck.reduce^2);
      $
]

#prob[
  Find the transmission coefficient, for the potential in Problem 2.27.
]
#sol[

]

#prob[
  Analyze the odd bound state wave functions for the finite square well. Derive the transcendental equation for the allowed energies, and solve it graphically. Examine the two limiting cases. Is there always an odd bound state?
]
#sol[
  The odd solution is
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
  deviding by, we have
  $
    kappa = -l cot(l a).
  $
  Similarly, we have
  $
    - cot z = sqrt((z_0 / z)^2 - 1).
  $
]

#prob[
  Normalize $psi(x)$ in
  $
    psi(x) = cases(
      F e^(-kappa x)"," quad &(x > a),
      D cos(l x)"," quad &(0 < x < a),
      psi(-x)"," quad &(x < 0)
    )
  $
  to determine the constants $D$ and $F$.
]
#sol[
  $
    1 &= integral_(-infinity)^(+infinity) abs(psi(x))^2 dif x \
    &= 2 integral_0^(+infinity) abs(psi(x))^2 dif x \
    &= 2 [D^2 integral_0^a cos^2(l x) dif x + F^2 integral_a^(+infinity) e^(-2 kappa x) dif x] \
    &= 2 [D^2 lr((x / 2 + 1 / (4 l) sin(2 l x))|)_0^a + F^2 lr((e^(-2 kappa x) / (-2 kappa) )|)_a^(+infinity)] \
    &= 2 [D^2 (a / 2 + 1 / (4 l) sin(2 l a)) + F^2 (1 / (2 kappa) e^(-2 kappa a))]
  $
  Since
  $
    F e^(-kappa a) = D cos(l a),
  $
  we have
  $
    1 &= 2 [D^2 (a / 2 + 1 / (4 l) sin(2 l a) + (cos^2(l a)) / (2 kappa))] \ 
    &= D^2 [a + (sin(l a) cos(l a)) / l + (cos^2(l a)) / (l tan(l a))] \
    &= D^2 [a + cos(l a) / (l sin(l a)) (sin^2(l a) + cos^2(l a))] \
    &= D^2 [a + 1 / (l tan(l a))] \
    &= D^2 [a + 1 / kappa].
  $
  Thus,
  $
    D &= 1 / sqrt(a + 1 / kappa) \
    F &= D cos(l a) e^(kappa a) \
    &= (cos(l a) e^(kappa a)) / sqrt(a + 1 / kappa) .
    
  $
  
]

#prob[
  The Dirac delta function can be thought of as the limiting case of a rectangle of area 1, as the height goes to infinity and the width goes to zero. Show that the delta-function well (Equation 2.117) is a "weak" potential (even though it is infinitely deep), in the sense that $z_0 arrow 0$. Determine the bound state energy for the delta-function potential, by treating it as the limit of a finite square well. Check that your answer is consistent with Equation 2.132. Also show that Equation 2.172 reduces to Equation 2.144 in the appropriate limit.
]
#sol[
  When holding the area $alpha = 2 V_0 a$ as constant when $a arrow 0$, we have
  $
    z_0 &= a / planck.reduce sqrt(2 m V_0) \
    &= a / planck.reduce sqrt(2 m alpha / (2 a)) \
    &= 1 / planck.reduce sqrt(m alpha a) arrow 0,
  $
  then
  $
    tan z tilde.equiv z &= sqrt((z_0 / z)^2 - 1) \
    z^2 &= sqrt(z_0^2 - z^2) \
    &= kappa a \
    &tilde.equiv z_0^2 = (m alpha a) / planck.reduce^2 .
  $
  So
  $
    kappa = (m alpha) / planck.reduce^2 &= sqrt(-2 m E) / planck.reduce \
    E &= - (m alpha^2) / (2 planck.reduce^2),
  $
  which is consistent with the bound state energy of the delta-function well.
  The transmission coefficient is
  $
    T^(-1) &= 1 + V_0^2 / (4 E (E + V_0)) sin^2((2 a) / planck.reduce sqrt(2m (E + V_0))) \
    &approx 1 + V_0^2 / (4 E V_0) sin^2((2 a) / planck.reduce sqrt(2m V_0)) \
    &= 1 + V_0 / (4 E) sin^2((2 a) / planck.reduce sqrt(2m alpha / (2 a))) \
    &= 1 + alpha / (8 a E) sin^2(2 / planck.reduce sqrt(m alpha a)) \
    &= 1 + alpha / (8 a E) (2 / planck.reduce sqrt(m alpha a))^2 \
    &= 1 + (m alpha^2) / (2 planck.reduce^2 E).
  $
  Then
  $
    T = 1 / (1 + (m alpha^2) / (2 planck.reduce^2 E)),
  $
  which is consistent with the transmission coefficient of the delta-function well.

]

#prob[
  Derive Equations 2.170 and 2.171. _Hint:_ Use Equations 2.168 and 2.169 to solve for $C$ and $D$ in terms of $F$:
  $
    C = [sin(l a) + i k/l cos(l a)] e^(i k a) F; quad D = [cos(l a) - i k/l sin(l a)] e^(i k a) F.
  $
  Plug these back into Equations 2.166 and 2.167. Obtain the transmission coefficient, and confirm Equation 2.172.
]

#prob[
  Determine the transmission coefficient for a rectangular barrier (same as Equation 2.148, only with $V(x) = +V_0 > 0$ in the region $-a < x < a$). Treat separately the three cases $E < V_0$, $E = V_0$, and $E > V_0$ (note that the wave function inside the barrier is different in the three cases). _Partial answer_: for $E < V_0$,
  $
    T^(-1) = 1 + (V_0^2)/(4E(V_0 - E)) sinh^2((2a)/planck.reduce sqrt(2m(V_0 - E))).
  $
]

#prob[
  Consider the "step" potential:
  $
    V(x) = cases(
      0 quad & x lt.eq 0,
      V_0 & x > 0.
    )
  $
  + Calculate the reflection coefficient, for the case $E < V_0$, and comment on the answer.
  + Calculate the reflection coefficient for the case $E > V_0$.
  + For a potential (such as this one) that does not go back to zero to the right of the barrier, the transmission coefficient is _not_ simply $abs(F)^2 / abs(A)^2$ (with $A$ the incident amplitude and $F$ the transmitted amplitude), because the transmitted wave travels at a different _speed_. Show that
    $
      T = sqrt((E - V_0)/E) abs(F)^2/abs(A)^2,
    $
    for $E > V_0$. _Hint:_ You can figure it out using Equation 2.99, or—more elegantly, but less informatively—from the probability current (Problem 2.18). What is $T$, for $E < V_0$?
  + For $E > V_0$, calculate the transmission coefficient for the step potential, and check that $T + R = 1$.
]

#prob[
  A particle of mass $m$ and kinetic energy $E gt 0$ approaches an abrupt potential drop $V_0$:
  $
    V(x) = cases(
      0 quad & x lt 0,
      -V_0 quad & x > 0.
    )
  $
  + What is the probability that it will "reflect" back, if $E = V_0/3$? _Hint:_ This is just like Problem 2.34, except that the step now goes _down_, instead of up.
  + I drew the figure so as to make you think of a car approaching a cliff, but obviously the probability of "bouncing back" from the edge of a cliff is _far_ smaller than what you got in (a)—unless you're Bugs Bunny. Explain why this potential does _not_ correctly represent a cliff. _Hint:_ In Figure 2.20 the potential energy of the car drops _discontinuously_ to $-V_0$, as it passes $x = 0$; would this be true for a falling car?
  + When a free neutron enters a nucleus, it experiences a sudden drop in potential energy, from $V = 0$ outside to around $-12$ MeV (million electron volts) inside. Suppose a neutron, emitted with kinetic energy 4 MeV by a fission event, strikes such a nucleus. What is the probability it will be absorbed, thereby initiating another fission? _Hint:_ You calculated the probability of _reflection_ in part (a); use $T = 1 - R$ to get the probability of transmission through the surface.
]
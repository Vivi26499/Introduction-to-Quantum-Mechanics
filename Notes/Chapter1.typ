#import "../Note.typ": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Introduction to Quantum Mechanics",
  contact-details: "Chapter 1",
  author: "Vivi",
  toc-title: "The Wave Function",
)

= The Schrödinger Equation
$
  i planck.reduce (diff Psi)/(diff t) = -planck.reduce^2/(2m) (diff^2 Psi)/(diff x^2) + V Psi
$

= The Statistical Interpretation

= Probability
$
  integral_(-oo)^oo rho(x) dif x &= 1
$
$
  angle.l x angle.r &= integral_(-oo)^oo x rho(x) dif x
$
$
  angle.l f(x) angle.r &= integral_(-oo)^oo f(x) rho(x) dif x
$
$
  sigma^2 &equiv angle.l (Delta x)^2 angle.r = angle.l x^2 angle.r - angle.l x angle.r^2
$

= Normalization
$
  (dif)/(dif t) integral_(-oo)^oo |Psi(x,t)|^2 dif x &= 
  integral_(-oo)^oo (diff)/(diff t) |Psi(x,t)|^2 dif x\
  &= integral_(-oo)^oo (diff)/(diff t) (Psi^*(x,t) Psi(x,t)) dif x\
  &= integral_(-oo)^oo (Psi^* (diff Psi)/(diff t) + (diff Psi^*)/(diff t) Psi) dif x\
  &= integral_(-oo)^oo (Psi^* ((i planck.reduce)/(2m) (diff^2 Psi)/(diff x^2) - (i)/(planck.reduce) V Psi) +
  (-(i planck.reduce)/(2m) (diff^2 Psi^*)/(diff x^2) + (i)/(planck.reduce) V Psi^*) Psi) dif x\
  &= (i planck.reduce)/(2m) integral_(-oo)^oo (Psi^* (diff^2 Psi)/(diff x^2) - (diff^2 Psi^*)/(diff x^2) Psi) dif x\
  &= (i planck.reduce)/(2m) (Psi^* (diff Psi)/(diff x) - (diff Psi^*)/(diff x) Psi)|_(-oo)^oo\
  &= 0,
$
as $Psi$ vanishes at $plus.minus oo$.\
So if $Psi$ is normalized at $t=0$, that is
$
  integral_(-oo)^oo |Psi(x,0)|^2 dif x = 1,
$
then it will remain normalized for all time, that is
$
  integral_(-oo)^oo |Psi(x,t)|^2 dif x = 1.
$

= Momentum
For a particle in state $Psi$, the expectation value of $x$ is
$
  angle.l x angle.r &= integral_(-oo)^oo x |Psi(x,t)|^2 dif x\
  &= integral_(-oo)^oo Psi^* [x] Psi dif x.
$
The expectation value of momentum is
$
  angle.l p angle.r &= m angle.l v angle.r\
  &= m (dif angle.l x angle.r)/(dif t)\
  &= m integral_(-oo)^oo x (diff)/(diff t) |Psi(x,t)|^2 dif x\
  &= (i planck.reduce)/2 integral_(-oo)^oo x (diff)/(diff x) (Psi^* (diff Psi)/(diff x) - (diff Psi^*)/(diff x) Psi) dif x\
  &= (i planck.reduce)/2 [x (Psi^* (diff Psi)/(diff x) - (diff Psi^*)/(diff x) Psi)|_(-oo)^oo -
  integral_(-oo)^oo (Psi^* (diff Psi)/(diff x) - (diff Psi^*)/(diff x) Psi) dif x]\
  &= -(i planck.reduce)/2 integral_(-oo)^oo (Psi^* (diff Psi)/(diff x) - (diff Psi^*)/(diff x) Psi) dif x\
  &= -(i planck.reduce)/2 {integral_(-oo)^oo Psi^* (diff Psi)/(diff x) dif x - [Psi^* Psi|_(-oo)^oo - integral_(-oo)^oo Psi^* (diff Psi)/(diff x) dif x]}\
  &= -i planck.reduce integral_(-oo)^oo Psi^* (diff Psi)/(diff x) dif x\
  &= integral_(-oo)^oo Psi^* [-i planck.reduce (diff)/(diff x)] Psi dif x.
$
For any quantity $Q = Q(x,p)$, the expectation value of $Q$ is
$
  angle.l Q angle.r = integral_(-oo)^oo Psi^* Q[x, -i planck.reduce (diff)/(diff x)] Psi dif x.
$
Zum Beispiel, the expectation value of the kinetic energy $T = p^2/(2m)$ is
$
  angle.l T angle.r &= integral_(-oo)^oo Psi^* p^2/(2m) Psi dif x\
  &= integral_(-oo)^oo Psi^* 1/(2m) (-i planck.reduce (diff)/(diff x))^2 Psi dif x\
  &= -planck.reduce^2/(2m) integral_(-oo)^oo Psi^* (diff^2 Psi)/(diff x^2) dif x.
$

= The Uncertainty Principle
The de Brogile formula is
$
  p = h/lambda = (2 pi planck.reduce)/lambda.
$
The Heisenberg's uncertainty principle is
$
  sigma_x sigma_p >= planck.reduce/2.
$

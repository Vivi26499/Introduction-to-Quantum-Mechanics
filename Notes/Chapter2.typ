#import "../Note.typ": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Introduction to Quantum Mechanics",
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
There are three important properties of the soluions to the time-independent Schrödinger equation:
+ They are stationary states. Although the wave function itself,
$
  Psi(x,t) = psi(x) e^(-(i E t) / planck.reduce),
$
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
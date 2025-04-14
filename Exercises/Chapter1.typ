#import "../Assignment.typ": *
#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Introduction to Quantum Mechanics",
  author: "Vivi",
  chapter: 1,
)

#prob[
  For the distribution of ages in the example in Section 1.3.1:
  + Compute $angle.l j^2 angle.r$ and $angle.l j angle.r^2$
  + Determine $Delta j$ for each $j$, and use Equation 1.11 to compute the standard deviation
  + Use your results in (a) and (b) to check Equation 1.12
]

#prob[
  + Find the standard deviation of the distribution in Example 1.2
  + What is the probability that a photograph, selected at random, would show a distance $x$ more than one standard deviation away from the average?
]

#prob[
  Consider the gaussian distribution
  $ 
    rho(x) = A e^(-lambda (x - a)^2) 
  $
  where $A$, $a$, and $lambda$ are positive real constants. (The necessary integrals are inside the back cover.)
  + Use Equation 1.16 to determine $A$
  + Find $angle.l x angle.r$, $angle.l x^2 angle.r$, and $sigma$
  + Sketch the graph of $rho(x)$
]

#prob[
  At time $t = 0$, a particle is presented by the wave function
  $ 
    Psi (x, 0) = cases(
    A x/a quad & 0 <= x <= a, 
    A (b - x)/(b - a) quad & a <= x <= b, 
    0 quad & "otherwise"
    ) 
  $
  where $A$, $a$, and $b$ are positive constants.
  + Normalize $Psi$ (that is, find A, in terms of $a$ and $b$)
  + Sketch $Psi (x, 0)$, as a function of $x$
  + Where is the particle most likely to be found at $t = 0$?
  + What is the probability of finding the particle to the left of $a$? Check your result in the limiting cases $b = a$ and $b = 2a$
  + What is the expectation value of $x$
]

#sol[
  + We begin with the normalization condition:
  $ 
    1 &= integral_(-infinity)^infinity abs(Psi(x,0))^2 dif x \
    &= integral_0^a abs(A x/a)^2 dif x + integral_a^b abs(A (b-x)/(b-a))^2 dif x \
    &= A^2/a^2 integral_0^a x^2 dif x + A^2/(b-a)^2 integral_a^b (b-x)^2 dif x \
    &= A^2 (a/3 + (b-a)/3) \
    &= A^2 b/3 
  $
    Therefore, $A = sqrt(3/b)$

  + We skip the sketch as requested

  + The particle is most likely to be found at $x = a$

  + The probability of finding the particle to the left of $a$ is:
  $ 
    P &= integral_(-infinity)^a abs(Psi(x,0))^2 dif x \
    &= integral_0^a abs(A x/a)^2 dif x \
    &= A^2/a^2 integral_0^a x^2 dif x \
    &= A^2 a/3 \
    &= 3/b a/3 \
    &= a/b 
  $
    When $b = a$, $P = 1$
    When $b = 2a$, $P = 1/2$

  + The expectation value of $x$ is:
  $ 
    angle.l x angle.r &= integral_(-infinity)^infinity x abs(Psi(x,0))^2 dif x \
    &= integral_0^a x abs(A x/a)^2 dif x + integral_a^b x abs(A (b-x)/(b-a))^2 dif x \
    &= A^2/a^2 integral_0^a x^3 dif x + A^2/(b-a)^2 integral_a^b x(b-x)^2 dif x \
    &= A^2 (b(b^3 - 3a^2b + 2a^3))/(12(b-a)^2) \
    &= 3/b b(2a + b)/12 \
    &= (2a + b)/4 
  $
]

#prob[
  Consider the wave function
  $ 
    Psi (x, t) = A e^(-lambda |x|) e^(-i omega t), 
  $
  where $A$, $lambda$, and $omega$ are positive real constants. (We'll see in Chapter 2 for what potential $(V)$ this wave function satisfies the Schrödinger equation.)
  + Normalize $Psi$.
  + Determine the expectation values of $x$ and $x^2$.
  + Find the standard deviation of $x$. Sketch the graph of $|Psi|^2$, as a function of $x$, and mark the points $angle.l x angle.r + sigma$ and $angle.l x angle.r - sigma$, to illustrate the sense in which $sigma$ represents the "spread" in $x$. What is the probability that the particle would be found outside this range?
]

#sol[
  + We begin with the normalization condition:
    $ 
      1 &= integral_(-infinity)^infinity abs(Psi (x, t))^2 dif x\
      &= integral_(-infinity)^infinity abs(A e^(-lambda abs(x)) e^(-i omega t))^2 dif x\
      &= A^2 integral_(-infinity)^infinity e^(-2 lambda abs(x)) dif x\
      &= 2 A^2 integral_(0)^infinity e^(-2 lambda x) dif x\
      &= 2 A^2 (1)/(2 lambda)\
      &= (A^2)/(lambda).
    $
    Thus, we have $A = sqrt(lambda)$.
  
  + The expectation value of $x$ is
    $ 
      angle.l x angle.r &= integral_(-infinity)^infinity x abs(Psi (x, t))^2 dif x\
      &= integral_(-infinity)^infinity x abs(A e^(-lambda abs(x)) e^(-i omega t))^2 dif x\
      &= A^2 integral_(-infinity)^infinity x e^(-2 lambda abs(x)) dif x\
      &= 0.
    $
    The expectation value of $x^2$ is
    $ 
      angle.l x^2 angle.r &= integral_(-infinity)^infinity x^2 abs(Psi (x, t))^2 dif x\
      &= integral_(-infinity)^infinity x^2 abs(A e^(-lambda abs(x)) e^(-i omega t))^2 dif x\
      &= A^2 integral_(-infinity)^infinity x^2 e^(-2 lambda abs(x)) dif x\
      &= 2 A^2 integral_(0)^infinity x^2 e^(-2 lambda x) dif x\
      &= 2 A^2 (1)/(4 lambda^3)\
      &= (1)/(2 lambda^2).
    $
  
  + The standard deviation of $x$ is
    $ 
      sigma &= sqrt(angle.l x^2 angle.r - angle.l x angle.r^2)\
      &= sqrt((1)/(2 lambda^2))\
      &= (1)/(sqrt(2) lambda).
    $
    
    We skip the sketch as requested.
    
    The probability that the particle would be found outside the range $[-sigma, sigma]$ is
    $ 
      P &= integral_(-infinity)^(-sigma) abs(Psi (x, t))^2 dif x + integral_(sigma)^infinity abs(Psi (x, t))^2 dif x\
      &= 2 integral_(sigma)^infinity abs(Psi (x, t))^2 dif x\
      &= 2 A^2 integral_(sigma)^infinity e^(-2 lambda x) dif x\
      &= 2 A^2 (1)/(2 lambda) e^(-2 lambda sigma)\
      &= e^(-2 lambda sigma)\
      &= e^(-sqrt(2))\
      &approx 0.2431.
    $
]

#prob[
  Why can't you do integration-by-parts directly on the middle expression in Equation 1.29—pull the time derivative over onto $x$, note that $(diff x) / (diff t) = 0$, and conclude that $(dif angle.l x angle.r) / (dif t) = 0$?
]

#sol[
  $ 
    diff/(diff t) x abs(Psi)^2 &= x diff/(diff t) abs(Psi)^2 + abs(Psi)^2 diff x/(diff t) \
    &= x diff/(diff t) abs(Psi)^2 
  $
]

#prob[
  Calculate $(dif angle.l p angle.r) / (dif t)$. Answer:
  $ 
    (dif angle.l p angle.r)/(dif t) = lr(angle.l - (diff V)/(diff x) angle.r). 
  $
  This is an instance of _Ehrenfest's theorem_, which asserts that expectation values obey the classical laws.
]

#sol[
  $ 
    (dif angle.l p angle.r)/(dif t) &= -i planck.reduce diff/(diff t) integral_(-infinity)^infinity Psi^* diff Psi/(diff x) dif x \
    &= -i planck.reduce integral_(-infinity)^infinity ((diff Psi^*)/(diff t) (diff Psi)/(diff x) + Psi^* diff/(diff x) (diff Psi)/(diff t)) dif x \
    &= -i planck.reduce integral_(-infinity)^infinity [((-i planck.reduce)/(2m) (diff^2 Psi^*)/(diff x^2) + (i)/(planck.reduce)V Psi^*) (diff Psi)/(diff x) + Psi^* diff/(diff x) ((i planck.reduce)/(2m) (diff^2 Psi)/(diff x^2) - (i)/(planck.reduce)V Psi)] dif x \
    &= planck.reduce^2/(2m) integral_(-infinity)^infinity (Psi^* (diff^3 Psi)/(diff x^3) - (diff^2 Psi^*)/(diff x^2) (diff Psi)/(diff x)) dif x + 
    integral_(-infinity)^infinity [V Psi^* (diff Psi)/(diff x) - Psi^* diff/(diff x) (V Psi)] dif x \
    &= planck.reduce^2/(2m) [lr((Psi^* (diff^2 Psi)/(diff x^2)) |)_(-infinity)^infinity - integral_(-infinity)^infinity (diff Psi^*)/(diff x) (diff^2 Psi)/(diff x^2) dif x - lr(((diff Psi^*)/(diff x) (diff Psi)/(diff x)) |)_(-infinity)^infinity + integral_(-infinity)^infinity (diff Psi^*)/(diff x) (diff^2 Psi)/(diff x^2) dif x] \
    &+ integral_(-infinity)^infinity [V Psi^* (diff Psi)/(diff x) - Psi^* V (diff Psi)/(diff x) - Psi^* (diff V)/(diff x) Psi] dif x \
    &= integral_(-infinity)^infinity - Psi^* [(diff V)/(diff x)] Psi dif x \
    &= lr(angle.l - (diff V)/(diff x) angle.r). 
  $
]

#prob[
  Suppose you add a constant $V_0$ to the potential energy (by "constant" I mean independent of $x$ as well as $t$). In classical mechanics this doesn't change anything, but what about _quantum mechanics_? Show that the wave function picks up a time-dependent phase factor: $exp(-i (V_0 t) / planck.reduce)$. What effect does this have on the expectation value of a dynamical variable?
]

#sol[
  Suppose the wave function $Psi$ satisfies the Schrödinger equation without the constant $V_0$:
  $ 
    i planck.reduce diff Psi/(diff t) = -planck.reduce^2/(2m) (diff^2 Psi)/(diff x^2) + V Psi. 
  $
  Then, for the wave function $Psi' = Psi e^(-i (V_0 t) / planck.reduce)$, we have
  $ 
    i planck.reduce diff Psi'/(diff t) &= i planck.reduce diff/(diff t) (Psi e^(-i (V_0 t) / planck.reduce)) \
    &= i planck.reduce ((diff Psi)/(diff t) e^(-i (V_0 t) / planck.reduce) - (i V_0)/(planck.reduce) Psi e^(-i (V_0 t) / planck.reduce)) \
    &= (-planck.reduce^2/(2m) (diff^2 Psi)/(diff x^2) + V Psi) e^(-i (V_0 t) / planck.reduce) + V_0 Psi e^(-i (V_0 t) / planck.reduce) \
    &= -planck.reduce^2/(2m) (diff^2 Psi')/(diff x^2) + (V + V_0) Psi', 
  $
  which is the Schrödinger equation with the constant $V_0$. 
  Thus, the wave function $Psi$ picks up a time-dependent phase factor $exp(-i (V_0 t) / planck.reduce)$.
  The expectation value of a dynamical variable is not affected by the phase factor, since the $x$-independent phase factor is canceled out when taking the expectation value.
  
]
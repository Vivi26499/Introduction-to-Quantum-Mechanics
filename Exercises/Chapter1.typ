#import "../Assignment.typ": *
#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Introduction to Quantum Mechanics",
  author: "Vivi",
  chapter: 1,
)
= Smooth Functions on a Euclidean Space

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
  $ rho(x) = A e^(-lambda (x - a)^2) $
  where $A$, $a$, and $lambda$ are positive real constants. (The necessary integrals are inside the back cover.)
  + Use Equation 1.16 to determine $A$
  + Find $angle.l x angle.r$, $angle.l x^2 angle.r$, and $sigma$
  + Sketch the graph of $rho(x)$
]

#prob[
  At time $t = 0$, a particle is presented by the wave function
  $ Psi (x, 0) = cases(
    A (x/a), & 0 <= x <= a,
    A (b - x)/(b - a), & a <= x <= b,
    0, & "otherwise"
  ) $
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
  1 &= integral_(-oo)^oo |Psi(x,0)|^2 dif x \
    &= integral_0^a |A(x/a)|^2 dif x + integral_a^b |A(b-x)/(b-a)|^2 dif x \
    &= (A^2/a^2) integral_0^a x^2 dif x + (A^2/(b-a)^2) integral_a^b (b-x)^2 dif x \
    &= A^2 (a/3 + (b-a)/3) \
    &= A^2 b/3 
  $
    Therefore, $A = sqrt(3/b)$

  + We skip the sketch as requested

  + The particle is most likely to be found at $x = a$

  + The probability of finding the particle to the left of $a$ is:
  $ 
  P &= integral_(-oo)^a |Psi(x,0)|^2 dif x \
    &= integral_0^a |A(x/a)|^2 dif x \
    &= (A^2/a^2) integral_0^a x^2 dif x \
    &= A^2 a/3 \
    &= (3/b)(a/3) \
    &= a/b 
  $
    When $b = a$, $P = 1$
    When $b = 2a$, $P = 1/2$

  + The expectation value of $x$ is:
  $ 
  angle.l x angle.r &= integral_(-oo)^oo x |Psi(x,0)|^2 dif x \
    &= integral_0^a x |A(x/a)|^2 dif x + integral_a^b x |A(b-x)/(b-a)|^2 dif x \
    &= (A^2/a^2) integral_0^a x^3 dif x + (A^2/(b-a)^2) integral_a^b x(b-x)^2 dif x \
    &= A^2 (b(b^3 - 3a^2b + 2a^3))/(12(b-a)^2) \
    &= (3/b)(b(2a + b)/12) \
    &= (2a + b)/4 
  $
]
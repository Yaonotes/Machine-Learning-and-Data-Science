# Probability Theory

## Probability Space

The probability space consists of sample space $S$ and a probability function $p:P(S)\to[0,1]$ assigning a probability to every event.

It satisfies the axioms of probability:

* $P(\empty)=0$ and $P(S)=1$.
* Nonnegativity: $(P(A)\geq 0)$. (Any event cannot have negative probability)
* Normalization: $(P(\Omega)=1)$. (The sum of the probability of all events equals to 1)
* Finite Additivity: If $A\cap B=\emptyset$ (These two events disjoint to each other), then $P(A\cup B)=P(A)+P(B)$. 
* Countable Additivity Axiom: If $A_1, A_2, \cdots$ is an infinite sequence of disjoint events, then $P(A_1\cup A_2\cup\cdots)=P(A_1)+P(A_2)+\cdots$. (Probability of disjoint events equals to the sum of their probabilities)

With these axioms, we can infer the following properties:

**Properties**: 
* $P(A)\leq 1$.
* $P(\emptyset)=0$.
* $P(A)+P(A^c)=1$.
* For $k$ disjoint events, $P(\{s_1, s_2,\cdots,s_k\})=P(s_1)+\cdots+P(s_k)$.
* If $A\subset B$, then $P(A)\leq P(B)$.
* $P(A\cup B)=P(A)+P(B)-P(A\cap B)$.
* $P(A\cup B)\leq P(A)+P(B)$. This property is called the *Union Bound*.
* $P(A\cup B\cup C)=P(A)+P(A^c\cap B)+P(A^c\cap B^c\cap C)$.

## Conditional Probability

Given events $A,B$ with $P(B)>0$, then the conditional probability of $A$ given $B$ is 
$$
P(A|B)=\frac{P(A\cap B)}{P(B)}
$$
which indicates that $P(A\cap B)=P(A|B)P(B)=P(B|A)P(A)$.

**<u>Total Probability Law</u>**

Given partition $A_1,\cdots,A_n$ of $S$ with $P(A_i)>0$, then
$$
P(B)=\sum_{i=1}^nP(B|A_i)P(A_i)
$$
**<u>Bayes' Rule</u>**

We have 
$$
P(A|B)=\frac{P(B|A)P(A)}{P(B)}
$$
in which we call $P(A|B)$ posterior, $P(B|A)$ the likelihood and $P(A)$ the prior.

## Random Variable

A random variable is understood as a measureable function defined on the sample space that maps from the sample space to some numeric domain (usually $\mathbb{R}$). We use $P(X=x)$ to denote the probability of event $\{s\in S: X(s)=x\}$. We write $X\sim P(x)$ to specify probability distribution of $X$.

**<u>Discrete Random Variables</u>**

* A random variable is discrete if there are countably many $a_1,a_2,\cdots$ such that $\sum_{aj}P(X=a_j)=1$.

* The probability mass function (PMF) $P_X$ giving distribution of $X$ as $P_X(x)=P(X=x)$.
* The cumulative distribution function (CDF) $\Phi(x)$ maps $x$ to $P(X\leq x)$.

**<u>Continuous Random Variables</u>**

* For continuous random variables, the probability density function (PDF) $P(x)$ is the derivative of CDF giving distribution of $X$. We have:
  $$
  \int_{-\infty}^{\infty}P(x)dx=1
  $$
  and 
  $$
  P(a\leq X\leq b)=\int_{a}^{b}p(x)dx
  $$
  

## Joint Probability Distributions

* The joint probability distribution is a natural generalisation to vectors of random variables giving joint probability distributions. For example, $P(X=x,Y=y)$.

* The marginal probability distribution is defined as: given $P(X,Y)$, obtain $P(X)$ via:

  * For discrete r.v. $P(X=x)=\sum_{y}P(X=x,Y=y)$.
  * For continuous r.v. $P(X=x)=\int P(x,y)dy$.

* The conditional probabilities: assume that $P(X=x)>0$, then
  $$
  P(Y=y|X=x)=\frac{P(Y=y,X=x)}{P(X=x)}
  $$

* Chain rule of conditional probability:
  $$
  P(X_1,\cdots,X_n)=P(X_1)\cdot \prod_{i=2}^{n}P(X_{i}|X_1,\cdots,X_{i-1})
  $$
  

## Expectation and Variance

### Expectation

* The expectation for discrete random variables is defined as $\mathbb{E}[X]=\sum_{x\in\text{dom}(X)}x\cdot P(x)$.
* The expectation for continuous random variables is defined as $\mathbb{E}(X)=\int x\cdot P(x)dx$.
* Properties:
  * Linearity: $\mathbb{E}(\alpha X+\beta Y)=\alpha\mathbb{E}(X)+\beta\mathbb{E}(Y)$.

### Variance

Variance captures how much values of probability distribution vary on average if randomly drawn. Formally, we have
$$
\text{Var}(X)=\mathbb{E}[X-\mathbb{E}(X)^2]=\mathbb{E}[X^2]-\mathbb{E}[X]^2
$$
Some properties of variance includes:

* $\text{Var}(\alpha X+\beta)=\alpha^2\text{Var}(X)$.

* If $X$ and $Y$ are independent, then $\text{Var}(X+Y)=\text{Var}(X)+\text{Var}(Y)$.

  

### Standard Deviation

Standard deviation is the square root of the variance, i.e. $SD(X)=\sqrt{Var(X)}$ 

###  Covariance

Covariance generalises variance to two random variables, the definition is:
$$
\text{Cov}(X,Y)=\mathbb{E}[(X-\mathbb{E}(X))(Y-\mathbb{E}(Y))]=\mathbb{E}[XY]-\mathbb{E}[X]\mathbb{E}[Y]
$$
Covariance matrix generalises covariance to multiple random variables, the definition is:
$$
\sum_{ij}=\text{Cov}(X_i,X_j)
$$

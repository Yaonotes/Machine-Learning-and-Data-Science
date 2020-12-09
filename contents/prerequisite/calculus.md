# Calculus 

## Finding Minimisation

Let a function $f:\mathbb{R}^d\to\mathbb{R}$, then there are two extrema defined:

* Local minimum: $x$ is local minimum for $f$ if $f(x)\leq f(y)$ for all $y$ in some neighbourhood of $x$.
* Global minimum: $x$ is global minimum for $f$ if $f(x)\leq f(y)$ for all $y$.

In order to find the extrema, the general approach is by first and second order derivative tests.

Finding the maximum is the same as minimising $-f$, hence it is enough to focus on minimisation.

### Functions of one variable $f:\mathbb{R}\to\mathbb{R}$

**<u>Continuous and Differentiable Functions</u>**

* $f$ is differentiable at $x_0$ if $f'(x_0)=\frac{d}{dx}f(x_0)=\lim_{h\to0}\frac{f(x_0+h)-f(x_0)}{h}$ exists.
* Differentiation rules:
  * $\frac{d}{dx}x^n=nx^{n-1}$.
  * $\frac{d}{dx}a^x=a^xln(a)$.
  * $\frac{d}{dx}log_a(x)=\frac{1}{xln(a)}$.
  * $(f+g)'=f'+g'$.
  * $(f\cdot g)'=f'\cdot g+f\cdot g'$.
* Chain rule:
  * if $f=h(g)$, then $f'=h'(g)\cdot g'$.

**<u>First Derivative Test</u>**

$f'(x^\star)=0$ means that $x^\star$ is a critical or stationary point for $f$. It can be a local minimum, a local maximum or a saddle (minmax) point. 

**<u>Second Derivative Test</u>**

* $f'(x^\star)=0$ and $f''(x^\star)>0$ means that $f$ has local minimum at $x^\star$.
* $f'(x^\star)=0$ and $f''(x^\star)<0$ means that $f$ has local maximum at $x^\star$.
* $f'(x^\star)=f''(x^\star)=0$ and $f'''(x^\star)\neq0$ means that $f$ has a saddle point at $x^\star$.
* Otherwise, higher order derivative tests are necessary.

### Functions of multiple variable to a scalar $f:\mathbb{R}^m\to\mathbb{R}$

**<u>Partial Derivative and Gradient</u>**

Partial derivative of $f(x_1,\cdots,x_m)$ in direction $x_i$ at $a=(a_1,\cdots,a_m)$:
$$
\frac{\partial}{\partial x_i}f(a)=\lim_{h\to0}\frac{f(a_1,\cdots,a_i+h,\cdots,a_m)-f(a_1,\cdots,a_i,\cdots,a_m)}{h}
$$
Assume that $f$ is differentiable everywhere, then the gradient is defined as:
$$
\nabla_xf=[\frac{\partial f}{\partial x_1},\cdots,\frac{\partial f}{\partial x_m}]^T
$$
This means that $[\nabla_xf]_i=\frac{\partial f}{\partial x_i}$, and we know $\nabla_xf$ points in direction of the steepest ascent. Hence, $-\nabla_xf$ points in direction of steepest descent.

$x^\star$ is a critical point if $\nabla_xf(x^\star)=0$. 

**<u>Hessian Matrix</u>**

The Hessian $\nabla_x^2f$ is a matrix of second-order partial derivatives.
$$
\nabla_x^2f=\begin{bmatrix}
\frac{\partial^2f}{\partial x_1^2} & \cdots & \frac{\partial^2f}{\partial x_1\partial x_m}\\
\vdots & & \vdots \\
\frac{\partial^2f}{\partial x_m\partial x_1} & \cdots & \frac{\partial^2f}{\partial x_m^2}
\end{bmatrix}
$$
which means $[\nabla_x^2f]_{ij}=\frac{\partial^2f}{\partial x_i\partial x_j}$.

If the partial derivatives are continuous, the order of differentiation does not matter, the Hessian matrix is always symmetric.

### Functions of multiple variable to a vector $f:\mathbb{R}^m\to\mathbb{R}^n$

$f$ given as $f=(f_1,\cdots,f_n)$ with $f_i:\mathbb{R}^m\to\mathbb{R}$, then the *Jacobian* $J$ of $f$ is an $n\times m$ matrix:
$$
J_f=\begin{bmatrix}
\frac{\partial f_1}{\partial x_1} & \cdots & \frac{\partial f_1}{\partial x_m} \\
\vdots & & \vdots \\
\frac{\partial f_n}{\partial x_1} & \cdots & \frac{f_n}{x_m}
\end{bmatrix}
$$
 which means $[J_f]_{i,j}=\frac{\partial f_i}{\partial x_j}$.

## Useful Differentiation Rules

* $\nabla_x(c^Tx)=c$
* $\nabla_x(x^Tx)=2x$
* $\nabla_x(Ax)=A^T$
* $\nabla_x(x^TAx)=Ax+A^Tx$
* $\nabla_x(f+g)=\nabla_xf+\nabla_xg$
* $\nabla_x(f\cdot g)=f\nabla_xg+g\nabla_xf$

## Chain Rule in Higher Dimensions

Let $y=g(x)$ and $z=f(y)$ for $x\in\mathbb{R}^m$ and $y\in\mathbb{R}^n$, then
$$
\frac{\partial z}{\partial x_i}=\sum_{j\in[n]}\frac{\partial z}{\partial y_j}\frac{\partial y_j}{\partial x_i}
$$
and $\nabla_xz=J_g\nabla_yz=\frac{\partial y}{\partial x}\nabla_yz$.

## Optimization with conditions: Lagrange Multipliers

The constrained optimization problem: we want to maximize $f(x)$ subject to $g_i(x)=0$ for all $i\in[n]$.

* The optimal points of $f$ lie tangential to the $g_i$.
* For $n=1$, optimum should fulfil $\nabla_xf=\lambda\nabla_xg$.
* Optimum of the original optimization problem will be critical points of the Lagrangian: $\wedge(x,\lambda):=f(x)-\lambda\cdot g(x)$.
* This can be generalised to any $n>0$ and inequality constraints.
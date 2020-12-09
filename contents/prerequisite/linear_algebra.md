# Linear Algebra

## Scalar, Vectors, Matrix and Tensor

* A scalar is a single number $s \in \mathbb{R}$. It can be regarded as a vector with the unit length or dimension.
* A vector is an array of numbers $v \in \mathbb{R}^d $. The $d$ is called dimension or length. A vector can be regarded as a $m\times 1$ matrix.
* A matrix is a two-dimensional array $M \in\mathbb{R}^{m\times n}$. A matrix can be regarded as a special tensor.
* A tensor is an $n$-dimensional array $T \in\mathbb{R}^{m_1\times m_2\times\cdots }$. Tensor is the most generic way to denote data.

## Operations

### Products

We can define **inner product**, or known as **dot product** on vectors.

### Norms

### Determinant

* $\text{det}(A^T)=\text{det}(A)$.
* $\text{det}(AB)=\text{det}(A)\text{det}(B)$.

### Inversion

A matrix $A\in\mathbb{R}^{n\times n}$ is called invertible if there is $A^{-1}\in\mathbb{R}^{n\times n}$ such that $AA^{-1}=A^{-1}A=I$.
* $A$ is invertible if and only if rows of $A$ are linearly independent.
* $A$ is invertible if and only if $\text{det}(A)=|A|\neq 0$.
* If $A$ is invertible, then $Ax=b$ has solution $x=A^{-1}b$.  

## Properties of Matrix

* **Symmetric Matrix**: A matrix is called symmetric if $A=A^T$.
* **Diagonal Matrix**: A matrix is called diagonal if $A_{i,j}=0, i\neq j$.
* **Identity Matrix**: The identity matrix $I_n$ is the $n\times n$ diagonal matrix where $I_{i,i}=1$.
* **Unitary Matrix**: A complex matrix is called unitary if $ UU^* =I $ where $ U^* $ is the conjugate transpose of $ U $.

## More concepts

* A set of vectors $v_1,\cdots, v_n$ is said to be **linearly independent** if $\sum a_iv_i=0 \iff a_i=0$. In another word, $\nexists a_i\in\mathbb{R}-\{0 \} $ such that $\sum a_iv_i=0 $.

* The span of $v_1,\cdots, v_n$ for a vector space $V $ is the set of all vectors that can be expressed as a linear combination of them. Formally, we have $ \text{span}\{v_1,v_2,\cdots,v_n\}= \{ v\in V: \exists a_1,\cdots,a_n, \ \text{such that}\ a_1v_1+\cdots+a_nv_n=v \}$.

### Eigenvalues and Eigenvectors

***Definition***: $v\in\mathbb{R}^n$ is an **eigenvector** of $A\in\mathbb{R}^{n\times n}$ with **eigenvalue** $\lambda\in\mathbb{R}$ if $Av=\lambda v$.

If $A\in\mathbb{R}^{n\times n}$ has eigenvalues $\lambda_1,\cdots,\lambda_n$, then the determinant of $A$ is $\text{det}(A)=|A|=\prod \lambda_i$.

***Steps to compute the eigenvalues and eigenvectors***

* Computer the determinant of $A-\lambda I_n$. With $\lambda$ subtracted along the diagonal, this determinant is a polynomial of degree $n$, starts with $(-\lambda)^n$.
* Find the roots of this polynomial. The $n$ roots are the eigenvalues of $A$.
* For each eigenvalue $\lambda$ solve the equation $(A-\lambda I)x=0$. The solution $x\neq 0$ is the eigenvector corresponding to $\lambda$.

## Definite Matrix

A symmetric matrix $A$ is:

* Positive semi-definite (PSD) if for all $x\in\mathbb{R}^n$, there is $x^TAx\geq 0$.
* Positive definite (PD) if for all non-zero $x\in\mathbb{R}^n$, there is $x^TAx>0$.

We can induce this property by using the eigenvalues:

* If all eigenvalues are strictly positive, then matrix $A$ is PSD. Furthermore, since the determinant is non-zero, the matrix is invertible.
* Similarly, if all eigenvalues are nonnegative, then the matrix $A$ is PD.

We can similarly define negative semi-definite and negative definite.
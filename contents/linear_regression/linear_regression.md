# Linear Regression

## Linear Models

Suppose the input is a vector $x\in\mathbb{R}^d$ and the output is $y\in\mathbb{R}$, and we have the datapoints $(x_1,y_1),\cdots,(x_n,y_n)$. Then we define a linear model as 
$$
y=w_0+x_1w_1+\cdots+x_Dw_D+\epsilon
$$
where we call the $w_0$ as the bias/intercept and the $\epsilon$ as the noise/uncertainty.



## Learning of Linear Models

### Least Squares Objective Function

Assume we have $(x_1,y_1),\cdots,(x_N,y_N)$ where $x_i,y_i\in\mathbb{R}$, and we have the predicted output as $\hat{y}=w_0+x\cdot w$ (without noise term). We define the least square objective function as 
$$
\mathcal{L}(w)=\mathcal{L}(w_0,w)=\frac{1}{2N}\sum_{i=1}^{N}(\hat{y_i}-y_i)^2=\frac{1}{2N}\sum_{i=1}^{N}(w_0+x\cdot w-y_i)^2
$$
This objective function is also called loss function, cost function, energy function, etc. It is known as the residual sum of squares or RSS. The estimated parameters $(w_0,w)$ is known as the least squares etimate.

**<u>One Dimensional case</u>**

With the objective function defined, we have
$$
\frac{\partial\mathcal{L}}{\partial w_0}=\frac{1}{N}\sum_{i=1}^N(w_0+wx_i-y_i) \\
\frac{\partial\mathcal{L}}{\partial w}=\frac{1}{N}\sum_{i=1}^N(w_0+wx_i-y_i)x_i
$$
We obtain the solution for $w_0,w$ by settingthe partial derivatives to $0$ and solving the resulting system. 
$$
w_0+w\cdot\frac{\sum_ix_i}{N}=\frac{\sum_i y_i}{N} \\
w_0\cdot \frac{\sum_ix_i}{N}+w\frac{\sum_ix_i^2}{N}=\frac{\sum_ix_iy_i}{N}
$$
Since we know these four values:

* $\overline{x}=\frac{\sum_ix_i}{N}$.
* $\overline{y}=\frac{\sum_iy_i}{N}$.
* $\hat{Var}(x)=\frac{\sum_ix_i^2}{N}-\overline{x}^2$.
* $\hat{Cov}(x,y)=\frac{\sum_ix_iy_i}{N}-\overline{x}\overline{y}$.

Then we end up with
$$
w=\frac{\hat{Cov}(x,y)}{\hat{Var}(x)} \\
w_0=\overline{y}-w\overline{x}
$$
**<u>General Case</u>**

In general case, we express everything in matrix notation. We have $\hat{y}=Xw$, in which $\hat{y}\in\mathbb{R}^{N\times 1}$, $X\in\mathbb{R}^{N\times(D+1)}$ and $w\in\mathbb{R}^{(D+1)\times 1}$. Then we define the loss function as
$$
\mathcal{L}(w)=\frac{1}{2N}\sum_{i=1}^{N}(x_i^Tw-y_i)^2=\frac{1}{2N}(Xw-y)^T(Xw-y)
$$
Then we can calculate the gradient as
$$
\nabla_w\mathcal{L}=\frac{1}{N}((X^TX)w-X^Ty)
$$
By letting the gradient $\nabla_w\mathcal{L}=0$, we get $(X^TX)w=X^Ty$ and hence $w=(X^TX)^{-1}X^Ty$.

The predictions made by this model on the data $X$ is given by 
$$
\hat{y}=Xw=X(X^TX)^{-1}X^Ty
$$
where $X(X^TX)^{-1}X^T$ is called the hat matrix.

**<u>Complexity Analysis</u>**

There are several steps in calculating the weight matrix:

* Calculate $X^TX$, since $X\in\mathbb{R}^{(D+1)\times N}$, this step takes $O(D^2N)$.
* Calculate the inverse $(X^TX)^{-1}$, which takes $O(D^3)$.
* Calculate $X^TY$, which takes $O(DN)$ because $Y\in\mathbb{R}^{N\times 1}$.
* Calculate $(X^TX)^{-1}X^TY$, which takes $O(D^2)$.

Hence the overall complexity is the sum of all these steps, i.e. $O(D^2N+D^3+DN+D^2)=O(D^2N+D^3)$.

**<u>Joint of Several Relations</u>**

If $X$ is defined by a join of several relations, then the number of rows $N$ may be exponential in the number of relations, i.e. $N=O(M^{\text{number of relations}})$.

If $X$ is sparse, then it can be represented in $O(M)$ space losslessly for acyclic joins, which are in common in practice.
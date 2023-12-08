#maths #formula 

----
## Continuous Probability Distributions
### In [[Uniform Distribution|uniform distributions]]:
The [[Probability Density Function]], f(x) is:
$$
f(x) = \frac{1}{b-a}
$$
The [[Probability Distribution Function]], F(x) is:
$$
F(x) = \frac{x-a}{b-a}, \space \space a<x<b
$$
$$
F(x) = 0, \space{x<a}
$$
$$
F(x) = 1, \space{x>b}
$$

### [[Expected Value and Variance]]:
Expected value is E(x), Variance is Var(x):
$$
E(x) = \int_{-\infty}^{\infty} xf(x) \, dx
$$
$$
Var(x) = E(x^2)-(E(x))^2
$$
### [[Normal Distribution]]:
$$
\begin{gathered}
z= \frac{x-\mu}{\sigma} \\
\mu: \text{Mean} \\
\sigma: \text{Standard Deviation}
\end{gathered}
$$
When we are [[Estimating the Binomial Distribution]], the following makes a good estimate:
$$
\begin{gather}
np > 5 \\
n(1-p) > 5
\end{gather}
$$
Furthermore, since the normal distribution is continuous, but the binomial is discrete, we use the following continuous correction:
$$
\begin{gather}
prob(r=c) \text{ becomes...} \\
prob(c-\frac{1}{2}<x<c+\frac{1}{2})
\end{gather}
$$
----
## Sampling
### [[Estimators]]
The size of bias, where $x$ is the estimator:
$$
bias = E(x)-\mu
$$

### [[Rules of the Expectation Operator|Expectation Operator]]
Where $X_1$ and $X_2$ are random variables:
$$
E(X_1+X_2) = E(X_1)+E(X_2)
$$
Where $X$ is a random variable and $a$ is a constant,
$$
E(aX) = aE(x)
$$
$$
E(X+a) = E(x) + a
$$
Furthermore, for any constant $a$,
$$
E(a) = a
$$
### [[Rules of the Variance Operator|Variance Operator]]
Where $X_1$ and $X_2$ are random variables:
$$
Var(X_1+X_2)=Var(X_1)+Var(X_2)+2Cov(X_1,X_2)
$$
Where $X$ is a random variable and $a$ is a constant:
$$
Var(aX) = a^2Var(X)
$$
$$
Var(X+a) = Var(X)
$$
###### Covariance:
$Cov()$ is the covariance.
The covariance of two variables will be equal to zero if they are independent.

For any constant $a$:
$$
Var(a)=0
$$
For any random variable $X$ and constant $a$:
$$
Cov(X,a)=0
$$

### [[Sample Mean and Variance]]
The sample mean, $\bar{X}$:
$$
\bar{X} = \frac{X_1+X_2+...+X_n}{n}
$$
The sample variance, $S^2$, with sample size $n$:
$$
S^2 = \frac{\sum^{n}_{i=1}(X_i-\bar{X})^2}{n-1}
$$
The population variance, $\sigma^2$, with population size $n$:
$$
\sigma^2=\frac{\sum^{n}_{i=1}(X_i-\bar{X})^2}{n}
$$

### Interval Estimation
#### [[Mean Square Error]]
$$
MSE=Variance+Bias^2
$$


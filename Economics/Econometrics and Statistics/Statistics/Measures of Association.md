#maths #statistics #econometrics
# Covariance
Two RVs: X and Y,
- We know $f(x,y)$.
## Definition
- In words:
*Mean value of the product of the deviations of X taken around the mean of X, and deviations of Y taken around the mean of Y*.
- As a formula:
$$
\begin{eqnarray}
Covar(X,Y)&=&E[(X-E(X))\times(Y-E(Y))] \\
Covar(X,Y)&=&E(XY)-E(X)E(Y)
\end{eqnarray}
$$
- This definition applies to both **discrete** and **continuous** random variables.
## Properties
- It is a measure of the strength of the relationship between X and Y. It can be positive or negative.
	- **If the covariance is positive, that means their deviations 'go' in the same direction**
		- When values of X are above the mean, so are values of Y, and vice-versa. They are 'big' and 'small' simultaneously.
	- **Negative covariance means their deviations go in opposite directions**
		- When values of X are 'big', values of Y are 'small', and vice versa.
- **It is a measure of the linear relationship between X and Y**.
	- $Covar(X,Y)=0$ may occur if there is only a quadratic relationship.
- The stronger the relationship, the *larger the absolute value* of the covariance. The sign tells you only the type of relationship, not the strength.
- If X and Y are independent, $Covar(X,Y)=0$, however **the reverse is not true**.
### Problems
- The absolute value of the covariance depends on the variance of X and Y. This means that if two sets of pairs random variables have the same association, but differing variances, their covariances will differ.
- The numerical value of the covariance depends on the units of measurement.
# Correlation Coefficient
Two RVs: X and Y,
- We know $f(x,y)$.
## Definition
- In words:
*Ratio of the covariance between X and Y divided by the product of the standard deviation of X and the standard deviation of Y*.
- As a formula:
$$
\rho_{X,Y} = \frac{cov(X,Y)}{\sigma(X)\times \sigma(Y)}
$$
## Properties
- $\rho$ takes positive and negative values, indicating a positive or negative relationship. This sign comes from the covariance.
- $\rho$ measures only the linear type of relationship. Even if $\rho=0$, there may be a non-linear relationship.
- The values of $\rho$ range from $-1\leq \rho \leq 1$.
- The closer $\rho$ is to $\pm 1$, the stronger the relationship.
- Independence implies uncorrelation, but uncorrelation does not imply independence.

By dividing by the standard deviations of X and Y, we solve the problems of:
- Covariance being affected by the variability of the variables,
- The problem of unit conversions, because the correlation is now a percentage.

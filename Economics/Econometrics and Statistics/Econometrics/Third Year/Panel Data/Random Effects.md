- Assumes that $f_{i}$ and $X$ are **not** correlated
# Theoretical Justification
If $f_{i}$ and $X$ are not correlated, then $f_{i}$ represents an intercept term plus another stochastic error term:
$$
f_{i}=\beta_{0}+u_{i}
$$
- Where $u_{i}$ is a random error term.

We can combine $u_{i}$ with the original $\epsilon_{it}$ to create a combined error term:
$$
\begin{eqnarray}
Y_{it}=\beta_{0}+\beta_{1}X_{it}+u_{i}+\epsilon_{it} \\
Y_{it}=\beta_{0}+\beta_{1}+X_{it}+v_{it}
\end{eqnarray}
$$
- We know that:
	- There is no correlation between $u_{i}$ and $\epsilon_{it}$
	- There is no correlation between different $u_{i}$s at different units.
	- $v_{it}$ has:
		- A zero mean,
		- Homoscedasticity,
		- Zero covariance between different *units* at the same *time*,
		- Zero covariance between different *units* at different *times*,
		- Constant covariance between for the same *unit* at different *times*.
			- This is because the Random Effects Component, $u_{i}$, is correlated over time for a given unit.
			- This gives us a special form of serial correlation.
				- By transforming the data, we can remove this serial correlation and ensure we have an estimator with the minimum variance.
# Transforming the model
- To transform the model, we demean the series *but at a specific proportion*.
For example, ==rather than==:
$$
Y_{it}^*=Y_{it}-\bar{Y}_{it}
$$
We have:
$$
Y_{it}^*=Y_{it}-\lambda \bar{Y}_{it}
$$
- Where $0<\lambda<1$
To calculate $\lambda$:
$$
\lambda=1-\frac{\sigma_{\epsilon}}{\sqrt{ T\sigma^{2}_{u} + \sigma^{2}_{\epsilon} }}
$$
- So that:
	- When the variance of the random individual effects is high, the Random Effects Model approaches the Fixed Effects Model (i.e. $\lambda=1$).
	- When the variance is very low, the Random Effects Model approaches the OLS estimator (i.e. $\lambda=0$).
# Using the Model in Stata
```Stata
xtreg y x, re
```
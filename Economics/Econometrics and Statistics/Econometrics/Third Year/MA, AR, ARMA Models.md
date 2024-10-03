# Glossary
---
>$\gamma_{k}$ denotes autocovariance between a variable and its kth lagged value, $X_{t}$ and $X_{t-k}$. This includes the special case where $\gamma_{0}=Cov(X,X)=Var(X)$
---
> Lag is another word for how many past time periods are being observed to have effects on current time period.
-------
> $b_{k}$ represents the lagged impact multiplier for the kth error term on the present dependent variable.
---
> $e_{t}$ is an independently, identically distributed (IID) error process with mean zero and constant variance $\sigma^{2}$. This error term is often referred to as white noise.
# Moving Average
This regresses the dependent variable as a set of lagged error terms.
Simplest class of univariate time series models.
- You only need one variable to complete the analysis,
## Defining the error process

## MA(q) Models
Moving average models intend to account for shocks which are expressed as previous time period error terms. $q$ expresses how much lag is being taken into account.
### MA(1)
Example: $\Delta X_{t}=e_{t}+0.6_{t-1}$
> The dependent variable, in this case $\Delta X_{t}$ must be stationary, as noted previously.

This means that a shock in the previous period creates an impulse which affects the next period with a strength of 60%.
#### Mean of MA(1)
$$
\begin{eqnarray}
X_{t}&=&\alpha_{0}+e_{t}+b_{1}e_{t-1} \\
E(X_{t})&=&\alpha_{0}
\end{eqnarray}
$$
Because the expected value of an error term is always 0, as defined [[#Defining the error process|above]].
#### Variance of MA(1)
$$
\gamma_{0}=Var(X_{t})=\sigma^{2}(1+b_{1}^{2})
$$
#### Autocovariance and Autocorrelation of MA(1)
Autocovariance:
$$
\begin{eqnarray}
\gamma_{1}&=&E[(X_{t}-E(X_{t}))(X_{t-1}-E(X_{t-1}))] \\
\gamma_{1}&=&b_{1}\sigma^{2}
\end{eqnarray}
$$
---
Autocorrelation:
$$
\rho_{1}=\frac{\gamma_{0}}{\gamma_{1}}=\frac{b_{1}}{1+b_{1}^{2}}
$$
# Autoregression
This regresses the dependent variable as a set of its own lagged values. The number of lags is known as the *order* of the autoregression.
## AR(1)
$$
X_{t}=\beta_{0}+\beta_{1}X_{t-1}+e_{t}
$$
- $\beta_{0}$ and $\beta_{1}$ do not have causal interpretations.
	- $\beta_{1}$ is the impact multiplier of the once lagged value on the current value.
**The AR(1) model can be estimated by an OLS regression of $X_{t}$ against $X_{t-1}$**
### Mean of AR(1)
Because our dependent variable is necessarily stationary, we know that $E(X_{t})=E(X_{t-1})=\mu$.
If we model our regression:
$$
\begin{eqnarray}
X_{t}&=&\alpha_{0}+\alpha_{1}X_{t-1} \\
E(X_{t})&=&E(\alpha_{0}+\alpha_{1}X_{t-1}) \\
\mu&=&\alpha_{0}+a_{1}\mu \\
\mu&=&\frac{\alpha_{0}}{1-\alpha_{1}}
\end{eqnarray}
$$
- If $|\alpha_{1}|\geq1$, $X_{t}$ is explosive or trending and the mean is not defined.
### Variance of AR(1)
$$
\begin{eqnarray}
X_{t}&=&\alpha_{0}+\alpha_{1}X_{t-1} \\
Var(X_{t})&=&\alpha_{1}^{2}Var(X_{t-1})+Var(e_{t}) \\
\gamma&=&\text{Variance of }X_{t}\\
\gamma&=&Var(X_{t-1}) \text{ as X is stationary.} \\
\gamma&=&\frac{\sigma^{2}}{1-\alpha_{1}^{2}}
\end{eqnarray}
$$
- When $X$ is **strongly serially correlated**, there are problems of collinearity.
	- This biases the estimator towards 0.
# ARMA (Autoregressive Moving Average)
This regresses $X_{t}$ as a function of past shocks (error terms) and past values (outcomes).
- For an $ARMA(1,1)$ model:
$$
X_{t}=b_{0}+b_{1}X_{t-1}+e_{t}+d_{1}e_{t-1}
$$
- For an $ARMA(p,q)$ model:
	- p determines the number of lagged past values,
	- q determines the number of lagged error terms.
## Choosing $p$ and $q$.
1. Sufficient number of lags should be included to ensure the final error term does not suffer from serial correlation,
	1. Question - There are multiple error terms, does this essentially mean that the number of lagged values is at a point where the correlogram shows a non-serially correlated error term?
2. Include lag terms where the coefficient is statistically significant (particularly those at the longest lags),
3. However, the number of lagged terms is subject to the constraints of either:
	1. The adjusted-R^2,
	2. The Akaike Information Criterium (AIC), or
	3. The Bayesian Information Criterium (BIC).
### AIC
$$
AIC=\ln\left( \frac{RSS}{T} \right)+\frac{2K}{T}
$$
### BIC
$$
BIC=\ln\left( \frac{RSS}{T} \right)+\frac{K\ln(T)}{T}
$$
### Constraints in general
1. AIC = BIC when $\ln(T)=2$,
2. Smallest AIC or BIC is preferred,
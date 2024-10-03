
# Moving Average Model
Simplest class of univariate time series models.
- You only need one variable to complete the analysis,
## Defining the error process
$e_{t}$ is an independently, identically distributed error process with mean zero and constant variance $\sigma^{2}$.
- This error term is often referred to as white noise.
## MA(q) Models
Moving average models intend to account for shocks which are expressed as previous time period error terms. $q$ expresses how much lag is being taken into account.
> Lag is another word for how many past time periods are being observed to note effects on current time period.
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
Where $b_{1}^{2}$ is the impulse strength of the once lagged error term on the current error term.
#### Autocovariance, or, Autocorrelation of MA(1)


# Autoregressive Model
- If $|\alpha_{1}|\geq1$, $X_{t}$ is explosive or trending.
- When $X$ is strongly serially correlated, there are problems of collinearity.
	- This biases the estimator towards 0.
# ARMA (Autoregressive Moving Average) Model

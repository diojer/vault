# Autocorrelation
## Portmanteau Q-test
- Tests for joint-significance of all autocorrelation coefficients of the error term.
	- Null: no autocorrelation up to $m$-lags.
	- Bigger $Q$-test statistic $\to$ sign of autocorrelation.
## LM Test
- We know residuals are:
$$
\hat{\epsilon}_{t}=y_{t}-\hat{\beta_{0}}-\hat{\beta_{1}}x_{1,t}-\dots-\hat{\beta_{k}}x_{k}
$$
- Using the LM test, we regress the residuals on $x_{i,t}$ and lagged residuals:
$$
\hat{\epsilon_{t}}=\gamma_{0}+\gamma_{1}x_{1,t}+\gamma_{2}x_{2,t}+\dots+\gamma_{k}x_{k,t}+\psi_{1}\hat{\epsilon}_{t-1}+\psi_{2}\hat{\epsilon}_{t-2}+\dots+\psi_{k}\hat{\epsilon}_{t-k}
$$
- We then test the joint significance of the $\psi$ coefficients.
	- Null: no autocorrelation.
# Heteroscedasticity
If $\hat{\epsilon}^{2}_{t}$ is autocorrelated, residuals are heteroscedastic.
- Q test uses a Q-test statistic to evaluate the coefficients of residual autocorrelation.
- LM tests use the $T\cdot R^{2}$ test statistic.
Both tests test up to a certain lag $m$.
# Normality
Skewness (asymmetry) and kurtosis (clustered around mean) are investigated.
The Jarque-Bera test statistic tests for these two properties.
- Null: normally distributed errors.
# Order of Integration
>$I(0)$ signifies an integration of order 0 - it does not need to be differenced to be stationary.
>>$I(n)$ means a time series must be difference $n$ times to be stationary.
# Cointegrated Variables
>Two models are cointegrated if they share the same order of integration, *and* if there is some linear combination of the two variables that *is stationary*.
- If variables are cointegrated you can regress one against the other even though they are *not stationary* without generating a spurious correlation.
- Cointegration mean that the variables share a long term relationship, i.e., they have a long-run equilibrium.
To test if two variables are cointegrated, you can check if the errors resulting from their regression are stationary.
## Engle-Granger Cointegration Test
$$
y_{t}=\alpha+\delta z_{t}+\lambda t+v_{t}
$$
- $y_{t}$ and $z_{t}$ are $I(1)$, i.e., non-stationary.
- Because the errors are unobserved, we use the residuals $\hat{v}_{t}$ as an estimate and check their stationarity.
Thus, the Engle-Granger cointegration test follows these steps:
1. Regress $y_{t}$ on $z_{t}$ using OLS.
2. Obtain the residuals $\hat{v}_{t}$,
3. Carry out a Dickey-Fuller test on the residuals $\hat{v}_{t}$.
4. The series are cointegrated if the residuals are stationary.
To carry out the DF test on the residuals, we have to difference them:
$$\Delta \hat{v}_{t}=\gamma \hat{v}_{t-1}+u_{t}$$
- We don't include a constant term because the mean should be 0.
- We can add extra lagged $\Delta \hat{v}_{t-i}$ terms to eliminate autocorrelation in $u_{t}$.
- There are three sets of critical values:
![[Pasted image 20241019203555.png]]
- These are even more stringent than the Dickey-Fuller critical values.
>If the computed test statistic (t-test) is *greater* than the Engle-Granger critical values, reject $H_{0}$ and conclude that: $y_{t}$ and $z_{t}$ are cointegrated.

If the series are non-stationary and *not* cointegrated, regression will result in spurious correlations. Instead, difference the series such that they are stationary.

>$y_{t}$ is stationary if:
- $E(y_{t})=\mu_{y}$
- $var(y_{t})=\sigma^{2}_{y}$
- $cov(y_{t},y_{t+s})=cov(y_{t},y_{t-s})=\gamma_{s}$ (not a function of $t$).
# Nonstationarity
Consider the AR(1) model:
>$y_{t}=\rho y_{t-1}+v_{t}$, $v_{t}\sim I IDN(0,\sigma^{2}_{v})$ where $\sigma^{2}_{v}$ is the population variance.
- If $\rho=1$, we will have a *random walk*, **non-stationary** time series.
- If $|\rho|<1$, we will have a stationary time series.
![[Pasted image 20241014191524.png]]
- Left: stationary with zero mean, right: random walk.
**If the model follows a random walk, the variance and covariance of two different periods become a function of time:**
>$Var(y_{t})=t\sigma^{2}_{v} \to f(t)$
>$Cov(y_{t},y_{t-s})=t\sigma^{2}_{v}\to f(t)$
## Drift
>$y_{t}=\alpha+\rho y_{t-1}+v_{t}$
- Where $\alpha$ is the drift constant.
If $|\rho|<1$:
- $E(y_{t})=\frac{\alpha}{1-\rho}$
- $Var(y_{t})=\frac{\sigma^{2}_{v}}{1-\rho^{2}}$
- $Cov(y_{t},y_{t-s})=\rho^s \frac{\sigma^{2}}{1-\rho^{2}}$
If $|\rho|=1$
- $E(y_{t})=t\alpha+y_{0}\to f(t)$
- $Var(y_{t})=t\sigma^{2}_{v}\to f(t)$
- $Cov(y_{t},y_{t-s})=t \sigma^{2}_{v}\to f(t)$
>Including drift allows for a non-zero mean. This is realistic when modelling things like unemployment.
![[Pasted image 20241015180246.png]]
## Linear Trends
>$y_{t}=\alpha+\rho y_{t-1}+\lambda t+v_{t}$
- Where $\lambda$ is the trend constant.
![[Pasted image 20241015180526.png]]
>When $|\rho|<1$, the model is *trend stationary*. When this is the case, we can rewrite the dependent variable to subtract trend and drift values and have it equal to a stationary equation.
>>$y_{t}-\lambda t-\alpha=\rho y_{t-1}+v_{t}$
---
>When $|\rho|=1$, the model becomes a *non-stationary random walk process with drift and trend*. When we rewrite the equation to subtract trend and drift, we are left with a random walk equation:
>>$y_{t}-\lambda t-\alpha=y_{t-1}+v_{t}$
# Testing for Stationarity
>$H_{0}\to\rho=1$
>$H_{1}\to|\rho|<1$
- This test is known as the *unit root test*.
**The Dickey-Fuller (DF) tests are the most popular for determining stationarity.**
1. Decide which AR(1) process fits the model the best:
	- $y_{t}=\rho y_{t-1}+v_{t}$ (model doesn't appear to have drift or trend)
	- $y_{t}=\alpha+\rho y_{t-1}+v_{t}$ (model appears to have drift)
	- $y_{t}=\alpha+\rho y_{t-1}+\lambda t+v_{t}$ (model appears to have trend)
2. The test is carried out on the first difference:
	- $\Delta y_{t}=\gamma y_{t-1}+v_{t}$ (model doesn't appear to have drift or trend)
	- $\Delta y_{t}=\alpha+\gamma y_{t-1}+v_{t}$ (model appears to have drift)
	- $\Delta y_{t}=\alpha+\gamma y_{t-1}+\lambda t+v_{t}$ (model appears to have trend)
	- $\gamma=\rho-1$
3. The test becomes:
	- $H_{0}\to\rho=1\to\gamma=0$
	- $H_{1}\to|\rho|<1\to\gamma<0$
4. Rather than the typical t-test critical values, we use Dickey-Fuller, DF-test critical values:

| Model                                                | Significant Level |       |       |
| ---------------------------------------------------- | ----------------- | ----- | ----- |
|                                                      | 1%                | 5%    | 10%   |
| $\Delta y_{t}=\gamma y_{t-1}+v_{t}$                  | -2.56             | -1.94 | -1.62 |
| $\Delta y_{t}=\alpha+\gamma y_{t-1}+v_{t}$           | -3.43             | -2.86 | -2.57 |
| $\Delta y_{t}=\alpha+\gamma y_{t-1}+\lambda t+v_{t}$ | -3.96             | -3.41 | -3.13 |
>Decision rule:
>>**If the computed test statistic in absolute terms is greater than the relevant DF critical value, *reject the null*. Otherwise, *accept the null*.**
>>The null is the hypothesis that the series is *non-stationary*.
## Augmented Dickey-Fuller
>In practice, we always use the Augmented Dickey-Fuller (ADF) to ensure the errors are uncorrelated.
![[Pasted image 20241015182255.png]]

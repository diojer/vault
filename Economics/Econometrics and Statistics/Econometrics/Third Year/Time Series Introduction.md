# Static and Dynamic Relationships
In a static model,
- A change in, e.g., income at time *t*, while cause a change in, e.g., consumption at time *t* **only**.
In a dynamic model,
- A change in income at time *t* can cause a change in consumption at times *t, t+1, t+2... etc*.
This dynamic model incorporates what is known as the distributed lag effect.
## Lag Operator in Dynamic Models
$$
\begin{eqnarray}
Ly_{t}&=&y_{t-1} \\
L(Ly_{t})&=&Ly_{t-1}=L^{2}y_{t}=y_{t-2} \\
L^k y_{t}&=&y_{t-k}
\end{eqnarray}
$$
## Modelling a dynamic relationship
1. Specify that a dependent variable is a function of current *and past values* of an explanatory variable (in this case *z*).
	1. ![[Pasted image 20241001190104.png]]
	2. This is called a distributed lag (DL) model.
2. Capture the dynamic characteristics by specifying the lagged values *as* explanatory values
	1. ![[Pasted image 20241001190214.png]]
	2. This is called an autoregressive model.
3. A combination of the previous two is an Auto-Regressive Distributed Lag model.
	1. ![[Pasted image 20241001190301.png]]
	2. The above model is an ARDL(2,1) model because there are 2 lags of y and 1 lag of z.
	3. An ARDL(p,q) model consists of q lags of y and p lags of z.
4. By allowing the current error, $e_{t}$, to affect the current and future values of the dependent variable
	1. ![[Pasted image 20241001190508.png]]
	2. $e_t$ is correlated with $e_{t-1}$.
	3. This means that the errors are serially correlated, or autocorrelated.
## Stationarity
A crucial assumption is ARDL models is that time series variables are stationary.
- A stationary variable: is not explosive, nor trending, nor "wandering aimlessly" without returning to its mean.
Before using ARDL, you must ensure that all variables are stationary.
![[Pasted image 20241001191016.png]]
![[Pasted image 20241001191033.png]]
![[Pasted image 20241001191047.png]]
OLS on non-stationary series can lead to spurious regression. This could mean that y and z, while being unrelated, give us:
- High $R^{2}$
- High t-values
- High F-values
**Stationarity is defined by:**
- Constant mean over time,
- Constant variance over time,
- The COV() between two values depends on the *length of time* separating the two values, **not on t**.
	- ![[Pasted image 20241001191245.png]]
## Serial Correlation
When working with cross-sectional data, we assume that all dependent variables are not correlated, i.e., taking the food expenditure and income example, the food expenditure in household $j$ is unaffected and does not affect the food expenditure in household $k$.
- This is because samples are randomly collected.
However, time-series observations on a given economic unit over time are likely to be correlated.
- When a variable displays this correlation **over time**, it is autocorrelated, or serially correlated.
The equation for the Pearson correlation coefficient is:
$$
\rho=\frac{cov(x,y)}{\sqrt{ var(x) }\sqrt{ var(y) }}=\frac{\sigma_{xy}}{\sigma_{x}\sigma_{y}}
$$
Similarly, we can calculate the correlation between $y_{t} \text{ and }y_{t-1}$ as:
$$
\rho_{1}=\frac{cov(y_{t},y_{t-1})}{\sqrt{ var(y_{t}) }\sqrt{ var(y_{t-1}) }}=\frac{cov(y_{t},y_{t-1})}{var(y_{t})}=\frac{\gamma_{1}}{\sigma^{2}_{y}}
$$
- $\rho_{1}$ is the "first-order population autocorrelation".
- We use the sample data to estimate the population autocorrelations.
![[Pasted image 20241003143626.png]]
In time-series analysis, we are usually interested in testing whether a variable *is autocorrelated*.
- $H_{0}:\rho_{k}=0$
- $H_{1}:\rho_{k}\neq 0$
A suitable test statistic is:
$$
Z=\frac{\bar{\rho}_{k}-0}{\frac{1}{\sqrt{ T }}}
$$
- Where $T$ is the range of time being observed, i.e., the sample size.
![[Pasted image 20241003144230.png]]
## Cointegration
- Non-stationary variables should not be used in regression models.
- However, there is an exception:
	- When a model involves two or more non-stationary variables, the analysis only makes sense if there are one or more linear combinations of the non-stationary variables that **are stationary**.
A set of variables that are individually non-stationary, but whose linear combination is stationary, are said to be **cointegrated**.
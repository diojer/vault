# Static and Dynamic Relationships
In a static model,
- A change in, e.g., income at time *t*, while cause a change in, e.g., consumption at time *t* **only**.
In a dynamic model,
- A change in income at time *t* can cause a change in consumption at times *t, t+1, t+2... etc*.
This dynamic model incorporates what is known as the distributed lag effect.
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
Stationarity is defined by:
- Constant mean over time,
- Constant variance over time,
- The COV() between two values depends on the *length of time* separating the two values, **not on t**.
	- ![[Pasted image 20241001191245.png]]
## Serial Correlation

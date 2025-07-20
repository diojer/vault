Using a less strict definition: covariance stationary
- Unconditional mean and variance are constant
- Covariance between two points depends on the time between, not the time of the observation.
# Correlograms
- A correlogram for an AR(p) process looks different than a correlogram for an MA(q) process.
![[Pasted image 20250611173255.png]]
## Partial Autocorrelation
The partial autocorrelation function (PACF) is found by regressing $y_{t}$ on all lags up to $p$. The partial autocorrelation is the coefficient between $y_{t}$ and $y_{t-p}$.
# ACF and PACF
- ACF has geometric decay in AR(1) if $0<b<1$.
- ACF has oscillating decay in AR(1) if $-1<b<0$
Introducing higher orders will change the ACF depending on the sign of the coefficients.

- PACF has quick cut-off in AR(p)
	- This is because estimating the coefficient of lags further than $p$ or $q$ will not result in any significant results since earlier coefficients are already being controlled for.

In MA(q) models, the ACF cuts off quickly whereas the PACF gradually decays toward zero.
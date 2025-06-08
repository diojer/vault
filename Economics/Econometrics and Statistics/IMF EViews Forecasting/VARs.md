Sims' Critique:
- In an economy with forward-looking rational agents, no variable is really exogenous.
- Modern macro models were too restrictive with the equations they imposed.
- VARs offered a way to do macro modelling without "pretending to have too much a priori theory".

For forecasting, a "reduced form" VAR is sufficient.
For structural analysis, a sVAR (structural VAR) is preferred.
- Can be used to investigate impulse response functions.
# Specification Issues
## Stationarity
- A p-th order VAR is stationary if:
	- The expected value of $y_{t}$ does not depend on time.
	- The covariance matrix of $y_{t}$ and $y_{t+j}$ depends on time lapsed $j$ and not on the reference period $t$.
- Stationarity can be easily tested on EViews using the inverse roots graph.
	- View>Lag Structure>AR Roots Graph
	- Instability will render certain results invalid, like IR standard errors.
## White Noise Errors
- When estimating a model, enough lags should be included to make sure residuals approach white noise.
- When estimating $I(1)$ variables in long-run form, this requirement is less important.

Residual autocorrelation can be checked by viewing the cross-correlograms
- View>Residual Tests>Correlogram
	Like normal correlograms, significant autocorrelation is indicated where the value reaches beyond the significance margins.
	- Seasonality can be detected if autocorrelations display a sinusoidal pattern
	- If the residuals are random, correlations should be consistently close to zero.
Autocorrelation can also be detected using the LM test
- This is a generalisable test because it can be applied to VAR in levels and where the order of integration is unknown.
## Lag Selection
- $np< \frac{T}{3}$
- In other words, number of lags times number of variables should be less than the time period divided by three.
- When working with quarterly data, try to have lags $p=4$,
- When working with monthly data, best to have lags $p=12$.
Example:
100 time series observations in quarterly data, so lags $p=4$.
This restricts us to ~8 explanatory variables.

The equation for the total number of coefficients is $n(1+np)$.

EViews offers lag selection tests, including different kinds of selection criteria, for VAR appraisal.
# Forecasting using VAR
The forecast error can be decomposed into the sum of the error term plus the coefficient error.
- However, we assume that the coefficient estimation error will be small and, over large numbers, tend $\to 0$.
- Therefore:
$$
y_{t}-E(y_{t}|Y_{t-1})=e_{t}
$$
- Where $Y_{t-1}$ is a matrix that contains all past values of $y_{t}$:
	- $Y_{t-1}=(y_{t-1},y_{t-2},\dots,y_{t-T})$
## Iterated Forecasts
- Iterating one period forward uses a *dynamic* forecast.
	- As stated before, this means that the predicted value of $y_{t}$ is used.
		- EViews allows comparisons with static solutions.
Simple process, involves making a model using the VAR equation and solving for a set period.
- Dynamic and static forecasts are available, as well as deterministic and stochastic procedures.
- By using "Override Edit" you can set one of the variables exogenously and see how others react. 
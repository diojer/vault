Forecasting using models in EViews can either be deterministic or stochastic.
Using the following equation as a reference:
$$
y_{t+1}=E(y_{t+1}|x_{t})+\epsilon_{t+1}
$$
- A deterministic forecast will predict the conditional value whereas a stochastic forecast will factor in standard errors and previous residuals to gain an estimate for upper and lower bounds of our forecast.
	- The average forecast of a stochastic forecast will be the dynamic forecast, because $E(\epsilon_{i})=0$
# Sources of Uncertainty
- Inherent randomness of explanatory variable
	- If we forecast our explanatory variable into the future to explain our dependent variable, then this forecast error will add to our final forecast error.
- Estimates of parameters will not be the same as their true values, due to the randomness of estimates.
- Functional form of model may be wrong.
# Forecasting Assessment
- Bias (average forecast error)
- Standard Error (dispersion of forecast error relative to bias)
- Mean Squared Forecast Error (self-explanatory)
- Root Mean Squared Forecast Error (self-explanatory)
- Mean Absolute Error: Uses absolute instead of root-square to obtain positive values.
- Mean Absolute Percentage Error: Finds average of \[forecast error divided by dependent variable].

$MSE=Bias^{2}+SE^{2}$

# Benchmarking
- An economic model should have better accuracy than a "naïve forecast", i.e., a random walk model $\hat{y}_{t+1}=y_{t}$
- Support forecasts with visual cues.
## Theil's U Stat
- $U_{1}$
	- Root mean squared error, divided by the sum of the root mean forecast series *plus* the sum of the root mean actual series.
- $U_{2}$
	- Root mean squared error divided by root mean squared error of a naïve forecast.
		- $U_{2}=0$ best case, means there are no RMSE
		- $U_{2}=1$ means model is equivalent to a naïve forecast.
		- $0<U_{2}<1$ beats naïve
		- $1<U_{2}$ loses to naïve.
## Bias Proportion
$$
\frac{Bias^{2}}{MSE}
$$
This tells us how far the mean of the forecast is from the mean of the series.
Most MSE should be attributable to covariance, while the bias and standard error proportions would ideally be low.
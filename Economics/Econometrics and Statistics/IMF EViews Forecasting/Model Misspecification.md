# Heteroscedasticity
- When heteroscedasticity is not taken into account, and the model is estimated as OLS, forecast errors quickly rise to a constant level.
- When the model is estimated using a GARCH process which allows for changes in variance of the error term, forecast errors are better estimated.
- However, heteroscedasticity does not bias forecasts.
# Structural Breaks
- Not accounting for a positive-intercept structural break will lead to a downward-biased forecast.
	- Forecast errors will also be much larger.
- For a positive-slope structural break, an incorrectly specified model will lead to an upward-bias in static forecasts and overly small forecast errors in dynamic forecasts, leading to narrower confidence intervals.
	- For a negative-slope structural break, the incorrect model leads to downward bias in static forecasts and overly wide forecast errors in dynamic forecasts.
We model:
>$DU_{t+1}=\alpha+\theta DU_{t}+\delta_{0}G_{t+1}+\delta_{1}G_{t}+e_{t+1}$
- Consequently, we need to estimate the values of the parameters and the future values of $\{G\}$.
	- Because we are not given $G_{t+1}$, we can forecast a value for $DU_{t+1}$ conditional on certain values of $G_{t+1}$, like 0.5% or 2%.
# Forecast Error
>This is notated as $\phi_{1}$
- The first forecast error is defined as the difference between the actual outcome and the forecasted outcome.
$$
\begin{eqnarray}
\phi_{1}=DU_{t+1}-\hat{DU}_{t+1}
\end{eqnarray}
$$
>If we ignore the error from forecasting coefficients, we get:
$$
\phi_{1}=e_{t+1}
$$
- The second forecast error would be:
$$
\phi_{2}=DU_{t+2}-\hat{DU}_{t+2}
$$
>Again ignoring errors from coefficients, we get:
$$
\phi_{2}=\hat{\theta_{1}}\phi_{1}+e_{t+2}=\hat{\theta}_{t}e_{t+1}+e_{t+2}
$$
- The variance of the forecast error will increase as we forecast further into the future.
## Forecast Intervals
Knowing the standard error of forecasts is useful for calculating the 95% forecast confidence interval.
# Notes from textbook
- Large models usually contain in-sample estimation errors that induce forecast errors, since coefficient uncertainty increases as the model becomes more complex, e.g., moving from an AR(1) model to an ARMA(2,2) model.
	- To decide which model to use, you can use your actual observations to test between complex but more accurate (accuracy = consistent with the underlying data generation process) models and simpler models.
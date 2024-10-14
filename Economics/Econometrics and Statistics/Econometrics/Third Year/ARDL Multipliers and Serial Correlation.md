# Reminders
>OLS on non-stationary series can lead to spurious correlation, unless the variables are cointegrated.
---
>An ARDL model is specified as a combination of the dependent variables lagged values, and the lagged values of independent variables. For example, with GDP, this might be:
>>$GDP_{t}=\beta_{0}+\beta_{1} GDP_{t-1}+\beta_{2}Unemp_{t-1}+\epsilon_{t}$
>>Where GDP is a function of last period's GDP and last period's unemployment.
---
>We assume the basic OLS+ARDL assumptions:
1. Linearity in parameters,
2. Stationarity,
3. No perfect collinearity,
4. Error terms are independently and identically distributed,
5. $E(e_{t})=0$
6. $Cov(e_{t},e_{s})=0$
# Application
## Impact Multipliers
Take the following model:
>$DU_{t}=\alpha+\delta_{0}G_{t}+\delta_{1}G_{t-1}+\delta_{2}G_{t-2}+\dots+\delta_{q}G_{t-q}+e_{t}$
- This is a pure Distributed Lag (DL) model; DL(q).
- Unemployment is a function of growth in the past *q* periods.
We can calculate multiple impact multipliers:
- $\frac{\delta DU_{t}}{\delta G_{t}}=\delta_{0}$, i.e., the specific impact multiplier of the current period's growth on unemployment. This means we hold all other periods constant.
- $\frac{\delta DU_{t}}{\delta G_{t-1}}=\delta_{1}$, i.e., the 1-period dynamic multiplier of $G_{t}$,
- $\frac{\delta DU_{t}}{\delta G_{t-1q}}=\delta_{q}$, i.e., the q-th period dynamic multiplier of $G_{t}$.
We can then construct cumulative dynamic multipliers.
- The 1 period *cumulative* dynamic multiplier is $(\delta_{0}+\delta_{1})$.
- The 2 period is $(\delta_{0}+\delta_{1}+\delta_{2})$,
- The q-th period is $(\delta_{0}+\delta_{1}+\delta_{2}+\dots+\delta _{q})$
(To capture cumulative impact multipliers, estimate the model as a regression of $\Delta x_{t-q}$.)

>If the error term is not serially correlated, we can estimate the dynamic impact multipliers normally.
>>We can reduce serial correlation by introducing enough lags of the error term.
>If the error term is serially correlated, then we can use an extension of robust standard errors, heteroscedasticity and autocorrelation consistent (HAC) standard errors.
# Correlation of Error Terms in ARDL
>Whenever we introduce an autoregressive model, we will always break the assumption that $e_{t}$ is independent of all independent variables.
>This is because the past error term, $e_{t-1}$ will influence $y_{t}$ through $y_{t-1}$.
>Additionally, the current error term will influence $y_{t}$.
>This means that $e_{t}$ is not independent of $y_{t-1}$.
- At this point, we downgrade the strict exogeneity assumption to the assumption that:
	- $e_{t}$ is not correlated with *current and past* values of the right-hand side variables.
	- OLS is no longer unbiased but will be consistent.
## Breusch-Godfrey (BG) test for serial correlation
- We cannot use the [[Tests for Serial Correlation#Durbin-Watson (DW) test for autocorrelation|Durbin-Watson]] test because that is not for AR(q) models of the dependent variable.
>The BG test consists of estimating the residuals and then regressing:
>>$\hat{e}_{t}=\gamma+\rho_{1} \hat{e}_{t-1}+\dots+\rho _q\hat{e}_{t-q}+(\hat{DU}_{t}-\hat{e}_{t}+u_{t})$
>>In other words, we regress the error term against the past error terms, the dependent and independent variables (captured by $\hat{DU}_{t}$) and another error term ($u_{t}$).
>Once we have run that regression, we multiply the $R^{2}$ value with the number of observations, $T$.
### Applying BG to Stata
We run the initial regression:
```Stata
reg du L.du g L.g L2.g
```
This simply estimates our specified model.
Then, we run:
```Stata
estat bgodfrey, lags(1/4) nomiss0
```
- `estat bgodfrey` runs the BG test,
- `lags(1/4)` runs it for error terms lagged from $e_{t}$ to $e_{t-4}$,
- `nomiss0` makes sure Stata does not replace missing values with 0 ***(important)***.
>This section will use a variety of models to illustrate different approaches. We'll begin with the following model:
$$
m_{t}=p_{t}+y_{t}+r_{t}+e_{t}
$$
- In other words, the demand for money $m_{t}$ is a function of the price level, income, the real interest rate and a stochastic error term.
- To formally specify the model:
$$
m_{t}=\beta_{0}+ \beta_{1} p_{t}+\beta_{2}y_{t}+\beta_{3}r_{t}+e_{t}
$$
# 1: Cointegration
1. Before we check the data for stationarity, we should check if the variables are *cointegrated*. If they are, they do not have to be stationary to run the regression.
	- To check for cointegration, we check whether the error term is stationary. If the error term is stationary, that means there is a *linear combination of the independent and dependent variables which are stationary*, i.e., those variables are *cointegrated.*
	- **Reminder:** variables can only be cointegrated if they are of the same [[Economics/Econometrics and Statistics/Econometrics/Third Year/Time Series Data/Cointegration#Order of Integration|order of integration]].
	- If they are cointegrated, we can go straight to step 3. If not, we move onto:
# 2: Stationarity
2. If the variables are not cointegrated, they must be stationary, i.e., $I(0)$ for the regression to not be spurious.
	- The first step of checking for stationarity is to actually look at the data set. This will help tell if it's trending, drifting, a random walk, simply stationary.
	- If it does not appear stationary, it is a good idea to difference it until it does appear stationary.
		- Once all data sets appear stationary, we can begin testing for stationarity to see if something is wrong.
		- Before testing for stationarity using the Dickey-Fuller test, we have to test for serial correlation to know if we should use the DF test or the Augmented DF (ADF) test:
# 2.1: Serial Correlation
2. Testing for serial correlation in the error term is simple.
	- Each variable is modelled as the following:
		- $\Delta x_{t}=\gamma x_{t-1}+e_{t}$
		- We can also add in a drift or trend term if inspecting the variable leads us to believe the data-generating model contains those terms.
	- After running that model's regression, we check for serial correlation in the error terms with the Breusch-Godfrey (BG) test.
		- `estat bgodfrey, lags(1/4) nomiss0`
			- This checks the last 4 error terms for serial correlation.
	- If serial correlation is detected, the variable's model must be updated to include *lagged, differenced, dependent variables*. This will eliminate serial correlation in the error term.
	- Once there is no significant serial correlation, the Dickey-Fuller test can be carried out on each variable. If lagged, differenced, dependent variables were introduced, it will technically be an Augmented Dickey-Fuller test.
		- `dfuller x, lags(q) regress`
			- Adding `lags(q)` makes it an ADF.
# 3: Model Specification
3. When doing any time-series model, knowing the specification will tell us how many lags to include.
	- To decide how many lags to include in the model, we first test using [[MA, AR, ARMA Models#AIC|AIC]] and [[MA, AR, ARMA Models#BIC|BIC]].
		- Stata will find the AIC and BIC of all different specifications. The preferred choice is the one with the lowest value.
			- AIC and BIC will often disagree on which model specification is the best, because when the number of samples > 8, BIC will put a higher cost on the number of extra parameters included.
		- Once they have returned their preferred specification, we can test each model using *t-tests* to see if the specification's coefficients are significant.
			- For example, if the specification recommended by AIC has insignificant coefficients, this might incentivise us to use the model specified by BIC instead.
# 4: Serial Correlation (again)
4. Once we have our model specification, we should check again for serial correlation within the error term using the BG test.
	- This tests for the model's serial correlation, rather than for serial correlation within the variables themselves (that's what the first serial correlation test tested for).
	- If we detect serial correlation, we should add more AR(q) variables, *even if they are insignificant*. This will reduce the serial correlation.
	- Even if a variable is insignificant, this still tells us something: that something that happened $i$ periods ago likely does not have a significant effect on the present day.
# 5: Regressing
5. Once we have our final model with no problems of serial correlation, we can finally run the regression.
	- If all the steps have been followed, we know that the regression and coefficients will not be spurious.
	- It's standard practice to regress using Robust Standard Errors, specifically HAC standard errors, which should account for any potential heteroscedastic and autocorrelated error terms.
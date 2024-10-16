# Pre-Seminar Questions
1. ---
	- (a) Cross-sectional data looks at contemporaneous variable values, whereas time-series data observes how these values change across time.
	- (b) An example of a cross-sectional data set could be the incomes and house-prices *right now* in a particular area. A time-series data set could be house prices across time and number of new housing built across time.
2. ---
	- (a) Unbiased: the estimator will, on average, return the population mean. Consistent: with enough observations, the sample mean will be equal to the population mean.
	- (b) Efficiency: efficiency increases when variance decreases: the most efficient estimator will have the least possible variance (population variance).
3. Ralph is only correct if the time-series variable is stationary. If it is, then the variance in two different time periods is equal to each other, thus $Var(z_{t})=Var(z_{t-1})$ and $\sqrt{ var(z_{t}) }\sqrt{ var(z_{t-1}) }=var(z_{t})=var_{z_{t-1}}$
4. The Durbin-Watson test cannot be used with AR(q) models, only with DL models. Instead, he should have used the Breusch-Godfrey test.
5. The coefficients' statistical significance will be impacted by serial correlation in the error term, because the lagged error terms are confounders. Consequently, the regression model will produce spurious coefficients.
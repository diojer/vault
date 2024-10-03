#econometrics #regression #model
# Ordinary Least Squares Estimation
We want to estimate the population linear regression model:
- $y_{i}=\beta_{1}+\beta_{2}x_{i}+e_{i}$
	- Even in the population, any given member will not fall exactly on the line, which is why the error term is necessary.
![[Pasted image 20240205152442.png]]
*Figure 1*

The residual is the difference between the point to the sample regression function.
- The residual is not the same as the error term $e_{i}$, since this is the difference between the point to the population regression function, which we do not know.
The fitted variable $\hat{y}$ is what the variable $y$ *would* be if we accounted for standard error.
- To account for standard error, we are minimising the **sum of squared residuals**. They are squared because some are positive and some are negative.
# OLS Estimates
So, applying the OLS technique, we get a sample regression function:
- $\hat{y}_{i}=b_{1}+b_{2}x_{i}$
	- $b_{1}$ and $b_{2}$ are **OLS estimates** of $\beta_{1}$ and $\beta_{2}$.
- Alternatively, $y_{i}=b_{1}+b_{2}x_{i}+\hat{e}_{i}$.
	- $\hat{e_{i}}=\text{Residuals}$
![[Pasted image 20240205153647.png]]
*Figure 2*

The population regression function, $E(y_{i}|x_{i})$ is unobservable.
# OLS Estimators
- Estimators are formulae that return the estimates.
	- An unbiased estimator $m$ will fulfil: $E(m)=p$, where $p$ is the population parameter $m$ is estimating

The OLS estimators $\hat{\beta}_{1}\text{ and } \hat{\beta}_{2}$ can be found by solving:
- $Min S( \beta_{1},\beta_{2})=\sum_{i=1}^{n}\hat{e}_{i}=\sum_{t=1}^{n}(y_{i}-\beta_{1}-\beta_{2}x_{i})^2$
	- $\hat{\beta_{2}}=\left( \frac{\sum^n_{i=1}(x_{i}-\bar{x})(y_{i}-\bar{y})}{\sum^n_{i=1}(x_{i}-\bar{x})^2} \right)$
	- $\hat{\beta_{1}}=\bar{y}-\hat{\beta_{2}}\bar{x}$
![[Pasted image 20240205154535.png]]
*Figure 3*

# Interpretation
## $b_{2}$
- $b_{2}=\frac{\delta \hat{y}}{\delta \hat{x}}$
- i.e., marginal effect
## $b_{1}$
This one is less important, represents the y-intercept.
Harder to use when values near $x=0$ are not well documented.

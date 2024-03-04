#econometrics #statistics #model
# Estimators
## $\hat{\beta}_{j}$
![[Pasted image 20240304154708.png]]
- As already stated in [[Propagating Changes To Estimators]], the variance of an estimator will be affected if the variance of the independent and dependent variables are changed.
Variance will also be affected by multicollinearity, i.e., how related the different $x_{ij}$ variables are to each other - this is captured by $R^2_{j}$. A high degree of linear relationship can lead to a large variance and thus less efficient estimators.

We can also write the equation as:
![[Pasted image 20240304154947.png]]
Where VIF is the variable inflation factor, $\frac{1}{1-R^2}$.
- If VIF>10, we have problems with multicollinearity. I.e., if $R^2>0.9$.
# $\hat{\sigma}$
- Estimating the population variance is useful for figuring out the variance of our other estimators, $\hat{\beta}_{j}$.
![[Pasted image 20240304162808.png]]
- Where:
	- $n$ is the number of observations
	- $k$ is the number of $\beta$ coefficients
	- $RSS$ is the sum of square residuals, check it out [[Algebraic Properties of OLS#Goodness of Fit|here]].
# $t$ statistics
- We use the t-statistics to hypothesis test about our estimates $b_{j}$.
This process is available [[Hypothesis Testing on Estimators|here]].
# Goodness of fit
If $R^2$ is close to 1, we have explained the data very well.
We cannot compare the $R^2$ of models where the dependent variables are different, e.g., $\ln(y)$ and $y$
## Adjusted $R^2$
Whenever we increase the number of explanatory variables, our $R^2$ must necessarily increase. So, we need to be careful not to add too many.
The adjusted $R^2$ imposes a penalty for increasing the number of explanatory variables.
![[Pasted image 20240304164445.png]]
Where:
- $n$ is the number of observations
- $k$ is the number of $\beta$ coefficients
To know which variables to include, then, we use economic theory.

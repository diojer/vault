# External Validity
- Whether the results, generalised to one population, can be generalised to other populations.
	- For example, if we sampled FDI in China and estimated the impacts of FDI, could we extend that analysis to India?
# Internal Validity
- Whether the results obtained from a sample can be valid for a whole population

## Gauss-Markov Theorem
- Assumptions:
	- Linearity in parameters
	- Zero conditional mean
	- Random sampling
	- Homoscedasticity

If these assumptions are satisfied, our estimators are **B**LUE
- Best (minimum variance) a.k.a efficiency.
- Linear
- Unbiased (expected value is equal to the true population parameter)
- Estimators
## Factors affecting efficiency
- Large variances of the OLS estimators will result in large standard errors
	- Larger standard errors will result in wider confidence intervals
	- Larger SEs will also result in less accurate hypothesis testing.

Heteroscedasticity will affect the efficiency of the OLS estimators.
## Homoscedasticity
The variance of the error term with respect to the explanatory variable is constant.
We can test our assumption of homoscedasticity.
### Visual Inspection
![[Pasted image 20240529191616.png]]
At lower levels of income, variance is much lower than at higher levels of income. This means that the residuals will increase as the weekly income increases. Consequently, we can plot the residuals with respect to income.

Under homoscedasticity, we should see constant variance between the residuals and the explanatory variable:
![[Pasted image 20240529191857.png]]
## Heteroscedasticity F-test
## Heteroscedasticity LM test
- LM stands for Lagrange Multiplier
First, we estimate the model:
![[Pasted image 20240529192411.png]]
## Consequences of Heteroscedasticity
- The least squares estimator is still a linear and unbiased estimator, but it is no longer the best, i.e., lowest variance.
- Consequently, there is another estimator with lower variance.
	- Better estimators could be Generalised Least Squares estimator
- The standard errors we calculated are incorrect
- What could we do to keep using OLS?
	- We're going to try to fix the issue of incorrect standard errors
		- All we need to do is use robust, rather than conventional, standard errors.
## Factors affecting unbiasedness and consistency
- Two key assumptions for unbiasedness and consistency:
	- Random sampling
	- Zero-conditional mean
		- Explanatory variables are uncorrelated with the error term
		- If there is not a zero-conditional mean, our explanatory variables are endogenous.
		- This cannot be tested, so we need to use our intuition
## Endogeneity
- The OLS estimators will be biased
- The bias persists, even in large samples.
### Common Sources
- Omitted variable bias
	- If we omit a confounder then we break the zero-conditional mean assumption
	- Solutions:
		- If possible, include omitted confounding variables
		- Other solutions, panel data or instrumental variables
- Reverse causality
	- Not only does $x$ affect $y$, but $y$ also affects $x$.
	- This breaks the zero-conditional mean assumption, because the error term is indirectly having an effect on the explanatory variable (since the dependant variable is affected by the error term.)
		- Solution:
			- Instrumental variable estimator
- Misspecification
	- We haven't properly specified the true relationship.
	- Can be identified with Ramsey's RESET test
	- Can be remedied by properly specifying the relationship
- Measurement errors
	- Explanatory variable measured with some error
	- E.g., surveys not being answered truthfully
	- Possible solution: instrumental variables
- Sample selection
	- If the data is randomly missing something, that's fine.
	- But, if data is missing in a systematic way that's not good!
	- If our explanatory data is limited we can only make predictions for that limited population
	- We also have to be careful of survivorship bias - if the sample is selected based on things that might affect the dependent variable, then selection is endogenous.
		- The sample will not be representative of the population
		- Solution:
			- Use sample selection models
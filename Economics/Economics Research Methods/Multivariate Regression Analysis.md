#economics #reserach #regression
[[Economic Research Methods]]

# Important Terms
- Dependent Variable
	- Y-variable, response variable, predicted variable
- Independent Variable,
	- X-variable, explanatory variable, predictor
- Control Variable
	- Variables introduced to reduce omitted-variable bias
- Regression Coefficient
	- $\beta_{2}$, tells us strength and direction of relationship between dependent and independent variable.
- Standard Error
	- Distance of sample from mean
- P-Value
	- Probability of null hypothesis being true
- Hypothesis Testing
	- Trying to disprove null hypothesis with alternate hypothesis
- Omitted Variable Bias
	- Bias between dependent and independent variable because of confounding factors
- Multicollinearity
	- When the independent and control variables are highly correlated.
- $r^2$
	- How much of the change in the dependent variable can be explained by the independent and control variables.

# Logistic Regression
Used when:
- Y is binary
- Y is ordered
- Y is nominal
As opposed to when Y is continuous. This is necessary - if Y is ordered, e.g., First, Second, and Third year of school, the difference between two endpoints, e.g., First and Second, may not be the difference between two other endpoints, e.g., second and third.
## Binary Logistic Regression
- Dependent variable is dichotomous.
Interpretations of regression coefficients changes. Instead of modelling unit changes, we think in terms of probability.
The coefficient, $Q$, represents how much the probability of $Y$ changes as a result of $X$. 
- The probability of having COVID-19 (binary) as a result of age
### Important Notes
- Similar to OLS
	- Multicollinearity and Omitted Variable Bias are important
- 
### Stata
```stata
logit depvar var1 var2
```
## Ordered Logistic Regression
- Categories for an ordinal variable can be ordered, but the distances are unknown
	- e.g., strongly agree, agree, disagree, strongly disagree,
	- OLS assumes the distances are equal
### Stata
```stata
ologit depvar var1 var2
```
## Multinomial Logistic Regression
- Categories are unordered
	- e.g., marital status can be divorced, never married, married, etc.,
### Stata
```stata
mlogit depvar var1 var2
```

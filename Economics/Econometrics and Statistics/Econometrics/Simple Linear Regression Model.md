# Model
$y_{i}=\beta_{1}+\beta_{2}x_{i}+e$, and where $i=1,\dots,N$ units
Where:
- yi is the dependent variable
- xi is the explanatory variable
- e is the error term
- $\beta_{1,2}$ are the population parameters
This is a linear model, because $\beta_{2}$ is not raised to any power, and a simple model, because there is only one explanatory variable.
## Example
Food expenditure$_{i}$ = $\beta_{1}+\beta_{2}$income$_{i}+e$
First, we collect data
- Survey households about their income, and how much they spend on food.

We will assume that $x=1000$.
- Income: fixed (or non-random) variable.
- Food expenditure: Random variable (RV)
So, food expenditure will have a conditional probability density function, where $x=1000$.
- PDF: $f(y|x=1000)=\beta_{1}+1000\beta_{2}+e$
	- $E(y|x=1000)=\mu_{y|1000}$
	- $Var(y|x=1000)=\sigma^2$
- Knowing the expected value and variance allows us to estimate the population parameters.

Next, we can assume that $x=2000$. We're also assuming that $\beta_{1}$ is positive, i.e., a higher income will increase food expenditure.

We can begin to represent the whole function $f(y)$:
![[Pasted image 20240129161626.png]]
*Figure 1*
To quantify the relationship, we need:
- Economic theory
	- E.g., theories on household utility functions,
- Econometrics model
	- E.g., Simple Linear Regression Model
### Population Regression Function
Using Figure 1, we see that the line connecting all of the expected values is $\mu_{y|x}$. This line is also given by the equation $\beta_{1}+\beta_{2}x$. So, we get the equation $E(Y|X)=\beta_{1}+\beta_{2}x$.
![[Pasted image 20240129162548.png]]
 *Figure 2*
$\beta_{2}$ is the gradient of the line, $\frac{\Delta E(Y|X)}{\Delta X}$.

However, looking at figure 1, we also see that while the sample value is most likely to land at $\mu_{y|x=X}$, it may land outside of that. The distance from the sample value and the $\mu$ is the error term $e$.
![[Pasted image 20240129162940.png]]
 *Figure 3*
### Error Terms
$y_{i}=\beta_{1}+\beta_{2}x_{i}+e_{i}$, so
$e_{i}=y_{i}-\beta_{1}-\beta_{2}x_{i}$.
#### Expected Value
$y_{i}=\beta_{1}+\beta_{2}x_{i}+e_{i}$, so
$e_{i}=y_{i}-\beta_{1}-\beta_{2}x_{i}$.
Using this equation:
- $E(e_{i}|x_{i})=E(y_{i}|x_{i})-\beta_{1}-\beta_{2}x_{i}$
- $E(e_{i}|x_{i})=\beta_{1}+\beta_{2}x_{i}-\beta_{1}-\beta_{2}x_{i}$
- $E(e_{i}|x_{i})=0$
In other words, we know the expected value of the error term is 0, because the expected value of a sample $i$ is equal to the population average (given a certain income level), and the error term is the *difference* between the sample $i$ and the population average.
#### Variance
- $Var(e_{i}|x_{i})=Var(y_{i}|x_{i})$
- $Var(e_{i}|x_{i})=\sigma^2$
### Assumptions
- Linearity in the parameters
- The expected value of $e_i$ is 0,
- The errors are uncorrelated with the explanatory variable, i.e., $E(e_{i}|x_{i})=0; cov(e_{i},x_{i})=0$
- x is fixed and must take at least 2 different variables
- Constant variance, i.e., $Var(y|x=1000) = Var(y|x=2000) = \sigma^2$ (AKA Homoscedasticity)
	- For our example, likely not a fair assumption - households with a lower income will likely have food expenditure highly centred on one number.
- The sample is random and identically distributed
	- Identically distributed: all sample elements have the same PDF as the population
- Normality
	- Both the error term and the y variable are normally distributed.
	- $y:N([\beta_{1}+\beta_{2}x_{i}], \sigma^2)$
	- $e_{i}:N(0, \sigma^2)$

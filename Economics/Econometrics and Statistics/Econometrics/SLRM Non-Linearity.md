#econometrics #maths #model
# Changing Units
Take the equation: $\hat{y}_{i} =50+0.2x_{i}$.
Say that the equation represents the relationship between income, x, and food expenditure, y. So:
- $b_{2}=2$.
- $b_{1}=50$.
If we say that y is in £s, then for every extra £1 received in income, we would spend £0.2 on food expenditure.

If we change food expenditure to be expressed in 1000s of pounds, i.e., divided by 1000, then $b_{1},b_{2}$ are divided by 1000.

If we change income to be expressed in 1000s of pounds, i.e., divided by 1000, then $b_{2}$ is multiplied by 1000.

# Non-linear Relationship
Suppose that the relation between x and y is of the form: $y_{i}=\beta_{1}+\beta_{2}\sqrt{ x_{i} }+e_{i}$.
- We can just replace $\sqrt{ x }$ with $z$.
- $y_{i}=\beta_{1}+\beta_{2}z_{i}+e_{i}$

## Non-linearity in the population parameters
There are some areas where we can use logarithms to make the equation linear.
For example, take:
- $y_{i}=\beta_{1}x_{i}^{\beta_{2}}e^{e_{i}}$
We can transform it:
- $\ln(y_{i})=\ln \beta_{1}+\beta_{2}\ln x_{i}+e_{i}$
And then use the above non-linear relationship method to create a new equation which *is* linear

Alternatively, take:
- $y_{i}=\beta_{1}e^{\beta_{2}x_{i}}e^{e_{i}}$
We can transform it:
- $\ln y_{i}=\ln \beta_{1}+\beta_{2}x_{i}+e_{i}$
### Change in significance of estimates
In the first case, the significance of $b_{2}$ will be different: it will measure *elasticity*.
Take:
- $\ln(\hat{y}_{i})=\ln b_{1}+b_{2}\ln x_{i}+e_{i}$
- And $b_{2}=0.52$.
- This means that a 1% increase in $x$ will lead, on average, to a 0.52% increase in $y$.

In the second case, the significance of $b_{2}$ is different: it measures the proportional change in $y$ per unit change in $x$.
Take:
- $\ln \hat{y}_{i}=\ln b_{1}+b_{2}x_{i}+e_{i}$
- And $b_{2}=0.0004$
- Then an increase in $x$ by 1 unit will, on average, increase $y$ by 0.04%.

However, if the equation cannot be made linear, we can no longer use OLS or a SLRM to estimate the relationship.
### Change in comparability
You cannot compare the $R^2$ values of two different regression functions if the dependent variable is given in different units.
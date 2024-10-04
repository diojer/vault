# Testing Joint Hypotheses
So far, we have only performed hypothesis testing for single population parameters.
- E.g.: $\beta_{j}=\beta^{0}_{j}$
We can extend the analysis to test hypotheses with multiple conjectures.
- E.g.: $H_{0}:\beta_{j}=\beta_{j}^{0}\text{ and }\beta_{k}=\beta_{k}^0$

To test the significance of a multivariate model, our null hypothesis is that all population parameters are equal to 0.
- E.g.: $y_{i}=\beta_{1}+\beta_{2}x_{2}+\beta_{3}x_{3}+\dots+\beta_{k}x_{k}+e_{i}$
- $H_{0}:\beta_{2}=\beta_{3}=\beta_{3}=0$
- $H_{1}:\text{ at least one of the }\beta \text{ is non zero.}$

To test the significance of the population parameters, we perform an F-test.
$$
F=\left( \frac{\text{reduction in RSS}}{\text{ cost in degrees of freedom}}\div \frac{\text{RSS in unrestricted model}}{\text{degrees of freedom in unrestricted model}} \right)
$$
- The unrestricted model is the model we're currently using.
- The restricted model represents the current model minus the $\beta$s we want to test the significance of
- The cost in degrees of freedom is $m-k$, where, i.e., the number of additional $\beta$s added
- The degrees of freedom in the unrestricted model is $n-m$, where:
	- $n$ is the total number of $\beta$s
	- $m-k$ is the number of additional $\beta$s added by the unrestricted model
- The reduction in RSS will always happen when adding new variables, because some of the residual will now be explained by the new model.

The idea is that we are looking at the reduction in the error term as a result of the newly introduced variables. We want to compare this reduction to the loss in degrees of freedom: a small reduction in RSS for a large loss in degrees of freedom indicates our new parameters are pretty shit.
We want our F test-statistic to be greater than our F critical value to justify adding our new parameters.
## Chow Test
This compares two different regressions with an added qualitative dummy variable, to test if the dummy variable has any extra explanatory power. The steps are just the steps detailed above.
# Polynomial Equations
The marginal effect on $y$ of $x$ will change if we introduce polynomials into the equation. For example:
![[Pasted image 20240528203802.png]]
The marginal effect of $x$ will now be:
- In eq1: $\beta_{2}+2\beta_{3}x$
- In eq2: $\beta_{2}+2\beta_{3}x+3\beta_{4}x^{2}$
This is different from our usual linear equations, where the marginal effect is just equal to some $\beta$.
We make equations quadratic to model the effects of diminishing or increasing returns.
# Interactive Continuous Explanatory Variables
This can be written as:
$$
y=\beta_{1}+\beta_{2}x_{2}+\beta_{3}x_{3}+\beta_{4}x_{2}x_{3}
$$
Where $\beta _{4}$ is capturing the interaction. This will again change the marginal effect of each explanatory variable on $y$.
$$
\begin{gather}
\frac{\delta y}{\delta x_{2}}=\beta_{2}+\beta_{4}x_{3} \\
\frac{\delta y}{\delta x_{3}}=\beta_{3}+\beta_{4}x_{2}
\end{gather}
$$
This should be used if we expect that the marginal returns will change according to some other variable. Sandra gives the example of regressing pizza expenditure on income and age.
- $y=\beta_{1}+\beta_{2}AGE+\beta_{3}INCOME+\beta_{4}(AGE\cdot INCOME)+e$
This means that the marginal propensity to consume pizza is given by:
$$\frac{\delta y}{\delta INCOME}=\beta_{3}+\beta_{4}AGE$$
# Ramsey's RESET test for functional misspecification
This is useful for testing to see if including polynomial or interaction terms is necessary.

In other words, testing if polynomial or interaction coefficients are statistically significant from zero.

The test is used to *see if* non-linear terms should be included. If we used the joint-hypothesis test, we would have to do a lot of rewriting. For example:
$$
\begin{align}
y&=\beta_{1}+\beta_{2}x_{2}+\beta_{3}x_{3} ~~(1) \\
y&=\beta_{1}+\beta_{2}x_{2}+\beta_{3}x_{3}+\beta_{4}x_{2}^{2}+\beta_{5}x_{3}^{2}+\beta_{6}x_{2}x_{3} ~~(2)
\end{align}
$$
And we would have to calculated the F-tests for equation (2). This is simple enough with only two explanatory variables, but the number starts to increase by a lot if we keep adding more explanatory variables. Thus, we use Ramsey's RESET test.

First, we calculate:
$$
\begin{align}
\hat{y}=b+b_{2}x_{2}+b_{3}x_{3}
\end{align}
$$
We find that by then calculating $\hat{y}^{2}$, we can capture all of the squared and interaction terms. Thus, we include $\hat{y}^{2}$ in our original equation to check for the significance of polynomial and interaction terms, rather than including the polynomial and interaction terms themselves.
$$\begin{align}
y=\beta_{1}+\beta_{2}x_{2}+\beta_{3}x_{3}+\gamma\hat{y}^{2}
\end{align}
$$
Here we can simply conduct a t-test to see if $\gamma$ is statistically significant. This will tell us whether we should include squared terms or interaction terms in our model. If we want to estimate whether we should include cubic terms, we should instead calculate $\hat{y}^{3}$.

This saves us many degrees of freedom, as we have added only one parameter rather than the three previously required.
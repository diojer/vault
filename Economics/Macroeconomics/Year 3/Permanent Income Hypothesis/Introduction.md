# Keynesian Consumption Theory
Consumption is formulated in the Keynesian Cross as:
$$
C=c_{0}+c_{1}(y-T)
$$
Where:
- c0 is autonomous consumption,
- c1 is the marginal propensity to consume,
- y-T is net income, i.e., income minus tax burden.
>In the 1950s, Friedman, Modigliani and Brumberg noted that this model has several problems:
>>In theory, consumption should be very volatile, but empirically consumption seems to be somewhat stable,
>>This does not differentiate between temporary and permanent changes in income, but empirically we know these two have substantially different effects,
>>There is no forward looking behaviour of the individual.
# Permanent Income Hypothesis
>Friedman argued that individuals smooth consumption and are forward-looking:
1. Individuals decide how much to consume over their lifetime,
2. Individuals consider not only current but also future income,
3. Individuals choose to consume a proportion of their lifetime income, using borrowing and savings to balance this proportion over high and low periods of income over their lifetime.
## Assumptions
1. We look at a representative individual/household/family,
2. Individuals aim for smooth consumption.
3. Utility function grows on consumption, but at a diminishing rate.
$$
\begin{eqnarray}
u(c_{t})&=&\ln(c_{t}) \\
\frac{\delta u}{\delta c}&=&\frac{1}{c_{t}}>0, \\
\frac{\delta^{2}u}{dc^{2}}&=&-\frac{1}{c_{t}^{2}}<0
\end{eqnarray}
$$
4. Individuals maximise the present value of expected utility, $V_{t}^E$ over their lifetime.
	- If someone lives infinite periods, then:
$$
\begin{eqnarray}
V_{t}^E &=& u(c_{t})+\frac{1}{(1+\rho)^1}u(c_{t+1}^E)+\frac{1}{(1+\rho)^2}u(c_{t+2}^E)+\dots \\
V_{t}^E &=& \sum_{i=0}^{\infty} \frac{1}{(1+\rho)^i} u(c_{t+i}^E)
\end{eqnarray}
$$
	- Where $\rho$ is the discount rate the calculate the *present value* of future consumption in **terms of utility**.
		- It can also be referred to as impatience.
5. Individuals make consumption decisions based on lifetime income, $\psi_{t}^E$.
$$
\psi_{t}^E=(1+r)A_{t-1}+\sum_{i=0}^\infty \frac{1}{(1+r)^i}y_{t+i}^E
$$
	- Where $(1+r)A_{t-1}$ is the present value of assets from the previous period.
6. Individuals do not inherit wealth, consuming their entire income during their lifetime.
	- Total consumption = total income
$$
\sum_{i=0}^\infty \frac{1}{(1+r)^i}c_{t+i}^E=(1+r)A_{t-1}+\sum_{i=0}^\infty \frac{1}{(1+r)^i}y_{t+i}^E
$$
7. Individuals can borrow without constraints.
## Maximising Utility
If we maximise our present value equation over two periods using the Lagrangian method, we obtain Euler's equation:
$$
c_{t}=\frac{1+\rho}{1+r}c_{t+1}^E
$$
- Consequently, present consumption is a function of impatience, interest rates and future consumption.
Depending on impatience and interest rates, present consumption will rise, remain constant, or fall into the next period:
1. $\rho=r\to$ constant consumption,
2. $p>r\to$ impatient consumer; consumption falls over time.
3. $\rho<r\to$ patient consumer; consumption grows over time.

If we continue with the assumption that $\rho=r$, and we solve for 2 time periods, then:
$$
\begin{eqnarray}
c_{t+1}^E &=& c_{t} \\
\to c_{t}+\frac{1}{1+r}c_{t}&=&(1+r)A_{t-1}+y_{t}+\frac{1}{1+r}y_{t+1}^E=\psi_{t}^E \\
\left[ 1+\frac{1}{1+r} \right]c_{t}&=&\psi_{t}^E \\
c_{t}&=&\frac{1+r}{2+r} \psi_{t}^E
\end{eqnarray}
$$
From the textbook, we know the solution for $\infty$ periods is:
$$
c_{t}=\frac{r}{1+r}\psi_{t}^E
$$
>These two equations tell us the optimal proportion of lifetime consumption at any given period, given that $\rho=r$ and we are looking at either 2, or infinite, periods.
## Predictions
- How does consumption change when income changes?
	- It depends on whether the change is anticipated, or unanticipated.
### Anticipated change
![[Pasted image 20241008123512.png]]
- In the PIH model, the change in consumption with respect to income is zero, whereas the change with respect to lifetime income is greater than zero.
	- In the Keynesian model, the opposite is true.
### Unanticipated change
![[Pasted image 20241008123759.png]]
- If there is a permanent, unanticipated change, the Keynesian and PIH models predict the same consumption pattern.
- However, for temporary unanticipated changes, the Keynesian model predicts a spike in consumption whereas the PIH model predicts a very small constant increase in all income, i.e., the temporary bonus is spread across the lifetime.

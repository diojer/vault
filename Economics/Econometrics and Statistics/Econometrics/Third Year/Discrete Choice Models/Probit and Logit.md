# Maximum Likelihood Intuition
1. Imagine we have two wheels: one with three quarters shaded blue and another with one quarter shaded blue. The non-blue sections are shaded white.
2. I spin one of these wheels three times and get: blue, blue, white.
3. If we had to figure out which of the two wheels, the 3/4 blue or 1/4 blue one, was spun, the **maximum likelihood estimator** tells us that we should assume the 3/4 blue one was spun.

Moving away from a set of options, if we assume I have some wheel $w$ which is shaded $x\%$ blue and I achieved a blue, blue, white outcome, then the *maximum likelihood* shading for the wheel is $66\%$ blue.

In practice, instead of maximising the likelihood function we maximise its logarithm, which is called the log-likelihood function. The value of $p$ that maximises one maximises the other.
# Probit
The Probit regression model with a single regressor $X$ is:
$$
P[y=1]=\Phi(\beta_{1}+\beta_{2}X)
$$
- Where:
	- $\Phi$ is the ==cumulative standard normal distribution==.

Suppose that $y$ is a discrete binary dependent variable which captures mortgage default. $y=1$ means that an agent has defaulted on his/her mortgage.

Suppose that the estimated coefficients are: $\hat{\beta}_{1}=-2$ and $\hat{\beta_{2}}=3$ and $X$ represents the ratio of the loan amount to the value of the property ($lvr$).
- What is the ==probability of default== if $lvr=0.4$?
	- Using our formula, we know it is $\Phi(-2+3\cdot 0.4)=\Phi(-0.8)$.
	- If we look at the cumulative normal distribution table, we know $\Phi(0.8)=21.2\%$.
	- So, when $lvr=0.4$, we know the probability of default is $21.2\%$.
# Logit
Logit with a single regressor, $X$:
$$
P[y=1]=\Lambda(\beta_{1}+\beta_{2}X)
$$
- Where:
	- $\Lambda$ is the **cumulative Logit distribution**, given by:
$$
\Lambda(\beta_{1},\beta_{2},X)= \frac{1}{1+e^{-(\beta_{1}+\beta_{2}X)}}
$$

Continuing with the mortgage example, if we assume $X=lvr=0.4$, $\hat{\beta_{1}}=-2$ and $\hat{\beta_{2}}=3$, then:
- Using our formula, $\hat{p}=0.31=31\%$.
# MEA and AME
>Marginal Effects at the Average; and Average Marginal Effects



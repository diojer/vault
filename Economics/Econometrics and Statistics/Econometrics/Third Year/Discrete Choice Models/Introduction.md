Many states in life are continuous.
- For example, your height, age
Many states are discrete.
- For example ethnicity, number of fingers, sex (!).
Some discrete states are binary, like sex, or like:
- Are you happy?
- Are you earning enough?
- Are you eating enough?

When something is a discrete, binary state, we model it using ***discrete choice models***.
- ==These are different from using dummy variables. In this instance, the *dependent* variable is binary, rather than an explanatory variable==.

Because the dependent variable is either 1 or 0, we are more interested in how the explanatory variables influence the probability of it being either 1 or 0, *rather than* how the explanatory variables marginally increase or decrease the dependent variable (as it cannot be marginally increased or decreased).
- Using this, we can model:
	- Why individuals default on mortgages,
	- Why some loan applications are rejected,
	- Why only some firms export,
	- Why students decide to study economics.
- The above are *all* discrete choices - you either do, or do not, default on a mortgage.
# Model
The aim is to model the probability of success, i.e., the probability $y=1$.
- We do not need to model the probability $y=0$ as the sum $P[y=1]+P[y=0]=1$.
- The alternative, $y=0$, is called the *base group*.
	- Choosing the base group does not affect the outcome of the analysis.
- OLS is unlikely to be an adequate tool because the dependent variable is discrete.
	- We should instead use probability models, but **these involve non-linear regressions**, and are estimated by the ==Maximum Likelihood== method.
		- Maximum Likelihood should ideally only be used in large samples.
We say:
$$
P[y=1]=F(\beta_{1}+\beta_{2} X)
$$
In other words, the probability of success is a function of the explanatory variable.
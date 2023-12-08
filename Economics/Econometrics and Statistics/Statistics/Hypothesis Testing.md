#maths #statistics #econometrics
# Relationship with [[Confidence Intervals]]:
The confidence interval is the range of acceptable hypotheses in hypothesis testing.
# Hypothesis
Is the hypothetical value of the population parameter plausible in light of the sample evidence or not?
The decision will depend on...
1. Discrepancy between the hypothetical value of the population parameter and the sample evidence. For example:
	1. $\mu_0$ is how we indicate the hypothetical mean. If $\mu_0$ is very different from $\bar{X}$, for example $\mu_0=100$ and $\bar{X}=10$, the hypothesis is implausible.
	2. This is calculated by: $\bar{X}-\mu_0$.
2. Imprecision associated with the sample evidence. For example:
	1. Is $\bar{X}=11$ typical?
		1. A small standard error means it is typical. A large standard error indicates that it is not typical.
3. Degree of risk we are prepared to accept in making the decision
# Three Stages of Hypothesis Testing
## Null and Alternative Hypothesis
The null and alternative hypotheses are opposites. For example,
$$
\begin{gather}
H_0:\mu=\mu_0 \\
H_1: \mu \neq \mu_0
\end{gather}
$$
The null hypothesis generally contains an equality, the alternative hypothesis generally contains an inequality.

Even if the null hypothesis seems implausible, if it is *more* plausible than the alternative hypothesis, we accept the null hypothesis.
## Test Statistic
1. Calculate a statistic called the **test statistic**.
	- This is the ratio of discrepancy and imprecision. $$\frac{\bar{X}-\mu_0}{\frac{\sigma}{\sqrt{n}}}$$
	- We use this because a discrepancy being large/small is relative to its imprecision. For example, if $\bar{X}=100$ and $\mu=10$, there appears to be a large discrepancy. However, if $\bar{X}$ is very imprecise, this large difference is to be expected. So, a larger imprecision makes a larger discrepancy less important.
2. Choose a sampling distribution for the **test statistic**.
	- From sampling theory, we know that the test statistic is a standardised distribution of $\bar{X}$.
## Decision Rule
We switch from looking at the discrepancy to looking at the test statistic.
The test statistic follows a standard normal distribution, because it is a standardised distribution of $\bar{X}$. We call this distribution $Z$.
![[Pasted image 20231128143909.png]]
How large must $Z$ be to reject the null hypothesis?
This is related to the risk we are willing to accept, in other words, if $Z$ falls within our confidence interval then the null hypothesis is accepted, else, it is rejected.
![[Pasted image 20231128144148.png]]
- [[Estimation with large samples|Example Calculation]], where $\mu$ should be substituted as $\mu_0$.
- [[Important z-values]].
# Types of Errors
## Type I
When a test rejects $H_0$, but $H_0$ is true. This is the complement of our confidence level, and is denoted as $\alpha$.
## Type II
When a test does not reject the null, but the null is false. This is denoted as $\beta$.
## Power of a Test
The power of a test is the complement of $\beta$: $$Power=1-\beta$$
![[Pasted image 20231128145317.png]]
# Hypotheses of Finite Populations With No Replacement
This is almost the same as the normal calculations, except the test statistic must be divided by the finite population correction (fpc),
$$
fpc=\frac{N-n}{N-1}
$$
# Hypotheses of Sample Proportion With Replacement
![[Pasted image 20231128145655.png]]
## Without Replacement
The test statistic must be divided by the fpc.

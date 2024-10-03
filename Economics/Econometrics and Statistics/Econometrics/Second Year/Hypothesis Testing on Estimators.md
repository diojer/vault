#econometrics #statistics #hypothesis
![[Pasted image 20240226153230.png]]
Or,
![[Pasted image 20240226153331.png]]
Or,
![[Pasted image 20240226153751.png]]

If we know the population model is:
- $y_{i}=\beta_{1}+\beta_{2}x_{i}+e_{i}$
and we estimate:
- $y_{i}=b_{1}+b_{2}x_{i}+\hat{e}_{i}$
Then we can use our estimates to hypothesis test.
We use a t-distribution because we don't know the population standard error
- We use the t-distribution to $n-2$ degrees of freedom.
- $t=\frac{\hat{\beta_{m}}-E[\hat{\beta_{m}}]}{SE(\hat{\beta_{m}})}$
	- Where $m=1 \text{ or } m=2$
# Interpreting from Stata
## P-Value
The p-value is:
- *the largest significance level at which we could carry out our test and still reject $H_{0}$.*
For example, if we are carrying out a test with a 5% significance level and get a p-value of 0.01, this means we could have carried out a test with a 1% significance level and *still* rejected the null hypothesis.
- Assuming we are using $H_{0}:\bar{X}\neq \mu$
If we get a p-value of 0.062, for instance, this means we can only reject the null hypothesis if we carried out a test with 6.2% or higher significance level, and must accept the null hypothesis if our significance level is below 6.2%.
## t
Stata returns the t-statistic under the $t$ column. To see if the result is statistically significant, we can look at the p-value or use the t-statistic and check it using a t-distribution table.
# Confidence Intervals
The confidence level is $1-\text{Significance Level}$.
The interval estimator for $\beta_{2}$ is:
- $\hat{\beta_{2}}\pm t_{c}\cdot SE(\hat{\beta_{2}})$
When we estimate an interval with 95% confidence, we mean that if we were to collect infinite samples, 95% of them would contain the population parameter $\beta_{2}$
## Stata
These two values are found under "\[95% Conf. Interval]" in Stata.
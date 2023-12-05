#statistics #econometrics #economics #maths #hypothesis #testing #confidence #intervals

We use the central-limit theorem to approximate large samples as normal distributions. However, with small-samples, this doesn't work.
# Distributions
- t-distributions - inference about the mean $\mu$
- $\chi^2$ distributions - inference about the variance $\sigma^2$
- F distribution - inference about the variance $\sigma^2$
## t-distributions
These are necessary when $\sigma$ or $\pi$ are not known, and cannot be used to approximate sample parameters.
![[Pasted image 20231205142512.png]]
If X is not normal, it's not normally distributed, and we cannot use t-distributions.
### t-distribution steps
- $\sigma^2$ must be unknown
	- Replace the unknown with its sample estimate, the sample variance.
- Sample must be small
- There are many t-distribution
	- Each is is identified with varying degrees of freedom ($\nu$):$$v=n-1$$![[Pasted image 20231205143357.png]]
	- t-distributions are much flatter with higher degrees of freedom - this means we have increasing risk/imprecision.
		- As $\nu\rightarrow\infty$, the t-distribution becomes the standard normal.
	- Now we can do confidence intervals without relying on so many assumed variables, etc., last year's data will be similar to this year's data.
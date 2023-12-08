#maths #sampling
A large sample is when $n>40$.

$$
\bar{X}:N(\mu, \frac{\sigma^2}{n})
$$
$$
z=\frac{\bar{X}-\mu}{\sqrt{\frac{\sigma^2}{n}}}
$$
To find out the confidence intervals for the population mean, we can substitute $z$ with its equation in one of the inequalities from [[Important z-values]].
For example:
$$
Prob(-1.645<\frac{\bar{X}-\mu}{\sqrt{\frac{\sigma^2}{n}}}<1.645)=0.9
$$
We can rearrange to get:
$$
\mu<\bar{X}+1.645\sqrt{\frac{\sigma^2}{n}}
$$
as the upper bound, and
$$
\mu>\bar{X}-1.645\sqrt{\frac{\sigma^2}{n}}
$$
as the lower bound.

Since we usually don't know what $\sigma$ (the population standard deviation) is, we usually replace $\sigma$ with $S$ (the sample standard deviation).
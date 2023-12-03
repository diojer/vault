# Population
- Total collection of items
- Can be of any size, depending on the purpose of the study.
- Can be either infinite/very large (e.g., UK population), or finite.
	- One item out of a very large population is practically 0, which is why we say populations like the UK population are infinite.
Random Variables, probabilities, expectations, etc., deal with populations.
# Sample
- To be useful, a sample must be representative of a population.
	- To achieve this, we use a technique called **random sampling**.
	- The items are a sub-set of the items in the population.
Confidence intervals, hypothesis testing, etc., deal with samples.
## Random Sample
- Each item in the population is equally likely (across items in the *same draw*) to be selected every time we make an observation.
- Can be:
	- With Replacement: An item from the population is drawn, and put back so it can be drawn more than once.
		- The probability of an item being drawn is consistent in successive draws.
	- Without Replacement: An item from the population is drawn, and not put back. It will be observed only once.
		- The population size decreases with successive draws, thus items' chance of being drawn increases with each successive draw.
	- Two cases are possible:
		- Random sampling from an infinite population OR random sampling from a finite population **with** replacement,
		- Random sampling from a finite population **without** replacement.
# Inferential Statistics
## Stage 1
Done through repeated sampling.
For example, for the sample mean $\bar{X}$, 
- Take several samples,
- obtain the sample mean for each sample,
- look at the behaviour of the sample mean across all of the samples.
The sample mean itself is also a random variable. This means it has:
1. A mean, $E(\bar{X})$,
2. A variance $Var(\bar{X})$
3. A distribution of a certain shape.
![[Pasted image 20231114144840.png]]
![[Pasted image 20231114144902.png]]

### Example
![[Pasted image 20231114142950.png]]
# Large-Sample Distributions
![[Pasted image 20231115110629.png]]
From any sample $x_n$, its...
- Mean: will be the population mean, $E(X_n)=\mu_x$
- Variance: will be the population variance. $Var(X_n)=\sigma^2_x$
The sample mean, $\bar{X}$ will be...
$$
\bar{X}=\frac{1}{n}\sum^n_{i=1}X_i=\frac{1}{n}(X_1+X_2+...+X_n)
$$
## Sample Mean Rules
### Sampling from an infinite population/finite population *with* replacement
#### Mean of $\bar{X}$
$$
\mu_\bar{X}=\mu_X
$$
The mean of $\bar{X}$ will tend to the population mean.
#### Variance of $\bar{X}$
Since all of the random variables $x_n$ are independent,
$$
\sigma^2_\bar{X}=\frac{\sigma^2_X}{n}
$$
The variance of $\bar{X}$ will tend to this value.
#### Standard Error of $\bar{X}$
The standard deviation of a sample mean is usually called the standard error.
$$
SE(\bar{X})=\frac{\sigma_X}{\sqrt{n}}
$$
The standard error of $\bar{X}$ will tend to this value.
#### Shape of the Distribution of $\bar{X}$
- If the population is normally distributed, so is $\bar{X}$ because of the reproductive property of the normal distribution.
- If the population is **not** normally distributed, the ***Central Limit Theorem*** ensures that $\bar{X}$ will be distributed normally provided the sample size (n) is **large** (>25).
#### Identity of $\bar{X}$
$$
\bar{X}:N(\mu_X, \frac{\sigma^2_X}{n})
$$
### Sampling from a finite population *without* replacement
#### Mean
(Same as *with* replacement)
#### Variance
The random variables $x_i$ and $x_j$ are no longer independent.
$$
\sigma^2_\bar{X}=\frac{\sigma^2_X}{n}\cdot \frac{N-n}{N-1}
$$
The finite population correction (fpc):
$$
fpc=\frac{N-n}{N-1}
$$
- In general: $(n>1)$, $fpc <1$, $\rightarrow$ variance is smaller than in the previous case.
- When n is small in relation to N, (sample ratio $\frac{n}{N}<0.1$), the fpc can be ignored.
#### Shape of $\bar{X}$
(Same as *with* replacement)
#### Identity of $\bar{X}$
$$
\bar{X}:N(\mu_X, \frac{\sigma^2_X}{n}\cdot\frac{N-n}{N-1})
$$
## Sample Proportion Rules
- Random Variable $X$:
	- Number of items with some attribute (e.g., items which are defective). This follows a binomial distribution.
- Population:
	- All items with/without the attribute.
- Population proportion $\pi$:
	- Proportion of items with the attribute in the population.
- Random sample size $n$:
	- Total number of samples examined.
$$
P=\frac{X}{n}
$$
$P$ is the sample proportion.
### Sampling from an infinite population/finite population *with* replacement
#### Mean of $P$
$$
E(P)=\pi
$$
#### Variance of $P$
$$
Var(P)=\frac{\pi(1-\pi)}{n}
$$
#### Shape of $P$
X is binomial. However, when
- n is large,
- $\pi$ is not extreme (not close to 0 or 1),
the binomial distribution can be approximated as a normal distribution.
Since P is a linear transformation of X, P also follows a normal distribution when these conditions are met.
#### Identity of $P$
$$
P:N(\pi, \frac{\pi(1-\pi)}{n})
$$
### Sampling from a finite population *without* replacement
X now follows a hypergeometric distribution.
#### Mean of $P$
(Same as *with* replacement)
#### Variance of $P$
$$
Var(P)=\frac{\pi(1-\pi)}{n}\cdot\frac{N-n}{N-1}
$$
#### Identity of $P$
$$
P:N(\pi, \frac{\pi(1-\pi)}{n}\cdot\frac{N-n}{N-1})
$$

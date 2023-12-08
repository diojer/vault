#maths #statistics #econometrics
# Characterisation of a PD
- Shape $\rightarrow$ mathematical form,
- Expected value (mean) $\rightarrow$ centre.
- Variance $\rightarrow$ spread.
# Uniform or Rectangular distribution
The rules and an example can be found [[Uniform Distribution|here]].
## Summary of Rules for Uniform Distribution, $f(X)$
$$
\begin{eqnarray}
E(X)&=&\frac{a+b}{2} \\ \\
Var(X)&=&\frac{(b-a)^2}{12} \\ \\
F(X) &=&\frac{x-a}{b-a}
\end{eqnarray}
$$
- The uniform distribution can be used when:
	- $X$ is known to be uniformly distributed,
	- As a ***first approximation***, when the distribution of $X$ is not known.
# Negative Exponential Distribution
- Continuous random variable $X$, where $X=[0<x<\infty]$.
- The probability density function: $f(x)=\theta e^{-\theta x}$, where $[\theta>0]$.
## Shape
![[Pasted image 20231017142716.png]]
## Summary of Rules
- The negative exponential distribution can be used to represent the *pdf* of waiting time.
	- E.g., distribution of the length of time between car accidents on a certain road.
		- $X$: Interval between successive car accidents
		- $\theta$: Mean occurrence rate.
$$
\begin{eqnarray}
E(X)&=&\frac{1}{\theta} \text{ i.e., the mean waiting time} \\ \\
Var(X)&=&\frac{1}{\theta^2}
\end{eqnarray}
$$
# Normal Distribution
- Continuous RV: $X$, where $X=[-\infty<x<\infty]$
- The probability density function, 
### $$f(X)=\frac{1}{\sigma\sqrt{2\pi}}e^{-\frac{1}{2}(\frac{x-\mu}{\sigma})^2}$$
## Shape
![[Pasted image 20231017144120.png]]

## Summary of rules
$$
\begin{eqnarray}
E(X)&=&\mu \\
Mode(X)&=&\mu \\
Median(X)&=&\mu \\
Var(X)&=&\sigma^2 \\
\end{eqnarray}
$$
- The curve is symmetric around the centre, $\mu$.
	- $f(X)$ is the same for $\mu-a$ and $\mu+a$.
	- There are two points of inflection, $\mu-\sigma$ and $\mu + \sigma$.
### Linear Transformation
Where $Y=a+bX$, and $X$ follows a normal distribution $N(\mu, \sigma^2)$,
- $Y=N(a+b\mu, b^2\sigma^2)$.
### Reproductive Property
if $X_1=N(\mu_1, \sigma^{2}_1)$ and $X_2=N(\mu_2, \sigma^{2}_2)$, then
- $(X_1-X_2)$ and $(X_1+X_2)$ are both normally distributed.
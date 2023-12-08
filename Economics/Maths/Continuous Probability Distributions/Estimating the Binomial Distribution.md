#maths
To estimate the binomial distribution, we will be using the normal distribution. This has the following rules:
	- We can get a good approximation when np > 5 ***AND*** n(1-p) > 5
	- We're using a continuous distribution to estimate a discrete distribution; this is problematic as for any given continuous distribution the probability of an exact value is zero
	- To overcome this we will use something known as a **continuity correction**. This is where, if we are interesting in the *prob(r=c)* from the binomial distribution, we will calculate:
		- *prob(c-0.5 < x < c+0.5)* from the normal distribution

## Example Question
$$
\begin{gather}
r:B(40,0.3) \\
\text{Q1: Estimate the probability r=10 using the normal distribution.} \\
\\
\mu = 0.3*40 = 12 \\
\sigma^2 = np(1-p) = 40*0.3*0.7=8.4 \\ \\ ~\text{Therefore...} \\
x:N(12, 8.4)
\\ \text{We can now convert this to a standard normal, } z:N(1,0)
\\ z = \frac{x-12}{\surd{8.4}}
\\ \\
prob(r=10) = prob(9.5<x<10.5) \\
\text{After plugging these numbers in to work out z, we get:}\\
prob(9.5<x<10.5) = prob(-0.86<z<-0.51)\\
prob(z < -0.86) = prob(z>0.86) = 0.1949 \\
prob(z < -0.52) = prob(z>0.52) = 0.3015 \\
0.3015-0.1949=0.1066 \\
prob(-0.86<z<-0.51) = 0.1066 \\
prob(r=10) \approx 0.1066

\end{gather}
$$

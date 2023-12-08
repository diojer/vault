#maths #statistics #econometrics
Calculating the expected value and variance can be found [[Expected Value and Variance|here]].
# Discrete Variables
## Average
The average is distinct from the expected value. The average is calculated using relative frequencies in a sample, and represents the *sample average*.
$$
\bar{X}=\sum_{x}x\frac{f}{n}
$$
Where $\frac{f}{n}$ is the relative frequency of a sample.
### How do we calculate $\frac{f}{n}$?
$$
\frac{f}{n}=\text{frequency of }x_n\div n
$$
## Expected Value
The expected value is calculated using the probability distribution: $$E(X)=\sum_{x}xf(x)$$It represents the expected value in a *population*.

Old expectation rules:
$$
\begin{eqnarray}
E(a) &=&a \\
E(aX)&=&aE(X) \\
E[f(X)\pm g(X)]&=&E[f(X))\pm E(g(X)]
\end{eqnarray}
$$

Some new expectation rules:
$$
\begin{gather}
E(X^2)=\sum_{x}x^2f(x) \\
E[g(X)]=\sum_{x}g(x)f(x)
\end{gather}
$$
# Continuous Variables
When we take continuous variable $X$ and probability density function $f(x)$...

## Expected Value
$$
\begin{gather}
E(X)=\int_{x}xf(x)dx \\
\text{for}~~~a<x<b~~~\text{or}~~~-\infty<x<\infty
\end{gather}
$$
Old expectation rules:
$$
\begin{eqnarray}
E(a) &=&a \\
E(aX)&=&aE(X) \\
E[f(X)\pm g(X)]&=&E[f(X))\pm E(g(X)]
\end{eqnarray}
$$
Some new expectation rules:
$$
\begin{gather}
E(X^2)=\int_{x}x^2f(x)dx \\
E[g(X)]=\int_{x}g(x)f(x)dx
\end{gather}
$$
# Variance
Defined as the mean squared deviation of $X$ around $E(X)$.
$$
E[(X-E(X))^2]=E(X^2)-[E(X)]^2
$$
In other words,
$$
Var(X)=E(X^2)-[E(X)]^2
$$
## Sample Variance
$$
s^2=(\frac{n}{n-1})\sum_{x}(x-\bar{X})^2\frac{f}{n}
$$
Where $\frac{f}{n}$ is the relative frequency of $x_n$.
## Population Variance
$$
Var(X)=E(X^2)-[E(X)]^2
$$
# Long Run
In the long run, as $n\rightarrow\infty$, the sample and population expected values and variances become equal.
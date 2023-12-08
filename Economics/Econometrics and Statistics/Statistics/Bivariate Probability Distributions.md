#maths #statistics #econometrics
- 2 RVs: $X$ and $Y$.
Multivariate probability distributions are usually a straightforward extension of bivariate P.D.s.

# Important Concepts
1. **Joint** probability distribution,
	1. We look at 2 random variables.
2. **Marginal** probability distribution,
	1. We look at 1 random variable, ignoring the other.
3. **Conditional** distribution.
	1. We look at 1 random variable, fixing the other at a specific value.
## Joint P.D.s
- 2 Discrete RVs: $X$ and $Y$.
- Set of all possible $X$: $x=x_1,x_2,...,x_n$.
- Set of all possible $Y$: $y=y_1,y_2,...,y_m$.
The joint probability distribution is defined as a function which gives the *probabilities of all of the combinations of X and Y*.
$$f(x,y)=P(X=x,Y=y)$$
The comma is the logical operator AND.
### Properties
- The outcomes (x,y) are mutually exclusive and collectively exhaustive.
- $f(x,y)>=0$, i.e., probabilities are non-negative
- The sum of all probabilities is equal to one, i.e., $$\sum_x\sum_yf(x,y)=1$$ (when the probabilities are correctly specified)


### Example:
$X=[0,1,2]\rightarrow x=0,1,2$.
$Y=[1,2,3]\rightarrow x=1,2,3$
$f(x,y)=\frac{1}{27}(x+y)$.
- so,
$$
\begin{eqnarray}
f(1,2)&=&\frac{1}{27}(1+2) \\
&=&\frac{3}{27} \\
&=&\frac{1}{9}
\end{eqnarray}
$$

## Marginal P.D.s
### Marginal Distribution of $\alpha$
Where $\alpha=[x,y]$ and $\beta=[y,x]$.
$$
f(\alpha)=\sum_\beta f(\alpha,\beta)
$$
i.e.,
$$
f(x)=\sum_yf(x,y)
$$
![[Pasted image 20231018113604.png]]
![[Pasted image 20231018113713.png]]
### Algebraic Solution
$$
\begin{eqnarray}
f(x)&=&\sum_yf(x,y) \\
&=&\sum_y\frac{1}{27}(x+y) \\
&=&\frac{1}{27}(\sum_yx+\sum_yy)
\end{eqnarray}
$$
## Conditional P.D.s
$$f(x|y)=\frac{f(x,y)}{f(y)}$$
Where | is the "given that" operator.
### Example
Conditional distribution of $X$ given $Y=1$:
$$
f(x|y)=\frac{f(x,Y=1)}{f(Y=1)}
$$
![[Pasted image 20231018114649.png]]
#### Algebraically
$$
\begin{eqnarray}
f(x|Y=1)&=&\frac{\frac{1}{27}(x+y)}{\frac{1}{9}(1+y)} \\
&=&\frac{1}{6}(x+1)
\end{eqnarray}
$$
The denominator can be found by plugging the value of Y into its marginal probability equation.
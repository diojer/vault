#economics #exam #dynamic #ricardian
**A two period economy is characterised by a representative consumer with a utility function, $U=C^{\alpha}_1 C^{1-\alpha}_2$ and their present discounted value of lifetime income is, $W=Y_1 + Y_2 \div (1+r)$ $Y_1 = 5$, $Y_2=15$, $\alpha=0.5$ and the interest rate in the economy is zero for everyone. Using the Lagrangian method, derive the optimal consumption choice for the representative consumer, explain your steps, and state whether the consumer is a lender or a borrower. Starting from this result, explain and discuss the theory of Ricardian Equivalence, and whether its prediction about the size of the government spending multiplier are supported by empirical research.**
# Plan
- Intro
- Lagrangian Analysis
- Ricardian Equivalence
	- What is it?
	- When it holds
	- Limitations
- Gov. Multiplier
	- Under Ricardian Eq.
	- Normal linear multiplier
	- Non-linear multiplier
## Lagrangian Analysis
$$
\begin{eqnarray}
L=C^{\alpha}_1 C^{1-\alpha}_2 &+& \lambda(W-C_1-C_2) \\
\frac{\delta L}{\delta C_1}&=&0 \tag{1} \\
\frac{\delta L}{\delta C_2}&=&0 \tag{2}\\
\frac{\delta L}{\delta \lambda}&=&0 \tag{3}\\
\end{eqnarray}
$$
Then, we find (1) and (2) in terms of $\lambda$ and set them equal to each other:
$$
\begin{eqnarray}
\alpha \frac{C_2}{C_1}&=&(1-\alpha) \tag{4} \\
C_2 &=& \frac{(1-\alpha)C_1}{\alpha} \tag{4'} \\
C_1 &=& C_2\frac{\alpha}{(1-\alpha)} \tag{4''} \\
\end{eqnarray}
$$
Then, we substitute (4') into (3) to find $C_1$ in terms of W, and (4'') into (3) to find $C_2$ in terms of W.
$$
\begin{eqnarray}
C^*_{1}&=&\alpha W \\
C^*_{2}&=&(1-\alpha) W \\
\end{eqnarray}
$$
So, our optimal consumption in period one is $20 \div 2 = 10$, meaning we must borrow in period 1. In period two, we back this back.
## Ricardian Equivalence
- Private budget constraint
	- $$C_1+\frac{C_2}{1+r} = Y_1-G_1+\frac{Y_2-G_2}{1+r}$$
- Public budget constraint
	- $$G_1+\frac{G_2}{1+r} = T_1+\frac{T_2}{1+r}$$
Assuming that $r=r_G$ - not true in reality.
The **private sector** fully internalises the public sector budget constraint.
Timing of taxes doesn't matter.
There is no impact of government spending on national output over the two periods, i.e., gov. spending multiplier is 0.
No impact on optimal consumption equations.
Some empirical evidence.
### Problems
- $r \neq r_G$
- Different budget and credit constraints across the population which would mean some people don't save in preparation of increased taxes.
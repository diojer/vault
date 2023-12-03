## Assumptions
- Households live for two periods,
- Households have perfect foresight and behave optimally,
- Households receive income in each period, $Y_1, Y_2$.
- In period 1, households choose how much to consume, $C_1$, and how much to save, $S_1$.
- In period 2, households consume, $C_2$, all of their income, $Y_2$, and all of their savings, $S_1$.
- We are assuming there is no government and no trade.

## Household budget constraints
Where:
- $C$ is consumption
- $Y$ is income
- $S$ is savings
- $r$ is the interest rate
- $W$ is the total earnings over both periods
	- $W=Y_1+\frac{Y_2}{1+r}$
- $\alpha$ is impatience.
### Period 1:
$$
C_1=Y_1-S_1
$$
Note: $S_1$ can be negative, implying money has been borrowed.
### Period 2:
$$
C_2=Y_2+S_1(1+r)
$$
If $S_1<0$, debt+interest will have to be repaid.

### Plotting the graph
We want $C_2$ in terms of $C_1$, so that we can plot a budget constraint graph.
$$
C_2=(1+r)(W-C_1)
$$
![[Pasted image 20231006123225.png]]

We can also calculate the gradient, $\frac{\delta C_2}{\delta C_1}$:
$$
\frac{\delta C_2}{\delta C_1}=-(1+r)
$$
The $y$-intercept represents what we gain if we save all of our income in period 1. If $C_1=0$,
$$
C_2=(1+r)W
$$
The $x$-intercept represents what we gain if we spend all of our money in period 1. If $C_2=0$,
$$
C_1=W
$$
## Household Preferences
Households have a lifetime utility function:
$$
U=(C_1,C_2)
$$
### Indifference Curves
There are three different types of indifference curves:
![[Pasted image 20231006123942.png]]
These hold for most consumption. It means we are experiencing diminishing marginal utility when we "overspend" in one period.
When we are spending almost all of our income in $C_1$, we are willing to sacrifice a lot of spending in $C_1$ just to gain a small amount of spending in $C_2$.
For a consumer to have this indifference curve, they must discriminate to some degree spending in $C_1$ and $C_2$.

![[Pasted image 20231006125011.png]]
This is a Leontief indifference curve, and holds true for situations where an identical increase in both periods is necessary for an increase in utility. In relation to goods, this could be the purchase of left and right shoes - the utility is the same if we buy 10 left shoes and 10 right shoes, as if we buy 10 left shoes and 100 right shoes. Utility only increases when spending in *both* periods increases.

![[Pasted image 20231006125832.png]]
This is a perfect substitution indifference curve. It means that the household views $C_1$ and $C_2$ as perfectly substitutable, and is completely indifferent between spending in both, so even if we are spending all of our income in period 1, having an extra unit of consumption in $C_2$ is seen as the same utility as consuming that unit in $C_1$.
Contrast this with the first indifference curve, where spending all of our income in $C_1$ would mean an extra unit of $C_2$ spending is equivalent to roughly 2.5 units of $C_1$ spending (on the blue indifference curve).

#### Key Principles:
- The slope of an indifference curve is equal to the marginal rate of substitution, i.e., how much $C_2$ the consumer is willing to exchange for an extra unit of $C_1$.
- If both $C_1$ and $C_2$ increase, utility increases.
- Indifference curves do not have a positive slope.
- Separate indifference curve do not cross
- As $C_1$ increases, the marginal rate of substitution cannot increase, it stays constant or falls

### Optimal Consumption
Optimal consumption is where the indifference curve is tangent to the budget constraint line.
![[Pasted image 20231006130933.png]]
Our income levels, $Y_1$ and $Y_2$, are different from our optimal consumption levels $C_1$ and $C_2$. So, we either borrow/save our income so that $C_1=Y_1-S_1$ and $C_2=Y_2+(1+r)S_1$.

### Maths Via Lagrangian
There are three steps:
1. Set up the Lagrangian,
2. Find the First Order Conditions,
3. Solve the system of equations,
4. Figure out the economic interpretation.

To set up the Lagrangian, we have to know our utility function and our constraint function.
Utility function:
$$
U=C_{1}^{\alpha}\times C_{2}^{1-\alpha}
$$
Where $\alpha$ is our preference to spend in $C_1$. It is also known as **impatience**.
Our constraint function is just the equation of the budget line ($C_2=(1+r)(C-W)$) set equal to 0:
$$
W-C_1-\frac{C_2}{1+r}=0
$$
To set up the Lagrangian:
$$
L=f(C_1,C_2)+\lambda g(C_1, C_2)
$$
where $f$ is our utility function and $g$ is our constraint.
We solve for $\lambda$ by deriving $L$ with respect to $C_1, C_2,$ and $\lambda$, and solving for $\lambda$, then $C_1$ and $C_2$ in terms of the constants $\alpha$, $r$ and $W$.
#### Optimal Consumption in Period 1
$$
C_{1}^{*}=\alpha W
$$
#### Optimal Consumption in Period 2
$$
C_{2}^{*}=W(1+r)(1-\alpha)
$$
## Analysing a change in interest rates
When interest rates rise in period 1, consumption in period 2 becomes relatively cheaper, so consumption in the present becomes relatively more expensive. This is known as the substitution effect.
- The substitution effect causes our budget constraint to rotate clockwise (becoming **steeper**).
If we are borrowing, it has a *negative* impact on our income, this is known as the income effect.
- The income effect causes our budget constraint to shift leftwards **if we are borrowers**.

If we are ***savers***, then the income effect causes our budget line to shift to the right.
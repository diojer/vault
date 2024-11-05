- Keynesian theories on investment say it is a function of **expectations and the evolution of the economy**.
- Tobin's $q$-theory, a New-Keynesian theory, suggests that investment is a function of marginal returns and costs of investment.
>Reminder: investment is accounted for as Gross Fixed Capital Formation
# Keynesian Investment
$$
I=a_{0}-a_{1}r
$$
Where:
- $a_{0}$ are the "Animal Spirits", i.e., an exogenous component capturing expectations,
- $a_{1}$ is endogenous, capturing investment's reaction to changes in the rate of interest.
---
The desired level of capital stock, $K_{t}^*$ is:
$$
K_{t}^*=vy_{t}^E
$$
Where:
- $v$ is the capital-to-output ratio,
- $y_{t}^E$ is the expected level of production.
>As investment is defined as a change in capital stock, we get:
>>$I=K_{t}^*-K_{t-1}^*=v(y_{t}^E-y_{t-1}^E)$
>In other words, investment depends on the expected growth of the economy.
>This also explains the accelerator affect, where an increase in output spurs investment which increases output.
## Problems
1. No microeconomic foundations,
2. Empirics seem to point to some *lumpiness* in investment.
# Tobin's $q$
$$
q=\frac{\text{Marginal Benefit of Investment}}{\text{Marginal Cost of Investment}}
$$
Where:
$$
\begin{eqnarray}
q&>&1,MB>MC,\text{Firm wants to invest} \\
q&=&1,MB=MC,\text{Optimal level of capital stock} \\
q&<&1,MB<MC,\text{Firm will reduce the capital stock}
\end{eqnarray}
$$
Practically, measuring the MB and MC of investment - known as *Tobin's Marginal q* - is difficult.
Instead, we use Tobin's Average Q:
$$
Q=\frac{\text{Market Value}}{\text{Cost of Replacing Capital}}
$$
Because:
- Market Value should ideally incorporate future earnings, assuming an efficient market hypothesis. Consequently, rather than the marginal benefit of investment, it seems to proxy for the total sum of all the benefits of investment (represented as profit).
	- Critically, the Market Value - because of the efficient market hypothesis - should also be forward-looking.
- The cost of replacing capital captures the total costs thus far of investment.
**This focus on total, rather than marginal, is why this is Tobin's Average Q**.
>Same principles apply - when $Q>1$, the market is valuing future prospects, giving the impetus to invest.
## Model 1 - Perfect Competition, No depreciation.
1. Output is a positive function of capital, with constant marginal product of capital.
2. Capital markets are efficient - firms can raise money as they wish and are not credit constrained (!)
3. The cost of investment, $C(I)=P_{I}I$, where:
	- $P_{I}$ is the price of capital stock,
	- $I$ is the quantity increase in capital stock.
4. No cost of adjusting to new capital goods.
5. Costs are incurred at time $t$, capital is *installing* at time $t$ and *installed* at times $t+i, i = 1,2,3,\dots,\infty$.
6. Capital does not depreciate,
7. Firms operate in perfectly competitive markets.
8. Interest rates are constant.
9. A firm chooses investment that maximises the present value of its profits.
---
*Equations*
- $y=f_{k}K$
	- Where $f_{k}$ is a constant representing the marginal output of capital stock.
		- $\frac{\delta y}{\delta K}=f_{k}$
- $\text{Revenue}=Pf_{k}K$
	- Where $P$ is the price of output,
$$
V_{t}=\sum_{i=1}^\infty \frac{1}{(1+r)^i} Pf_{k}K
$$
	- Where $V_{t}$ is the present value of investment.
	- We can extract the constant term and rewrite the infinite sum:
$$
V_{t}=Pf_{k}K \cdot \frac{1}{r}
$$
---
*Maximisation*
- We maximise present value subject to the constraint $I_{t}=K_{t}-K_{t-1}$
This gives us:
$$
\frac{Pf_{k}}{rP_{I}}=1=q
$$
- This means that to maximise profits, firms investment such that the *marginal benefit* is equal to *marginal cost*, i.e., Tobin's Marginal $q$.
---
*Applied*
>$I=f(P,f_{k},P_{I},r)$
>$I=f(+,+,-,-)$
- This means that investment is exogenous (!)
- Monetary policy is the only tool to control investment.
Investment grows if:
1. There are higher prices, $P$,
2. Better technological improvements that raise the marginal product of capital, $f_{k}$,
3. Lower unit costs of investment, $P_{I}$,
4. Lower interest rates, $r$.
## Model 4 - Imperfect Competition, No depreciation
>All the same assumptions as Model 1, except:
6. Firms operate in an imperfect goods market.
In this case:
$$
I=f(P,f_{k},P_{I},r,D)
$$
Where:
- $D$ is aggregate demand.
This lines up Tobin's model with the Keynesian assumption that investment depends on the wider economy.
- Fiscal and monetary policy can control investment, so long as fiscal policy can affect AD.
- This provides microeconomic foundations for Keynes' desired capital and accelerator theories.
# Empirical problems of Tobin's $q$
1. Investment is lumpy
	- Investment concentrates in specific plants at specific periods.
	- For example, firms might invest every ten years - this is not subject to considerations on marginal investment costs.
2. Firms are very sensitive to changes in cash-flow.
	- Sensitivity to cash-flows is larger during recessions, and for smaller firms.
	- This implies that firms face credit-constraints due to credit market imperfections.
3. Evidence suggests that $q>1$ is not sufficient to trigger investment.
	- Costs play a modest part in explaining investment.
	- Firms face uncertainty in future profits and there is "*value in waiting*".
	- This suggests a hurdle where $q>\beta$, where $\beta=1-\rho_{I}$, where $\rho_{I}$ is the impatience of investors.
		- Sometimes $\beta$ may be as high as 3 or 4.
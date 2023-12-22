#economics #monetary #interest #inflation #model #kucharski
[[IIMR Essay Notes.pdf|Essay By Hubert Kucharski]], accessed on the 16th of December, 2023
# Summary
# Contents
- Initial Assumptions,
- Deriving a model from these assumptions,
- What still needs to be done,
- References.
# Assumptions
1. Firms and workers have sticky normal profits,
2. A firm's marginal cost curve embeds the owner's opportunity cost,
3. Lower profit levels can reduce investor sentiment for a firm,
4. Firms have knowledge about what factor inputs should be in the future,
5. Firms do not make pricing decisions based on marginal or average revenues. Instead, firms are much more likely to make pricing decisions for the following reasons:
	1. What their competitors are doing
	2. A1
6. Simplified economy: $Y=C+I+G$
	1. $C=c_0+c_1(Y+T)$
	2. $I=b_0+b_1(Y, r+x)$
7. Profits must be dependent on investment,
# Deriving a Model From these Assumptions
## Part 1
1. From A1 and A2, we know normal profit levels must be, at a minimum, equal to the profit levels of the previous period.
2. From A1, A2 and A3, we know that for larger businesses with greater shareholder interest, this fact is even more enforced. Retaining the same level of profit for these shareholders is even more imperative than for firms ran by small businesses.
	1.  This means that businesses will always try to cling onto normal profit levels; rather than shutting-down, they will try to increase price.
	2. If all business owners raise prices to retain normal profit, we see inflation. This causes an increased demand for wages which would increase the marginal cost; workers and firms will start fighting over the wage and price share.
3. Thus, mark-up exists because firms can leverage their position to underpay factor inputs.
### Part 1 Issues
- 1.3 is an interesting point - A2 suggests that the opportunity cost forms a part of the mark-up, but 1.3 suggests that mark-up only exists when factor inputs are being underpaid. However, doesn't an opportunity cost, thus mark-up, exist even when no factor inputs are being underpaid, i.e., perfect competition?
	- If you are saying that opportunity costs don't form part of mark-up, that seems counterintuitive as they would surely fall in the price share camp.
	- If opportunity costs are a part of the mark-up, then they don't only exist because firms can *underpay* factor inputs.
	- To suggest an alternative, what is true is that mark-up, from the baseline normal profit, can only *increase* when firms leverage their position to underpay factor inputs, usually labour. 
		- This seems to mesh well with A2, microeconomic assumptions, and also makes intuitive sense: when mark-up increases, firms are using their leverage; when it decreases, firms are losing their leverage.
## Part 2
1. $\Pi_{n+1} \geq \Pi_n$, where $\Pi$ is profit, $n$ is the current time period, from 1.1
2. $\Pi_n=Q(m)$ where $Q$ is the quantity of goods sold and $m$ is the mark-up,
3. $Q* \rightarrow MC=AC$ from A5,
4. $\Pi_n = I(m)$ from A6 and A7
	1. Even if investment rate is high and mark-up is zero, firms will be making normal profits - $m \geq 0$ explains supernormal profit.
### Part 2 Issues
- It looks like you're taking $\Pi$ as total profit - the sum of normal and supernormal. However, the 1.1 identity only holds for normal profit, not $\Pi$ - this comes form 1.1. If $\Pi$ *is* just normal profit, identities 2.2 and 2.4 don't hold.
- For 2.2, why equate it to $Q$ instead of $C$?  $Q$ is, after all, the total quantity of goods sold, i.e., consumed.
- Why is $\Pi_n=I(m)$?
	- If we take $\Pi$ to be normal profits, then $\Pi$ has no relation to $m$.
	- If we take $\Pi$ to be total profits, then $\Pi$ is some function of both production and consumption. It remains unclear why we should accept A7 and thus 2.4.
## Part 3
1. $m_{n}\geq (wL_{n+1}-wL_{n})$, where $w$ is wages, $L$ is labour
2. The higher $wL_{n+1}$, the higher the future expected price level as workers look to demand higher wages,
3. The source of the mark-up, or surplus value, comes from the fact that worker compensation now does not align with inflation rates.
	1. Consequently, workers must subsidise their spending with either credit or savings.
### Part 3 Issues
- Is 3.1 true? Does mark-up always need to be greater than, or equal, wage growth? First, we have the issues I raised prior - it seems like, if we're assuming sticky *total* profits (not yet assumed) then only the *growth* of mark-up need be greater than or equal to the *growth* of wages. If we're only assuming sticky *normal* profits then mark-up can fluctuate to accommodate wage growth.
- 3.3 should be revised - the source of mark-up, i.e., underpaying factors of production, comes from worker *and capital* compensation not being aligned with inflation rates. If total rates are aligned with inflation, e.g., capital but not worker compensation, mark-up does not rise despite a decrease in relative worker compensation.
- 3.3.1 - is decreasing spending not also an option? Only if total income falls below $c_0$ does spending have to be subsidised no?
At this point, I don't really agree with equation (1), seems like you should be equating the following:
$$
\frac{\delta}{\delta n}(wL_{n+1}) \leq \frac{\delta}{\delta n}(m_{n})
$$
i.e., the change in wage growth in the next period must be less than or equal to a change in mark-up in the current period. Alternatively:
$$
wL_{n}-wL_{n+1}\leq \frac{\delta}{\delta n} \left( \frac{a}{L}(Y-Y_{n}) \right)
$$
However, it seems like $n$ is being equivocated here - on the left-hand side, it refers to the time period, whereas on the right-hand side, it refers to that and the optimal level of output. To simplify:
$$
wL_{t}-wL_{t+1}\leq \frac{\delta}{\delta t} \left( \frac{a}{L}(Y-Y_{n}) \right)
$$

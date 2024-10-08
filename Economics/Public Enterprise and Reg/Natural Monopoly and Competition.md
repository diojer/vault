# Defining Natural Monopoly
- The strict definition is where a firm has a cost function that is **sub additive**.
$$
C(Y)<\sum_{i}C(y_{i})~;~\sum_{i}y_{i}=Y~;~i=1,2,\dots,k~;~k\geq 2
$$
- In other words:
	- The cost of total output Y is less than the sum of the cost of that output subdivided.
	- Essentially, it is cheaper for one firm to produce the total output than to subdivide that production process between multiple firms.
	- This does not necessarily imply falling average cost over *all* output levels.

| Scale          | Increasing returns        | Constant returns | Decreasing returns                   |
| -------------- | ------------------------- | ---------------- | ------------------------------------ |
| Inputs double, | Output more than doubles. | Output doubles.  | Output increase by less than double. |
## Sources of increasing returns to scale:
1. Specialisation,
2. Economies of dimension, e.g., the volume of a pipeline increase proportionally faster than the surface area,
3. Law of large numbers: the amount of reserve capacity needed in production increases less-than-proportionately with output,
4. Buying power - large orders will often incur a lower cost (due to the seller's own economies of scale),
5. Economies of density:
	- E.g. To implement a rail service between two cities, you have to make a large initial investment to build the railway. Eventually you get to a point where full capacity is reached and you have to build a new railway.
		- Essentially, the capacity increases in fixed increments, and only when it is full is more investment required. So costs do not increase pro-rata, but instead in set increments all at once.
## The single product case
>Falling unit cost over all output levels are sufficient, but not necessary, for a natural monopoly to exist.
- The alternative is a weak, or non-sustainable, natural monopoly.
![[Pasted image 20241007153145.png]]
>AC1 represents the average costs when one firm is in the market, AC2 represents the average costs when 2 firms are in the market.
- In this industry, a weak natural monopoly exists at demand levels D1 and D2, because one firm producing the total output is cheaper than two. However, because there are not constantly falling average costs, at some point it will be cheaper for multiple firms to produce (given sufficient demand). This occurs at beyond AC1 and AC2's point of intersection and at D3.

![[Pasted image 20241007153408.png]]
>This is a strong natural monopoly, where it will *always* be cheaper for a single firm to produce, due to constantly falling average cost curves.
## Multi-product case
- With multiple products, we introduce *economies of scope* as well as *economies of scale*.
$$
C(q_{1},q_{2})<C(q_{1},0)+C(0,q_{2})
$$
- In other words, the cost of producing both products simultaneously is less than the total cost of producing them separately.
### Example cost functions with multiple products
$$
C(Q_{1},Q_{2})=Q_{1}+Q_{2}+(Q_{1}Q_{2})^{1/3}
$$
- The above cost function displays economies of scale, but diseconomies of scope.
>Economy of scale:
$$
\begin{eqnarray}
C(Q_{1}, Q_{2}) &=& Q_{1}+Q_{2}+(Q_{1}Q_{2})^{1/3} \\
C(2Q_{1},2Q_{2})&=&2Q_{1}+2Q_{2}+(2Q_{1}2Q_{2})^{1/3}\\
C(2Q_{1},2Q_{2})&=&2Q_{1}+2Q_{2}+2^{2/3}(Q_{1}Q_{2})^{1/3}\\
C(2Q_{1},2Q_{2})&<&2\cdot C(Q_{1},Q_{2})
\end{eqnarray}
$$
>Diseconomies of scope:
$$
\begin{eqnarray}
C(Q_{1},0)&=&Q_{1}+0+0 \\
C(0,Q_{2})&=&0+Q_{2}+0 \\
C(Q_{1},Q_{2}) &>& C(Q_{1},0)+C(0,Q_{2}) \to Q_{1}+Q_{2}
\end{eqnarray}
$$
>Consequently, while looking at returns to scale might've suggested a natural monopoly, the diseconomies of scope not only cancel this out, but reverse the trend to such an effect that it would be cheaper to have more than one firm operating in the industry.
>Thus, this industry does not incur a natural monopoly.

**A natural monopoly thus depends on both the scale *and* scope properties of the industry.**
# Do we need to regulate entry and prices?
>Because of the nature of natural monopolies, extra firms joining once a regulatory burden has been placed on the natural monopoly will decrease consumer welfare, benefiting the joiner and hurting the incumbent.
- In the case of a strong natural monopoly, there are no benefits to a firm for joining.
	- The shape of the average cost curve means that new joiners would either have to: incur costs higher than the price, or produce at such a level that the lower-than-price costs are not covered due to the slope of the demand line.
- In the case of a weak natural monopoly, regulatory burdens on the incumbent provides space for a joiner.
![[Pasted image 20241007174632.png]]
1. The incumbent produces QI1 and regulators force them to charge PR: their average cost, CI1.
2. Due to the existence of an area of potential average costs below the regulatory price, a new firm can join, producing QJ, still charging PR but now making supernormal profit.
3. Due to regulatory burden, the incumbent must cover the difference to ensure the same number of people are covered. The difference is: $Q_{I2}=Q_{I 1}-Q_{J}$.
4. When producing this quantity, the incumbent incurs an average cost higher than the regulatory price, PR, causing them to lose money.

- Another example is the following:
>The cost of supplying water to one community, C(1), is £300.
>>This accounts for the initial cost of building a reservoir and water pipes to the houses in that community.
>The cost of supplying water to two communities, C(2), is £400.
>>The difference, £100, is less than the initial cost because no new reservoir needs to be built, just new pipes.
>The cost of supplying water to three communities, C(3), is £650.
>>The difference, £250, is more than the previous difference due to a need to increase capacity of the reservoir.
- This can be represented by a sub-additive cost function, and consequently whichever firm supplies water is a natural monopoly.
However, due to some peculiarities of the cost function, a new joiner can take advantage of the incumbent's regulatory burden of charging the average cost, which when supplying three communities is ~£217.
1. A new firm could join and supply water to just the first two communities at a total cost of £400.
2. The average cost for this joiner is £200. Consequently, they can charge between £200-£217 and make supernormal profits.
3. The incumbent must now charge a higher price to the third community to cover their costs or go out of business due to losses.

This problem arises because the first two communities are essentially cross-subsidising the third community. 
- We know this because the marginal cost of adding the third community, £250, is greater than the price charged to the third community, £217. The only way to make up this difference is by charging the previous two communities *more* than their average combined marginal cost, £200. 
While this could be seen as unfair, the fact that any community was chosen first is a random matter, and consequently each community has an equal chance of being the third community.
## On the other hand,
- There are a few caveats: why competition in a natural monopoly is not necessarily a bad thing:
1. New entrants might stimulate improvements in quality,
2. New entrants may stimulate productivity gains, lowering the average cost curve.
>But, in general, new entry seems to undermine the efficient cost structure achieved by a natural monopoly and regulators.
# Real World Application
Some typical natural monopolies and their cost elasticities (i.e., percentage change in cost divided by percentage change in output):

| Industry                        | Elasticity |
| ------------------------------- | ---------- |
| Gas                             | 0.9        |
| Electricity                     | 0.72       |
| Water and sewerage              | 0.96       |
| Rail infrastructure maintenance | 0.5-0.9    |
(Elasticity<1 means increasing returns to scale).
>Economies of density in these cases are typically greater than economies of scale.

However - competition has been introduced in many of these industries in real life:
- Electricity distribution,
- Gas distribution,
- Rail,
- Telecoms,
- Postal Services
Why? **Will be answered in the next lecture**. (New developments in regulation mean we can get the best of economies of scale, scope, and product markets benefits from competition.)
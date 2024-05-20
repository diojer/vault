# Formal Collusion
- Includes cartels
	- Members fix quantities or prices subject to explicit rules
	- Compliance is monitored and there are penalties for cheating
	- Examples: Libor scandal, exchange rate fixing scandal
# Tacit Collusions
- No formal agreements
# Game Theory Approach

|            | Firm1 Low | Firm1 High |
| :--------- | :-------- | :--------- |
| Firm2 Low  | £18/£18   | £15/£20    |
| Firm2 High | £20/£15   | £16/£16    |
This is a prisoner's dilemma game, i.e., the dominating strategy is to go high for both as they will be better whatever the opponent does.
## Tit-for-tat
In a tit-for-tat situation, we need to compare two different futures to decide which path a firm will go down, i.e., will they follow a co-operation signal or not?
- Present value (sum of future possibilities) for cooperation:
$\pi^{(co-op)}+\frac{\pi^{(co-op)}}{1+r}+\frac{\pi^{(co-op)}}{(1+r)^2}+\dots$
i.e., $\pi^{(co-op)}+\pi^{(co-op)}\sum_{1}^{\infty}\frac{1}{(1+r)^i}$
- Present value of cheating:
$\pi^{(cheat)}+\pi^{(CN)}\sum_{1}^{\infty}\frac{1}{(1+r)^i}$
- We also know that the geometric sum sums to $\frac{1}{r}$ when it approaches infinity.

Whenever interest rates are low, then, firms are more likely to cooperate.
## Firm Cooperation Condition
$$
\pi^{coop}+\frac{\pi^{coop}}{r}>\pi^{cheat}+\frac{\pi^{CN}}{r}
$$

## Finite Horizon
When the game has a last move, whoever gets the last move will cheat, given that the other co-operated last period. Since both players know this, the second-to-last player will never co-operate on their last move.
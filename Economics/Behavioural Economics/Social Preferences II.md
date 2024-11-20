Social preferences are not irrational.

The dictators choices must satisfy the budget constraint $p_{1}x_{1}+p_{2}x_{2}\leq m$
- $x_{i}$ is the amount received by "self" or "other",
- $p_{i}$ is the price of keeping or giving.
	- In the standard version, $p_{1}=p_{2}=1$.
	- If $p_{i}<1$, player $i$ will receive *more* than is allocated to them, because it is *cheaper* to give to them.
		- For example, if $p_{2}=\frac{1}{3}$, player 2 will receive 3x the amount player 1 offers.

Giving appears to be a normal good - as incomes/endowments increase, giving increases.
- As the price of giving to others increases, giving decreases.
- However, *as the price of taking for yourself increases*, giving *increases*.

# Theories of Social Preferences
1. People care about their relative payoff - outcome-based model and inequality aversion.
2. People care positively or negatively about others, depending on behaviour/intentions. Thus, our beliefs are most important - intention-based models and reciprocity.
## Inequality-Aversion Model
Some subjects have an inequality-aversion, i.e., being worse- or better-off than others.

Fehr and Schmidt (1999) define player $i$'s utility function:
$$
U_{i}(x)=x_{i}-\alpha_{i}  \frac{1}{n-1} \sum_{j\neq i}max(x_{j}-x_{i},0) - \beta_{i} \frac{1}{n-1}\sum_{j\neq i}max(x_{i}-x_{j},0)
$$
- There are two main sections: the coefficients of $\alpha$ and $\beta$.
	- $\alpha$ denotes envy. If player $i$ is worse-off than player $j$, then the $max()$ function will begin returning positive numbers and the sum of these will be multiplied by $-\alpha$, decreasing utility.
	- $\beta$ denotes guilt. If player $i$ is better-off than player $j$, then the $max()$ function will begin returning positive numbers and the sum of these will be multiplied by $-\beta$, decreasing utility.
	- We assume that $\beta_{i}\leq \alpha_{i},~~~0\leq \beta_{i}\leq 1$.
		- Guilt produces less disutility than envy, typically.

The model for two people:
$$
\begin{eqnarray}
U_{1}(x_{1},x_{2})=x_{1}-\alpha_{1}max(x_{2}-x_{1})-\beta_{1}max(x_{1}-x_{2}) \\
U_{2}(x_{1},x_{2})=x_{2}-\alpha_{2}max(x_{1}-x_{2})-\beta_{2}max(x_{2}-x_{1})
\end{eqnarray}
$$
- In practice, for $U_{1}$ or $U_{2}$, $\alpha$ or $\beta$ will be effectively 0, as one person will always be better off than the other. If that is not the case, i.e., if they are equal, then their utilities remain unchanged.

The dictator game with inequality-averse dictators:
- Suppose a binary choice dictator game:
	- Selfish option: £10 for herself and £0 for the recipient,
	- Egalitarian option: £5 for herself and £5 for the recipient.
- A dictator with inequality-averse preferences does care about the recipient.
	- Utility in selfishness: $10-\beta(10-0)=10-10\beta$
	- Utility in egalitarian: $5-\beta(5-5)=5$
	- So, depending on $\beta$, i.e., the dictator's guilt/compassion, they will prefer different options.
		- If $\beta< \frac{1}{2}$, they will be selfish.
		- If $\beta> \frac{1}{2}$, they will be egalitarian.
## Reciprocity models
An individual's utility function depends on her own payoff and that of other individuals, according to:
$$
U_{i}=\pi_{i}+\sum\beta_{ij}\pi_{j}
$$
- Where $\beta_{ij}$, the weight of $j$'s material payoff on $i$'s utility, is:
$$
\beta_{ij}=\frac{a_{i}+\lambda_{i}a_{j}}{1+\lambda_{i}},~~~~~i\neq j,~~~~~0\leq\lambda_{i}\leq 1,~~~~~a_{i},a_{j} \in[-1,1]
$$
- Where:
	- $a_{i}$ is $i$'s level of unconditional altruism/spite,
	- $a_{j}$ is $i$'s belief about $j$'s goodwill/kindness,
	- $\lambda_{i}$ is the extent to which $i$ conditions her evaluation on her beliefs about the other's type.
		- In other words, the degree to which $i$ *cares* that the other player is kind.
# Applications
- The effect of peer salaries on job satisfaction at UC,
	- Study takes advantage of a new source of co-worker pay information, where it is easy to look up the pay of all state workers.
	- Experimental design:
		1. Randomly inform some people about the website,
		2. Survey control and treatment workers and compare responses.
	- Results:
		1. Greater use of website in treatment group (19% vs 50%),
		2. Large negative impact on job satisfaction for those whose salaries are below median,
			1. Among this group, respondents report being "very likely" to search for a new job.
	- Implications:
		1. Employers have an incentive to obscure pay,
		2. Employers have an incentive to compress wage distribution.
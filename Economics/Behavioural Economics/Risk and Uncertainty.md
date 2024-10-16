>Risk exists when we are aware of the different probabilities of our action
>>Some examples could include betting on a fair dice, a fair coin, or gambling with a roulette wheel.
---
>Uncertainty exists when we *don't* know the probability distribution associated with our actions.
# Decisions under risk
## Expected Utility Theory Axioms
1. Completeness
	- For all $q,r$: $\text{either }q \succ r \text{ or } r \succ q \text{ or } q \sim r$
2. Transitivity
	- Given three prospects $q,r,s$:
		- $\text{if } q \succ r, r\succ s, \text{ then } q \succ s$
3. Continuity
	- Given three prospects $q,r,s$ where $q \succ r \succ s$, there is some probability such that there is indifference between the *middle ranked* prospect and the *compound prospect*:
		- $p \cdot q+(1-p)\cdot s \sim r$
		- i.e., there is some linear combination of the two extreme prospects that creates indifference with the middle prospect.
4. Independence
	- Any state of the world that results in the same outcome *regardless of one's choice* can be ignored.
	- Formalised: given three prospects $q,r,s$:
		- $\text{if }q \succeq r \to (q,p;s,1-p) \succeq (r,p;s,1-p)$
		- In this case, the $(s,1-p)$ is a factor regardless of ones choice, and so it can be ignored when evaluating different prospects.
>The principle of expectation is that if decision makers comply with these axioms, they act *as if* they are *expected utility maximisers*.
## Risk Aversion
![[Pasted image 20241016141554.png]]
>Risk averse people prefer a certain outcome of $x$ to a prospect with an expected value of $x$.
>This can be seen through the diagram above.
- A lottery equal to $(£100000,0.5)$ has an expected value of $£50000$. The expected utility, however, is $E(U)=0.5\cdot u(£100000)$. On the other hand, the expected utility of $£50000$ is $E(U)=u(£50000)$. As seen by the diagram, $u(50000)>0.5 \cdot u(£100000)$.
- Essentially, the risk aversion emerges from the diminishing marginal utility of wealth.
## Eliciting Risk Preferences
There are a few ways to measure risk preferences.
1. Gneezy and Potters (1997)
	- You are given £150,000 and decide how much of it to keep and how much to invest in a lottery. The lottery has 50/50 odds, where the reward is tripling the amount of money you put in.
	- This is easy to understand, but cannot distinguish between risk-seeking and risk neutral behaviour.
2. Eckel and Grossman (2002)
	- You choose between:
		1. $(-£2,0.5;£54,0.5)$
		2. $(£18)$
		3. $(£2,0.5;£50,0.5)$
		4. $(£14,0.5;£26,0.5)$
		5. $(£6,0.5;£42,0.5)$
		6. $(£10,0.5;£34,0.5)$
	- This can differentiate between risk seeking and neutral, but it cannot differentiate between *degrees* of the former.
3. Binswanger (1981); Holt and Laury (2002)
	- Process:
		- There are 10 decisions between paired gambles - you choose the gamble in either list A or B.
		- Column A has a lower total return but is more balanced, whereas B has higher returns but has more unequal returns.
		- Each step down the list the probability shifts to favour the higher return option.
		- The experiment tests when people switch from column A to B.
	- This can estimate a range of risk-averse and risk-seeking parameters, but is more complex and cognitively demanding for the participants.
		- It is also not necessarily fool-proof: people could jump around between the lists instead of switching just once.

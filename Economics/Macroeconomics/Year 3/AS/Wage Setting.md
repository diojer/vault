# Introduction
The key phenomenon in aggregate supply is understanding why unemployment exists.
- Typically, factors that create upward wage pressure, like unions or benefits, are the "usual suspect".
# Model 1
## With a Monopolistic Union
Assume a single union that sets the nominal wage $W_{i}$, in sector $i$, to achieve real wage $w_i$, that maximises utility of a representative worker subject to sector $i$ labour demand.

For a given demand for labour, the union will choose the point which maximises utility. To model this, we use indifference curves:
![[Pasted image 20241105083722.png]]
- The wage-setting curve connects the utility-maximising points at all different labour-demand curves.
$$
w_{i}=b \frac{\eta}{\eta-1}+\phi  \frac{\eta}{\eta-1}N_{i}
$$
- Where:
	- $\eta$ represents $1-z$ where $z$ is union power,
	- $b$ represents benefits,
	- $N$ represents employment in the sector,
	- $\phi$ represents the disutility of work.
- This means the intersect is determined by the level of benefits and union power, whereas the slope is determined by the disutility of work and union power.
## Without a union
- Workers bargain individually for their wages and are thus price-takers.
	- Each worker experiences a perfectly elastic demand curve for their labour.
## What these tell us about unemployment
- With union power, we have a greater equilibrium level of unemployment,
	- As $\eta \to \infty$, our monopoly union model approaches our union-less model.
- Policy implications:
	- To increase employment, lower union power,
	- Reduce unemployment benefits,
	- Reduce the disutility of work.
# Model 2: Shirking Model
Assumptions:
1. Firms cannot monitor workers' effort ($\epsilon$) and use unemployment as a disciplinary device to extract the desired productivity.
2. When $\epsilon=0$, workers put in *no effort*. The disutility of work is zero.
3. When $\epsilon=\epsilon^{min}$, workers put in the minimum desired effort ("no shirking"). The disutility of work is greater than zero.
4. Workers' effort is a function: $\epsilon=\epsilon(w(-),N(+), \dots)$
	- Firms have two methods to encourage effort:
		- Unemployment threat to increase the risk of shirking,
		- Offering real wages above the opportunity cost of losing job.
	- Hence, the ==value of not shirking== is: $V_{NS}=w-a^{min}$, where $a^{min}$ is the disutility of work when putting in the minimum effort and $w$ is the real wage.
		- ==Aside:== might be more accurate to write: $V_{NS}=w-V(a^{min})$ or $U_{NS}=U(w)-a^{min}$
5. Monitoring technology:
	- Identifies worker $\epsilon=0$ with probability $0<\tau<1\to$ get fired immediately.
	- Doesn't identify $\epsilon=0$ with probability $1-\tau \to$ continue earning $w$.
	- Research tells us $\tau$ is higher in manufacturing;
		- It's harder to shirk as it is evident in the product or from other workers.
	- Employment protection legislation lowers $\tau$.
6. If a worker is fired...
	- They will find an equivalent job with probability $0<h<1\to$ earning $w$.
	- They will find no job with probability $1-h\to$ receive benefits $0<b<w$.
	- If we ==treat the unemployment rate $u$ as the probability of not finding a job==, then:
		- $1-h=u$
Hence, the workers' ==value of shirking== is:
$$
V_{S}=(1-\tau)w+\tau[hw+(1-h)b]
$$
- We can split this up:
	- First section: the real wage multiplied by the probability of not being caught.
	- Second section: the probability of being caught multiplied by:
		- The probability of finding another job multiplied by the real wage *plus* the probability of not finding another job multiplied by the real benefit stipend.

Firms want to set the lowest wages that maximise effort. If we equate $V_{NS}=V_{S}$, we can calculate the real wage that leaves workers indifferent between shirking and not shirking. Recall:
- $V_{NS}=w-a^{min}$
- We can solve to find:
$$
w^*=b+ \frac{a^{min}}{\tau(1-h)}=b+ \frac{a^{min}}{\tau u}
$$
- This gives us our wage-setting curve in terms of unemployment.
## Wage-setting Curve
- Depends positively on:
	- Benefits,
	- Disutility of work.
	- i.e., higher alternative incomes or more unpleasant jobs increase the wage needed to ensure optimal effort.
- Depends negatively on:
	- The probability of being caught shirking,
	- Unemployment.
		- Higher unemployment increases the opportunity cost of shirking because the worker is less likely to find alternative employment (will rely on benefits where $0<b<w$).

In this model, unemployment occurs because it helps increase the productivity in an economy.
## Policy Implications

# Questions
- Does the assessment of workers for shirking take into account behavioural understandings, e.g., risk-aversion, loss-aversion, uncertainty-aversion.
- Does Antonio have an opinion on Blanchard's "why is there persistent unemployment in Europe"?
# Basis of the Consensus
- Business cycle is demand driven,
- Demand effects are limited to the short-run,
- Monetary Policy affects output in the short-run due to wage and price rigidities.
- Monetary Policy cannot affect output in the long-run as we assume that in the long-run economies operate at their potential output. Instead, monetary policy will only affect inflation.
The Phillips Curve, i.e., the equation which links inflation to output, must also account for inflation expectations. This leads to the theory of rational expectations, where agents are forward and backward looking, and anticipate the central bank's interest rate changes.
- Adaptive Expectations occur when agents base their expectations for future inflation on current inflation.

Fiscal policy is also assumed to crowd out the private sector which interferes with the central bank's aim of inflation control.

# Assumptions
## IS Curve
There is a negative relationship between output and the rate of interest.
$$
y_{1}=A-ar_{0}
$$
Where:
- $y_{1}$ is the output at period 1,
- $r_{0}$ is the rate of interest at period 0,
- $A$ is the autonomous output when interest rates are zero - i.e., the sum of autonomous consumption, investment, and government transfers plus net exports,
- $a$ is the sensitivity of output to changes in the interest rate.

$A$ captures the effects of fiscal policy as it includes government transfers. However, we assume that there is full crowding out, i.e., all new government transfers will reduce autonomous investment - consequently, there is no role for fiscal policy in this model.

There is a level of output $y_{e}$ where neither employers nor employees will make no attempt to change the wage rate, i.e., equilibrium output in the labour market.
- The interest rate which sets $y_{1}=y_{e}$ is $r_{s}$, i.e., the ***s***tabilising rate of interest
![[Pasted image 20241229163508.png]]
==Importantly, the IS curve contains a time lag==, because only interest rates from the previous period affect output in the current period.
We can find the IS equation in output gap form by using two equations:
$$
\begin{eqnarray}
y_{t+1}=A-ar_{t} \\
y_{e}=A-ar_{s} \\
\end{eqnarray}
$$
You can get:
$$
y_{t+1}-y_{e}=-a(r_{t}-r_{s})
$$
- This tells the central bank how much to change interest rates, given an expected value of output in the next period and a value for $a$.
- It shows that so long as the interest rate is not equal to the stabilising rate, output will not be at equilibrium,
## Phillips Curve
The Phillips Curve is an equation telling us the relationship between output and inflation.
It includes inflation expectations:
$$
\pi_{t+1}=\pi^E_{t+1} + \alpha(y_{t+1}-y_{e})
$$
- Where $\pi^E_{t+1}$ are inflation expectations in period $t+1$.
	- Here we assume adaptive expectations, i.e., $\pi^E_{t+1}=\pi_{t}$, however when inflation expectations are well anchored, we have $\pi^E_{t+1}=\bar{\pi}$, where $\bar{\pi}$ is the central bank's inflation target.
- $\alpha$ is the sensitivity of inflation to the output gap - do not confuse with $a$ from the IS curve.

Substituting inflation expectations using adaptive expectations, we get:
$$
\pi_{t+1}=\pi_{t}+\alpha(y_{t+1}-y_{e})
$$
- This is known as the inertial Phillips Curve.
	- This is also justified because there may be inertia in prices and wages.
- $\alpha>0$, meaning that the PC slops upward.
## Monetary Rule
To derive the monetary rule, we must first understand the process of the central bank.
1. The Central Bank wants to keep inflation at target and output at equilibrium,
2. It can adjust nominal interest rates which change real interest rates as inflation in the current period is predetermined,
3. By changing the real interest the central bank changes the output gap in the following period,
4. This new output gap changes inflation via the Phillips Curve.

Using this reasoning, we assume that the central bank behaves as if it is minimising a loss function:
$$
L=(y_{t+1}-y_{e})^{2}+\beta(\pi_{t+1}-\pi^{T})^{2}
$$
- Where:
	- $\pi^T$ is target inflation,
	- $\beta$ is the relative weight of inflation control to output control,
		- $\beta$ can be thought of as a trade-off with respect to time - eventually the CB will solve both issues (ideally) but $\beta$ tells us how much they prioritising fixing one before the other.
		- If $\beta>1$, central bank is more concerned with inflation,
		- If $\beta=1$, central bank is equally concerned,
		- If $\beta<1$, central bank is more concerned with output.
	- The two terms are squared to represent:
		- Symmetric concerns, i.e., inflation below target is equally bad as inflation above target,
		- Augmenting concerns the farther away the values are from target.

Whether or not the central bank really operates as if it is minimising a loss function is an empirical issue.

If we assume $\beta=1$, we can map the loss function as a family of *isoloss circumferences*.
![[Pasted image 20241229165815.png]]
- All points along the same circumference represent an equal loss for the central bank,
- As we move toward the centre losses are minimised.

To solve the problem, we need to minimise the loss function *subject to the Phillips Curve*.
- We minimise subject to the Phillips Curve because the central bank can only change inflation by changing the future output gap, and the future output gap will only change inflation subject to the Phillips Curve equation.

When we solve this, we get:
![[Pasted image 20241229172553.png]]
$$
(y_{t+1}-y_{e})=-\alpha\beta(\pi_{t+1}-\pi^T)
$$
- This tells us the sensitivity of inflation to the output gap, and the central bank relative preference between low inflation and output at potential, will affect the Monetary Rule.
	- In other words, the slope of the MR line depends on the slope of short-run Phillips Curves and the central bank relative preference.
- ==The Monetary Rule tells us where, given a Phillips Curve, the Central Bank will target. For example, given $PC'''$, the central bank will target the red dot as that minimises its losses. It will then set interest rates to target that output.==
	- This shows that it is the PC constraining the CB's choices - it cannot target $(y_{e},\pi^T)$ as that point does not lie on the Phillips Curve.

The Taylor Rule combines the Monetary Rule with the IS equation to give this interest rate:
![[Pasted image 20241229173510.png]]
- This is *not* a Monetary Rule: it includes the interest rate rather than an output gap, so does not give the optimal combinations of output and inflation for the bank to target, but instead the optimal combinations of the interest rate and inflation.


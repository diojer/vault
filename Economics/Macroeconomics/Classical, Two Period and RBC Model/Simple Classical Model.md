## Assumptions
- Perfectly competitive markets
- Perfect information
- Rational agents
- One-period, static model
- Individual firms maximise profits and individual households maximise utility
## Labour Demand
We're assuming a Cobb-Douglas production function with constant returns to scale:
$$
Y=A\bar{K}^{\alpha}N^{\beta}
$$
Where $\frac{\delta Y}{\delta N} >0$  and $\frac{\delta^2 Y}{\delta N^2} <0$.
- $A$ is technology,
- $\bar{K}$ is the given capital stock,
- $N$ is how much labour is employed,
- $\alpha$ is the output elasticity w.r.t. capital
- $\beta=1-\alpha$ where $0<\alpha<1$, as we're assuming constant returns to scale.
	- When $\alpha+\beta<1$, we have diminishing returns to scale,
	- When $\alpha+\beta>1$, we have increasing returns to scale.

If we assume that the given capital stock is 1, we can figure out the marginal productivity of labour (MPL). This is $\frac{\delta Y}{\delta N}$.
$$
\frac{\delta Y}{\delta N}=(1-\alpha)AN^{-\alpha -1}
$$
The above equation tells us that the relationship between output and labour is positive, i.e., the more labour employed, the greater the output.
The second derivative is negative, though:
$$
\frac{\delta^2 Y}{\delta N^2}=-\alpha(1-\alpha)AN^{-\alpha -1}
$$
This means that the graph tapers off towards the top:
![[Pasted image 20231006005526.png]]
## Profit Maximisation
$$
max(\pi)=PY-WN
$$
$PY$ represents revenue (price level times output), $WN$ represents costs (wages times labour).
The marginal product of labour, $MPL$, equals the real wage.
$$
MPL=\frac{W}{P}
$$
## Labour Demand Curve
If we derive $max(\pi)=PY-WN$, we get:
$$
(1-\alpha)AN^{-\alpha}=\frac{W}{P}
$$
If we take the log of both sides, we get:
$$
ln(1-\alpha)+lnA-\alpha lnN=lnW-lnP
$$
In standard notation $ln(X)=x$. So, we can rewrite as the following:
$$
ln(1-\alpha)+lnA-\alpha n=w-p
$$
Keeping $lnA$ to not confuse with $\alpha$.
This equation shows a negative relationship between the real wage, $w-p$, and employment, $\alpha n$. This gives us a downwards sloping labour demand curve.

This is the labour **demand** curve, because we derived this equation from a firm's **profit maximising equation**. 

## Labour Supply Curve
Households want to maximise their utility function, $U=C-\frac{1}{\gamma}N^{\gamma}$.
- $U$ is utility,
- $C$ is consumption,
- $\gamma > 1$ is a parameter representing how difficult it is to work. As it gets bigger, it is more painful to work.
In the Simple Classical Model, consumption is constrained to the real wage multiplied by hours worked,
$$
C=\frac{W}{P}N
$$
So,
$$
U=\frac{W}{P}N-\frac{1}{\gamma}N^{\gamma}
$$
We want to maximise utility with respect to employment. If we derive the equation, we see how much utility increases by a unit increase in $N$, the labour that the households supply:
$$
\frac{\delta U}{\delta N}\rightarrow \frac{W}{P}-N^{\gamma -1}=0
$$
so,
$$
\frac{W}{P}=N^{\gamma-1}
$$
If we take the log of both sides,
$$
w-p=(\gamma-1)n
$$
This shows a positive relationship between the real wage and the labour supplied, leading to an upward sloping labour supply curve.

## Equilibrium in Supply and Demand
Labour demand:
$$
w-p=ln(1-\alpha)+lnA-\alpha n
$$
Labour supply:
$$
w-p=(\gamma-1)n
$$
- An increase in the level of technology will shift the demand curve upwards
	- Better technology levels will increase employment (more workers needed to work the tech?)
- An increase in the difficulty of work will rotate the supply curve counter-clockwise
	- Harder work means a higher wage is paid and less labour is employed

# Summary
- The labour market will always reach equilibrium,
- We have an equilibrium level of employment and unemployment,
- Unemployment is the worker's choice, as they could offer to work for a lower wage,
- Swings in unemployment are driven by $A$ (productivity shocks) or changes in household preference ($\gamma

# Questions
- Why does the [[Simple Classical Model#Labour Demand|graph]] taper off if we're assuming constant returns to scale?
- Why are we setting the derivatives equal to 0?
	- Because we're maximising profit.
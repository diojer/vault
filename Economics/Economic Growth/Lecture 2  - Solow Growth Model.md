Primary Questions
1. Which factors determine the growth for GDP per-capita?
2. How can the growth of per-capita GDP be affected in the long run?
3. What are the main factors responsible for differences in economic growth across countries?
```table-of-contents
```
Post WWII belief was that capital accumulation was the primary reason for differences in levels of national product.
- The Solow growth model is a neoclassical growth model, and one of many models of growth and development.
- It attempts to explain how a long-run equilibrium level of per-person capital, GDP, and consumption is determined endogenously, from exogenous savings, technology and population growth.
	- In subsequent lectures the determinants will also be treated endogenously.
# Assumptions
1. Closed economy, no government, single good is produced.
2. All households are identical, each household saves $s$ of their incomes.
3. Neoclassical aggregate production function:
	- $Y(t)=F(K(t), L(t))$
		- Output is a function of capital and labour - all are functions of time.
4. Capital depreciates exponentially at the rate $\delta$,
5. All factors of production are owned by households.
6. The population grows exponentially at a growth rate of $n$,
	- The growth rate of labour is also $n$.
Extra symbols:
- Rental price of capital is $r(t)$,
- Labour is supplied inelastically at wage $w(t)$,
- $\dot{\epsilon}=\frac{\partial\epsilon}{\partial t}$
# The Model
The model is typically analysed in per-capita terms. Dividing by $L$ finds the per-capita basis.
$$
Y=F(K,L)
$$
$$
\frac{Y}{L}=\frac{1}{L}F(K,L)=F\left( \frac{K}{L},1 \right)=f\left( \frac{K}{L} \right)
$$
$$
y=f(k)
$$
Where:
- $y=Y/L$,
- $k=K/L$

Therefore, the growth of per-capita output $y$ depends on the growth of per-worker capital $k$.
# How does $K$ evolve over time?
What is the main source of capital in the next period?
1. The capital from the previous period, depreciated,
2. Investments made in the current period (which are realised in the next period).
$$
K(t+1)=(1-\delta)K(t)+I(t)
$$
We assume that in equilibrium, $I(t)=S(t)$, where $S(t)=sY(t)$, in other words, saved income.
This gives the final equation:
$$
\frac{\dot{K}}{K}= s\frac{Y}{K}-\delta
$$
Converting this to the growth rate of capital-per-worker:
$$
\begin{eqnarray}
k&=&\frac{K}{L} \\
\ln k&=&\ln K-\ln L \\
\frac{ \partial  }{ \partial t } \ln k&=&\frac{ \partial  }{ \partial t } \ln K-\frac{ \partial  }{ \partial t } \ln L \\
\frac{\dot{k}}{k}&=&\frac{\dot{K}}{K}-\frac{\dot{L}}{L}
\end{eqnarray}
$$
If we substitute the equations for $\frac{\dot{K}}{K}$ and $\frac{\dot{L}}{L}$, we get:
$$
\frac{\dot{k}}{k}=s \frac{Y}{K}-\delta-n
$$
where:
$$
\frac{Y}{K}=\frac{y}{k}
$$
- Due to common factors.
# Technology
- Technology is assumed to be exogenous.
	- Future models try to endogenise it by assuming it is affected by investment into research and development.
By $A(t)$ we mean technological progress at time $t$, such that:
$$
Y=F(K(t),L(t),A(t))
$$
Technological progress can impact the production function in three ways:
1. Hicks-neutral technological progress
	- $Y=F(K(t),L(t),A(t))$
2. Solow-neutral technological progress (capital-augmenting)
	- $Y=F(A(t)K(t),L(t))$
	- Each unit of capital is multiplied by the technological progress.
3. Harrod-neutral technological progress (labour-augmenting)
	- $Y=F(K(t),A(t)L(t))$
	- This is the mainstream view of technological progress.
	- You require less labour for the same quantity of output, allowing it to be reallocated.
==Does it matter which technological progress model we use?==
## Uzawa Theorem
If:
- The production function exhibits constant technical returns to scale,
- The population growth rate is constant,
- All quantities grow at the same rate,
- Factor shares are constant,
The production function can be represented as:
$$
Y^*(t)=F_{3}(K^*(t),A(t)L(t))
$$
Notation:
$$
\frac{\dot{A}}{A}=g_{A}
$$
## Augmented Solow Model
Capital evolution equation:
$$
\dot{K}(t)=sY(t)-\delta K(t)
$$
The production function:
$$
Y=K^\alpha(AL)^{1-\alpha}
$$
In per capita terms:
$$
y=k^\alpha A^{1-\alpha}
$$
- This works because when dividing by $L$ you get:
$$
y=K^\alpha A^{1-\alpha}L^{-\alpha}
$$
- Where:
$$
y=\left( \frac{K}{L} \right)^\alpha A^{1-\alpha}
$$
After solving:
$$
g_{y}=\alpha g_{k}+(1-\alpha)g_{A}
$$
- Take the logarithm and differentiate with respect to $t$.
If we assume balanced growth, $g_{y}=g_{k}$, then we get:
$$
g_{y}=g_{k}=g_{A}
$$
## Equilibrium
New concept: effective.
Capital per effective worker; output per effective worker:
$$
\hat{k}=\frac{K}{AL};\hat{y}=\frac{Y}{AL}
$$
Growth rates:
$$
\frac{\dot{\hat{k}}}{\hat{k}}=\frac{\dot{K}}{K}-\frac{\dot{L}}{L}-\frac{\dot{A}}{A}
$$
- Done simply through logarithm and differentiation w.r.t. $t$
In equilibrium, $\dot{\hat{k}}/k=0$.
- In other words, $\dot{k}/k=\dot{A}/A$

Given all of this, we can say:
$$
\begin{eqnarray}
\frac{\dot{\hat{k}}}{\hat{k}}&=&s \frac{Y}{K}-\delta-n-g_{A} \\
\frac{\dot{\hat{k}}}{\hat{k}}&=&s \frac{Y/AL}{K/AL}-\delta-n-g_{A} \\
\frac{\dot{\hat{k}}}{\hat{k}}&=&s \frac{\hat{y}}{\hat{k}}-\delta-n-g_{A} \\
\dot{\hat{k}}&=&s\hat{y}-(\delta+n+g_{A})\hat{k}
\end{eqnarray}
$$
- If we set $\dot{\hat{k}}=0$ we will find the equilibrium conditions.

In the real world, measuring technology is difficult - the growth rate $g_{A}$ is instead taken as a residual from the equation:
$$
g_{y}=\alpha g_{k}+(1-\alpha)g_{A}
$$
# Absolute vs. Relative Convergence
Due to how percentages work, the convergence between absolute or relative values is different in the short-run.
![[Pasted image 20250210104313.png]]
Where the relative convergence is equal to the ratio  between absolute values, China and OECD countries have relatively converged, but absolutely diverged.
![[Pasted image 20250210104904.png]]
# Important Notes
$MPL$ vs. $Y/L$:
- Average vs. marginal

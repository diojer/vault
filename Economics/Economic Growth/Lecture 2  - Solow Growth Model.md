Primary Questions
1. Which factors determine the growth for GDP per-capita?
2. How can the growth of per-capita GDP be affected in the long run?
3. What are the main factors responsible for differences in economic growth across countries?

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

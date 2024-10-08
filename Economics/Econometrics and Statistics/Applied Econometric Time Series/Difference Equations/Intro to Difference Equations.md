>A difference equation is an equation which expresses the value of a variable, $v_{t}$, as a function of its own lagged values, $v_{t-1}$, time $t$, and other variables.

**Time series econometrics is concerned with the estimation of difference equations containing stochastic, i.e., random, components.**

Many economic theories have natural representations as difference equations.
1. The Random Walk Hypothesis,
	- This postulates that the movement of a stock price, in an efficient market, should follow a random walk denoted by: $$y_{t+1}=y_{t}+\epsilon_{t+1}$$
	- This can be tested by estimating a more general stochastic equation: $$\Delta y_{t+1}=\alpha_{0}+\alpha_{1}y_{1}+\epsilon_{t+1}$$
		- And verifying that $\alpha_{0}=\alpha_{1}=0$.
2. Reduced-Forms and Structural Equations
	- A reduced form equation is an equation expressing a variable as a function of its own lags, endogenous lags, exogenous current or lagged values and disturbance terms.
		- $$c_{t}=\alpha y_{t-1}+\epsilon_{ct}$$
		- Where $c_{t}$ is consumption and $y_{t-1}$ is previous output.
	- A structural equation is an equation expressing a variable as being dependent on the *contemporaneous* realisation of another endogenous variable.
		- $$i_{t}=\beta(c_{t}-c_{t-1})+e_{it}$$
		- Where $i_{t}$ is investment and $c_{t}$ is contemporaneous consumption.
3. Error Correction: Spot and Forward Prices
	- When buying a currency, you can pay a spot price $s_{t}$ for instant purchase, or a future price $f_{t}$ for purchase some time in the future.
	- Given an individual who speculates in this market, they have the potential to make $s_{t+1}-f_{t}$ profit/loss.
	- The Unbiased Forward Rate (UFR) hypothesis asserts that the expected profits from such speculative behaviour should be *zero*. We could test this with the following regression:
		- $$s_{t+1}=\alpha_{0}+\alpha_{1}f_{1}+\epsilon_{t+1}$$
		- And check if $\alpha_{0}=0$ and $\alpha_{1}=1$.
	- However, even if the prices are not currently equal, we would expect them to correct each-other in the long run. This means we can model the prices as following some adjustment processes:
		- $$\begin{eqnarray} s_{t+2}&=&s_{t+1}-\alpha[s_{t+1}-f_{t}]+\epsilon_{st+2},~\alpha>0 \\ f_{t+1}&=&f_{t}+\beta[s_{t+1}-f_{t}]+\epsilon_{ft+1},~\beta>0 \end{eqnarray} $$
		- This incorporate adjustment terms which mean that any gap between the forward and spot price pushes the two closer together. This makes the model an **error-correction model**.
4. Nonlinear Dynamics
	- For another day :-)



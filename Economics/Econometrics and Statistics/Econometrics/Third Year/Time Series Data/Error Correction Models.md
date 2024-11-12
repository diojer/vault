>Only applicable in a cointegrated model - this is because error correction models show a relationship between a variable and its long-run value.
- We can assume the following long-run equilibrium state:
$$
y_{t}^E=\beta+z_{t}^E
$$
- And we can model it with the following ARDL(1,1) model:
$$
y_{t}=\alpha+\theta_{1} y_{t-1}+\phi_{0}z_{t}+\phi_{1}z_{t-1}+e_{t}
$$
- We can prove that:
$$
\Delta y_{t}=\alpha+\phi_{0}\Delta z_{t}-\gamma \hat{v}_{t-1}
$$
- Where:
	- $\gamma=1-\theta$
	- $\hat{v}_{t-1}$ are the residuals when we regress $y_{t}=\beta+z_{t}$ to check for cointegration.
- $\gamma$ tells us the speed with which our model returns to its long-run equilibrium state following an exogenous shock.
	- It is negative and its absolute values lies between 0 and 1.
	- For example:
$$
\Delta y_{t}=0.78+0.24\Delta z_{t}-0.32\hat{v}_{t-1}
$$
		- Tells us that one period later the model will move 32% back toward equilibrium, following a shock.
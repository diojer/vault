There are different kinds of nonstationarity.
- Deterministic trend, i.e., non-random function of time;
	- $y=\mu+\beta t+u_{t}$ where $u_{t}$ is iid.
- Stochastic trend:
	- Random walk: $y_{t}=y_{t-1}+u_{t}$
	- Random walk w/ drift: $y_{t}=\alpha+ y_{t-1}+u_{t}$

Consequences of nonstationarity:
- Shocks don't "die out".
- Non-normal distribution of test-statistics.
- Bias in AR coefficients.
# Phillips-Peron Test
$$
\Delta y_{t}=\mu+\delta^* t+\psi y_{t-1}+u_{t}
$$
- $u_{t}$ is $I(0)$ but may be heteroscedastic and autocorrelated, i.e., $u_{t}$ may be an ARMA(p,q) process.
- Unit root test, i.e., $H_{0}:\psi=0$
# Kwiatkowski-Phillips-Schmidt-Shin (KPSS) test
Formulation:
- $y_{t}=\beta_{0}D_{t}+\mu_{t}+u_{t}$
	- Where:
		- $D_{t}$ are the deterministic components, e.g., intercept or time trend (or both).
		- $\mu_{t}$ is a random walk process.
		- $u_{t}$ is a white-noise error.
Since $\mu_{t}$ is a random walk process, it is equal to: $\mu_{t}=\mu_{t-1}+\epsilon_{t}$
- $H_{0}:\sigma^{2}_{\epsilon}=0$
	- If this is the case, then **$\mu_{t}$ is a constant and $y_{t}$ is trend stationary**.
	- This is a stationarity, rather than unit-root, test.
# Estimation
- When estimating a VECM, lags should be calculated by first estimating the VAR in levels and using information criterion to calculate the number of lags $p$. The VECM should have $p-1$ lags.
Take the VECM with no lags:
$$
\begin{eqnarray}
\Delta m_{t}&=&\alpha_{m}(m_{t-1}-\beta p_{t-1})+v_{t} \\
\Delta p_{t}&=&\alpha_{p}(m_{t-1}-\beta p_{t-1})+u_{t}
\end{eqnarray}
$$
Running this, we get:
$$
\begin{eqnarray}
m_{t}&=& (1+\alpha_{m})m_{t-1}-\alpha_{m}\beta p_{t-1}+v_{t} \\
p_{t}&=& \alpha_{p}m_{t-1}+(1-\alpha_{p}\beta)p_{t-1}+u_{t} \\
\end{eqnarray}
$$
- Which is a normal VAR in levels, but with non-linear coefficients and with one lag.
	- This is why we subtract one from the number of lags when transitioning between VECM and VAR.

Not taking into account cointegration in a VAR will cause it to be misspecified, because the data generation process includes an error correction term which is not being represented.
- For example, running $\Delta m_{t}=\alpha(m_{t-1}-\beta p_{t-1})+v_{t}$ without the EC component and instead as a VAR with no lags would estimate the change in $m_{t}$ as purely white noise when it is in fact error-correcting, and $m_{t}$ would be estimated as a random walk.
	- Alternatively, running it as a VAR with one lag will undermine the OLS assumption of linear coefficients.

When estimating with a EC constant (the difference between variables fluctuates around a non-zero mean) and with VAR constants, there are 4 constants which need to be estimated.
- However, there are only three endogenous variables. Not all can be estimated, so EViews uses the VAR constants to estimate the EC constant.
- Typically models are estimated with VAR constants if there is a time-trend in the variables in-levels.
# Cointegration Coefficient Testing
- In an $n=3$ VECM model, there are three different coefficients for the EC term for each endogenous variable.
	- One of these could be equal to zero and cointegration could still be present, given that the other two variables adjust to adapt all three variables to the long-run trend.
	- This third variable which does not adjust is called "weakly exogenous".

To test for weak exogeneity, we impose restrictions on the VECM model and test the null hypothesis that these restrictions are indistinguishable from the current model.
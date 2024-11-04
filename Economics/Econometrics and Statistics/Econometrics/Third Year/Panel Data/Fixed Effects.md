- Assumes that $f_{i}$ and $X$ are correlated
To capture this, we use dummy variables, or we transform the data.
# Least Squares Dummy Variable (LSDV)
$$
Y_{it}=\beta_{0}+\beta_{1}X_{it}+\delta_{1}f_{1}+\delta_{2}f_{2}+\dots+\delta_{n-1}f_{n-1}+\epsilon_{it}
$$
- Always use $n-1$ dummy variables - for a refresher see [[Dummy Variables]].
- These act as intercept dummy variables, so the pure intercept $\beta_{0}$ represents the fixed effects for the base individual.
# Transforming the Data
>Making a dummy variable $n-1$ times may be time consuming - reading that data will also be time consuming. Instead, we can eliminate fixed effects by transforming the data.
## The Within Transformation
>The within transformation "de-means" the data.
>If we take the average (mean) of the data across time:
$$
\bar{Y}_{i}=\beta_{0}+\beta_{1}\bar{X}_{i}+f_{i}+\bar{\epsilon}_{i}
$$
- $f_{i}$ is a constant so its mean across time is equal to itself.
Then, we de-mean the data:
$$
\begin{eqnarray}
Y_{it}-\bar{Y}_{i}&=&\beta_{1}(X_{it}-\bar{X}_{i})+(\epsilon_{it}-\bar{\epsilon}_{i}) \\
\ddot{Y}_{it}&=&\hat{\beta}_{1}\ddot{X}_{it}+\ddot{\epsilon}_{it}
\end{eqnarray}
$$
- $\hat{\beta}_{1}$ is called the fixed effects/within estimator
## First Difference Transformation
>Similar to the within transformation, instead of de-meaning we take the first difference.

$$
\begin{eqnarray}
(Y_{it}-Y_{it-1})&=&(\beta_{0}-\beta_{0})+\beta_{1}(X_{it}-X_{it-1})+(f_{i}-f_{i})+(\epsilon_{it}-\epsilon_{it-1}) \\
\Delta Y_{it}&=&\hat{\beta}_{1}\Delta X_{it}+\Delta\epsilon_{it}
\end{eqnarray}
$$
- $\hat{\beta}_{1}$ is now called the first difference estimator.
# Using the model in Stata
## With LSDV
```Stata
xi: reg y x i.unit
```
## With Within Estimator
```Stata
xtreg y x, fe
```


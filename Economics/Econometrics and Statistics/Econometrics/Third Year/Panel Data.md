- Panel Data techniques can control for time-invariant factors relating to a specific *unit*, i.e., firm, individual, or country.
# What is Panel Data
- Panel Data, Longitudinal Data, or pooled data, is a combination of cross-sectional series and time-series data.
	- While time-series follows a single *unit* across time and cross-sectional series observe multiple *units* in a single time period, panel data follows multiple *units* across time.
	- For example, panel data could follow 4 firms' investments and asset valuations over a number of years. The firms are the *units*.
```Stata
To properly order the data for Stata, we follow each firm for the whole timespan before moving onto the next firm.
```
- When we have the same number of units across all years, this is a **balanced panel**.
- When the number of units is not the same across all years, this is an **unbalanced panel**.
	- For example, 2 firms observed from 2003-07 and 2 others from 2004-08.
# Modelling
$$
Y_{it}=\beta_{0}+\beta_{1}X_{it}+\epsilon_{it}
$$
- Note that we have introduced $it$ as a subscript.
	- $i=1,2,\dots,n$ - represents the units (in this case $n=4$)
	- $t=1,2,\dots,T$ - represents the time periods (in this case $T=10$)
# Unobserved Individual Effects
>An unobserved effect is something which distinguishes individual A from individual B. It distinguishes them because they have different responses to the *observed* effect, i.e., the independent variable, but cannot be explained in terms of the observed effect.
>>It is also distinguished from the error term, as while $\epsilon_{it}$ is capturing the unexplained ("residual") parts of the model, in a time-series it is supposed to represent exogenous, temporary shocks.
- These unobserved individual effects are modelled as:
$$
Y_{it}=\beta_{0}+\beta_{1}X_{it}+\beta_{3}f_{i}+\epsilon_{it}
$$
- They are time-invariant, meaning that they do not change (at least in the short run).
	- If thinking about firms, this could be management, work culture, or trade secrets.
	- Thinking about individuals, this could be natural talent, strength, height.
Problems arise when $Cov(X_{it},f_{i})\neq 0$.
- If we do not separate our $f_{i}$, this will correlate our independent variable with our error term, since $\epsilon_{it}=f_{i}+v_{it}$.
# Panel Data Estimators
1. Pooled (OLS) Estimator
	- Ignores unobserved individual effects $f_{i}$
2. Fixed Effects Estimator
	- Assumes that $f_{i}$ and $X$ are correlated
3. Random Effect Estimator
	- Assumes that $f_{i}$ and $X$ are uncorrelated
2 and 3 are *Individual Effects Models* (IEM).
# Cluster-robust standard errors
These are needed because the error terms in a specific "cluster", or unit, may be correlated with each other. To fix this, we make the errors cluster-robust.
- The OLS estimator is now no longer the *best*, there will be another estimator with a smaller variance.
# Fixed Effects Model
- Assumes that $f_{i}$ and $X$ are correlated
To capture this, we use dummy variables, or we transform the data.
## Least Squares Dummy Variable (LSDV)
$$
Y_{it}=\beta_{0}+\beta_{1}X_{it}+\delta_{1}f_{1}+\delta_{2}f_{2}+\dots+\delta_{n-1}f_{n-1}+\epsilon_{it}
$$
- Always use $n-1$ dummy variables - for a refresher see [[Dummy Variables]].
- These act as intercept dummy variables, so the pure intercept $\beta_{0}$ represents the fixed effects for the base individual.
## Transforming the Data
>Making a dummy variable $n-1$ times may be time consuming - reading that data will also be time consuming. Instead, we can eliminate fixed effects by transforming the data.
### The Within Transformation
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
### First Difference Transformation
>Similar to the within transformation, instead of de-meaning we take the first difference.

$$
\begin{eqnarray}
(Y_{it}-Y_{it-1})&=&(\beta_{0}-\beta_{0})+\beta_{1}(X_{it}-X_{it-1})+(f_{i}-f_{i})+(\epsilon_{it}-\epsilon_{it-1}) \\
\Delta Y_{it}&=&\hat{\beta}_{1}\Delta X_{it}+\Delta\epsilon_{it}
\end{eqnarray}
$$
- $\hat{\beta}_{1}$ is now called the first difference estimator.
## Testing for Fixed Effects
>If any coefficient of an $f_{i}$ term is significant, we know we should use a fixed effects model. Consequently, we can do a joint-hypothesis testing if they are all statistically equal to zero:
$$
\begin{eqnarray}
H_{0}:\delta_{1},\delta_{2},\dots,\delta_{n-1}=0 \\
H_{1}:any\delta_{i}\neq0
\end{eqnarray}
$$
- If the null hypothesis is not rejected, we can use the pooled model. If it is rejected, we should use an individual effects model.


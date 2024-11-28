>Do not test with robust standard errors until all models have been tested for.
# Testing for Fixed Effects vs. OLS
>If any coefficient of an $f_{i}$ term is significant, we know we should use a fixed effects model instead of OLS. Consequently, we can do a joint-hypothesis testing if they are all statistically equal to zero:
$$
\begin{eqnarray}
H_{0}:\delta_{1},\delta_{2},\dots,\delta_{n-1}=0 \\
H_{1}:any\delta_{i}\neq0
\end{eqnarray}
$$
- If the null hypothesis is not rejected, we can use the pooled model. If it is rejected, we should use an individual effects model.
## Stata
#stata
>By testing for the fixed effects, which can be found [[Fixed Effects#Using the model in Stata|here]], Stata will automatically compute the F-test for you.
# Testing for Random Effects vs. OLS
>Breusch-Pagan LM test
- This tests if the variance of $u_{i}=0$. If this is the case, we know from [[Random Effects#Transforming the model|here]] that the random effects model is no different from the OLS model.
## Implementation in Stata
#stata 
1. Estimate the Pooled Model (OLS)
2. Estimate the Random Effect Model
3. Perform the Breusch-Pagan LM test using the command:
```Stata
xttest0
```
# Testing for Fixed Effects vs. Random Effects
>Hausman test for endogeneity
- Remember that the key different between the two effects models is if $f_{i}$ is correlated with $X$ or not. 
## Implementation in Stata
#stata
1. Estimate the Fixed Effects Model and save the results in memory,
2. Estimate the Random Effects Model
```Stata
hausman {variable with stored fixed effects regression}
```

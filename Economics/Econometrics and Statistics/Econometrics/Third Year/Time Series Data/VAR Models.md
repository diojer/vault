>Vector Autoregression Models
- The purpose of a VAR model is to create a system of equations, modelling a number of time-series variables *simultaneously*.
- For example: $$
\begin{eqnarray}
g_{t}&=&\alpha_{0}+\alpha_{1}g_{t-1}+\alpha_{2}u_{t-1}+e_{t} \\
u_{t}&=&\beta_{0}+\beta_{1}u_{t-1}+\beta_{2}g_{t-1}+v_{t}
\end{eqnarray}
$$
	- The right-hand side is the same - all that changes is the dependent variable.
	- This represents a VAR(1) model. It can also be represented in matrix form.
- There are more complex VAR models, however the basic one can be modelled using OLS.
# Estimation in practice
1. Choose the relevant variables based on literature and economic theory,
2. Test each variable for a unit root using DF/ADF tests, remembering to also check for serial correlation,
3. Determine the VAR specification by using information criteria,
4. Estimate the VAR model with this specification,
5. **Carry out a Granger causality test on the variables used in each equation.**
## Determining Lag length in Stata
- We use:
```Stata
varsoc x y z, maxlag(q)
```
- This will show the AIC and BIC up to lag `q`. We choose the specification with the lowest of these numbers.
	- This test also introduces the HQIC, which is another information criteria.
- `x y z` represents three variables we are using in the VAR. 
## Estimation in Stata
- We could look at the table of coefficients, but because there are so many variables it is not very informative.
- Instead, many applied papers focus more different post-estimation statistics: Granger causality tests and impulse-response functions.
---
**Granger Causality Test**:
```Stata
varsoc x y z, lags(q)
vargranger
```
- This returns the following kind of table:
- ![[Pasted image 20241021193151.png]]
	- The variable on the left is the dependent variable, on the right is one of the independent variables.
	- When one variable is being excluded, we are testing the null hypothesis that *all coefficients on that variable are equal to zero*.
		- If the null hypothesis is rejected, we can say that the independent variable "Granger causes" the dependent variable, i.e., that past values will have an impact on the present dependent variable.
---
**Impulse Response Function**
>This traces the effect on the dependent variable to a shock in an independent variable.
>>Thus, in a system of three variables, there are nine possible impulse response functions - we can also trace how a variable will react when it itself experiences a shock, ceteris paribus.
>*The shock occurs through the error term*. It affects the dependent variable over time.
>>If the time path of the impulse becomes 0 over time, the **system of equations is stable**.
>>However, the time path will explode if unstable.
![[Pasted image 20241021193739.png]]
- The first row shows:
	- **The effect of a one-standard-deviation impulse to the interest rate equation (ffr)**.
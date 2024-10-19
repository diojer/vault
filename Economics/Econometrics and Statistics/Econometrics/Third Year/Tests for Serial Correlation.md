>We will consider the relationship between unemployment and economic growth as an example for this lecture.
- A high rate of economic growth tends to be associated with a future decline in the rate of unemployment.
# The Model
$$
DU_{t}=\alpha+\delta_{0}G_{t}+\delta G_{t-1}+e_{t}
$$
Where:
- DUt is the change in unemployment,
	- This is the difference between unemployment in the current period and the last period,
- Gt and Gt-1 are the growth rate in periods t and t-1, respectively.
# Testing for Serial Correlation
## The Sample Correlogram of Residuals
- We can use the correlogram to check whether the error terms are autocorrelated/serially correlated.
>Because $e_{t}$ are unobserved, we use the correlogram of residuals, $\hat{e}_{t}$ as an estimate.
- We can run:
```mathematica
reg du g L.g
predict e_hat, resid
ac e_hat
```
- This regresses the change in unemployment, du, against the growth rate (g) and the lagged growth rate (L.g).
- We then generate the residuals, then `ac e_hat` generates a correlogram.
Using example data from the lecture:
![[Pasted image 20241007183720.png]]
Consequently, using a lag of one does *not* satisfy the assumption of no serial correlation.
## T-test
#stata
Consider the following AR(1) representation of the **serial correlation of the error term**:
$$
e_{t}=\rho_{1}e_{t-1}+v_{t}
$$
- vt is a true error term that does not suffer from serial correlation,
- For the error terms NOT to be correlated, $\rho_{1}$ must be statistically insignificant.
Hence, we can run the following stata command:
```mathematica
reg e_hat L.e_hat
```
Using material from the lecture, this returns a p-value of 0.001 for $\rho_{1}$. Consequently, this provides evidence of serial correlation.
## Durbin-Watson (DW) test for autocorrelation
>This test is honestly quite useless, I'm not sure why we're learning it but I will spell out the methodology regardless.

The Durbin-Watson test statistic is:
$$
d=\frac{ \sum_{t=2}^T (\hat{e}_{t}-\hat{e}_{t-1})^{2}}{\sum_{t=1}^T \hat{e}_{t}^{2}} \approx 2(1-\hat{\rho}_{1})
$$
- You then use a Durbin-Watson table to look up the confidence interval and check whether your test statistic implies you should reject or accept $H_{0}$.
- There is also a zone of indecision.
### Limitations
1. It only applies to AR(1) models of error terms,
2. It cannot accommodate time series models with lagged dependent variables, i.e., any AR-inclusive model (e.g., AR(q), ARMA(p,q), ARDL(p,q)).
3. The DW test has inconclusive regions.
- Given dataset containing the sp500 index values over time and the index of industrial production
---
Transforming the variables:
1. The variables are not linear - for this reason we convert them to their logged values.
2. This produces a linear graph, but it is *trending*. For this reason, we take the first difference.
3. The first difference of logged values represents the *growth rate*. For this reason, we rename the growth rate of the SNP500 index as *ret*, aka, return on investment, and the growth rate of industrial production as *gip*, aka, the growth of industrial production.
>We now have stationary variables.
>>Extra challenge: test the non-stationary forms for stationarity using Dickey-Fuller test.

---
Modelling the variables
1. First we can model both *ret* and *gip* as an ARMA(p,q) model.
	- To know the specification, we use the `arimasel` command. Stata runs ARMA(p,q) for $p=1,2,3;q=1,2,3$ and compares their information criteria, specifically their AIC and BIC.
	- Stata tells us that AIC selects $\text{ret}=ARMA(2,3)$ whereas BIC selects $\text{ret}=ARMA(0,1)$.
		- To see which one we should pick, I'll do a t-test and see if more MA lags are statistically significant.
			- ![[Pasted image 20241016153402.png]]
			- ![[Pasted image 20241016152443.png]]
				- Where:
					- `L.ret` is the lag of *ret*,
					- `retAR_ehat` is the residual when regressing `reg ret L.ret`. Remember, $\epsilon_{t-1}=L\epsilon_{t}$.
				- Since the coefficients are not significant, it seems that using an ARMA(0,1) model is preferable.
	- Stata tells us that AIC selects `gip=ARMA(3,3)` and BIC selects `gip=ARMA(1,1)`.
		- t-test:
			- ![[Pasted image 20241016153322.png]]
			- `reg gip L.gip L2.gip L3.gip L.gipAR_ehat L2.gipAR_ehat L3.gipAR_ehat`![[Pasted image 20241016153219.png]]
				- Where:
					- `L.gip` is the lag of *gip*
					- `gipAR_ehat` is the residual when regressing `reg gip L.gip`
				- The `gip=ARMA(3,3)` model has a lot of collinearity between the lagged error terms, and the AR coefficients are mostly insignificant. The `gip=ARMA(1,1)` produces significant coefficients.
2. We can also model the `gip` and `ret` relationship as an ARDL model.
	- We'll model using IC to estimate up to `ret=ARDL(2,2)`.
		- ![[Pasted image 20241016161021.png]]
			- As shown by this table, the best specification according to both t-testing *and* the information criteria (both of them) is specification 6: `ret=ARDL(1,0)`, i.e., `ret=AR(1)`.
		- If we run the BG test to check for serial correlation in our `ret=AR(1)`:
			- ![[Pasted image 20241016161448.png]]
			- We find no serial correlation over 4 lagged error terms.
	- We can also model up to `gip=ARDL(2,2)`
		- (Including contemporary `ret`)![[Pasted image 20241016162525.png]]
		- (Excluding contemporary `ret`) ![[Pasted image 20241016162620.png]]
			- Excluding contemporary ret makes theoretical sense and returns more significant coefficients, so it that seems to be the best specification. Of this subsection, it appears AIC favours model 4 whereas BIC favours model 6 (`gip=AR(1)`). Model 4 seems to be the most explanatory even though it contains an insignificant coefficient - this coefficient still tells that that the previous period of `ret` *also* seems to have little effect on `gip`. This could suggest real life time lags of investment responding to greater market valuations.
			- This leaves us with the model:
				- $\text{Growth in industrial production}=\text{ret}_{t-1}+\text{ret}_{t-2}+\text{growth}_{t-1}$.
		- Checking for serial correlation:
			- BG test on this regression model gives us:
				- ![[Pasted image 20241016163310.png]]
					- This suggests serial correlation in the error terms. To solve this, we'll add lagged error terms to our model.
						- On the other hand, the correlogram suggests little autocorrelation in the error terms:
							- ![[Pasted image 20241016164905.png]]
						- Not exactly sure what to do here.
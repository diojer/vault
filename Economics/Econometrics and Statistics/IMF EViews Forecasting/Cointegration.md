# Johansen Cointegration Test
When estimating a VECM, we can rewrite it as so:
$$
\Delta X_{t}=C+\Pi X_{t-1}+\Delta X_{t-1}+e_{t}
$$
- Where $\Pi X_{t-1}$ is the error correction (EC) term.
- This equation bears strong resemblance to the [[Stationarity, Drifts and Trends#Augmented Dickey-Fuller|ADF]] test, where $\Pi=1$ is tested. However, $\Pi$ in this case is not a constant and is a matrix, so it is slightly different.

The Johansen Cointegration Test estimates the rank of matrix $\Pi$.
- The rank of $\Pi$ tells us the maximum number of vectors that are independent within the matrix.
	- Given three endogenous variables, the rank is at most 3.
- If $rank(\Pi)=0$, there is no cointegration.
- If $rank(\Pi)=n$, it is full rank, i.e., all variables are $I(0)$.
- Given $rank(\Pi)=r$,
	- If $0<r<n$, there are $r$ independent cointegration relationships.
## Test Statistics
- Trace statistic:
	- Null hypothesis: rank is *at most* $r$.
	- Alternative: rank is *strictly greater than* $r$.
- Maximum eigenvalue statistic for $r$:
	- Null hypothesis: rank is $r$.
	- Alternative: rank is $r+1$.
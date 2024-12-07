1. Why is the CPI autocorrelation increasing when I add more lags???
	- It does take it away idiot
2. Any reason why my variables aren't cointegrated?
	- No but it doesn't matter
3. I'm getting very insignificant results (probably normal tbh)
	- thats fine
---
4. Why does adding a drift make the things appear drift stationary when they are obviously not????
	1. Just no need to difference it
5. M3 <- any need to justify this?
---
6. Should I first include the trend term when doing BG testing
7. If I find that for the first country, M3, XR and GEP are all drift-stationary, then should I assume for panel data estimation that they are drift stationary across all countries? If not what to do...
	1. no need to do stationarity testing
8. Can ARDL constraint be extended due to autocorrelation?
	1. Constraint can be relaxed
9. Can ARMA constraint be extended due to autocorrelation?
	1. Constraint can be relaxed too
	- Is correlogram enough to check for autocorrelation in ARMA? BG test not working
11. Can I ask how to interpret the coefficient of a differenced logged variable or no?
	1. One percent increase in XR leads to a one percentage change in the price level.
12. Am I supposed to have 54 ARDL specifications? Reference Lim and Sek paper where they don't combine different lags and simply do:
ARDL(0,0,0,0)
ARDL(1,0,0,0)
ARDL(1,1,0,0)
ARDL(1,1,1,0)
ARDL(1,1,1,1)

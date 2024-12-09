gen inf = lcpi - l4.lcpi

drop it

gen it = 0

replace it = 1 if rinf < 0.02

probit it lm lgep
estat class
margins, dydx(*)
	*Tells the the AVERAGE MARGINAL EFFECTS
margins, dydx(*) atmeans
	*Tells us the MARGINAL EFFECTS AT MEAN

logistic it lm lgep
estat class
margins, dydx(*)
	*Tells the the AVERAGE MARGINAL EFFECTS
margins, dydx(*) atmeans
	*Tells us the MARGINAL EFFECTS AT MEAN
gen it = 0

replace it = 1 if dlcpi < 0.025 & dlcpi > 0.015
*Uses inflation band of 2%+-0.5%. 1% may be better as a band, find a source though.

probit it lgep
margins, dydx(*)
	*Tells the the AVERAGE MARGINAL EFFECTS
margins, dydx(*) atmeans
	*Tells us the MARGINAL EFFECTS AT MEAN
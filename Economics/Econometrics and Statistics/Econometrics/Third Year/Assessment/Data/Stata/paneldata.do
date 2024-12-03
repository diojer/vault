*Initial set-up
foreach v of varlist cpi m xr gep {
	gen l`v' = ln(`v')
	label variable l`v' "LN of `v'"
}

foreach v of varlist lcpi lm lxr lgep {
	*needed because Breusch Pagan test breaks if using D. operator
	gen d`v' = D.`v'
	label variable d`v' "Lag of `v'"
}

gen date = quarterly(year, "YQ")
format date %tq
gen trend = _n

xtset countryID date

*Breusch Pagan test: RE vs OLS
reg dlcpi lm lxr lgep
xtreg dlcpi lm lxr lgep, re
xtest0

*F-test: FE vs OLS
xtreg dlcpi lm lxr lgep, fe
	*Automatically performs the F-test at the bottom
	
*Hausman test: FE vs RE
eststo fixed: xtreg dlcpi lm lxr lgep, fe
xtreg dlcpi lm lxr lgep, re
hausman fixed

*note: I think random effects win
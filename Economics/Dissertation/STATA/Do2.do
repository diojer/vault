tsset Year, yearly

foreach v of var * {
	gen Ln`v' = ln(`v')
}

foreach var of varlist D2Lnrealmedian DLnNetProductivityNDP D2Unemployment DLnHoursWorkedRecalculated {
	gen D`var' = D.`var'
	tssmooth ma Ma`var' = `var', window(2,1)
}

foreach v of varlist Lnrealmedian LnNetProductivityNDP Unemployment LnHoursWorkedRecalculated {
	display "`v'"
	display "Lags: 0"
	quietly regress D.`v' L.`v' trend
	estat bgodfrey, lags(1/4) nomiss0
	forvalues lags = 1/5 {
		display "Lags: `lags'"
		quietly regress D.`v' L(1/`lags')D.`v' L.`v'
		estat bgodfrey, lags(1/4) nomiss0
	}
	display "*-----------------*"
}

foreach v of varlist DLnRealMedianHourly {
	display "`v'"
	display "Lags: 0"
	quietly regress D.`v' L.`v' trend
	estat bgodfrey, lags(1/4) nomiss0
	forvalues lags = 1/5 {
		display "Lags: `lags'"
		quietly regress D.`v' L(1/`lags')D.`v' L.`v'
		estat bgodfrey, lags(1/4) nomiss0
	}
	display "*-----------------*"
}


reg MaDLnrealmedian MaDLnNetProductivityNDP MaD2Unemployment MaD2LUnemployment MaDLnHoursWorkedRecalculated
tsset Year, yearly

foreach v of var * {
	gen Ln`v' = ln(`v')
}

foreach v of var HoursWorkedRecalculated NetProductivityNDP Unemployment AverageLabourCompHourly {
	gen DLn`v' = D.Ln`v'
}

foreach var of varlist HoursWorkedRecalculated NetProductivityNDP Unemployment AverageLabourCompHourly {
	tssmooth ma MaDLn`var' = DLn`var', window(2,1)
}

foreach var of varlist realten realfquartile realtquartile realninety {
	reg MaDLn`var' MaDLnNetProductivityNDP MaDUnemployment MaLDUnemployment MaDLnHoursWorkedRecalculated, robust
}

foreach var of varlist DLnrealmedian DLnNetProductivityNDP DUnemployment DLnHoursWorkedRecalculated {
	tssmooth ma Ma`var' = `var', window(2,1)
}

foreach v of varlist DCPIInflation {
	display "`v'"
	display "Lags: 0"
	quietly regress D.`v' L.`v' trend
	estat bgodfrey, lags(1/4) nomiss0
	forvalues lags = 1/5 {
		display "Lags: `lags'"
		quietly regress D.`v' L(1/`lags')D.`v' L.`v' trend
		estat bgodfrey, lags(1/4) nomiss0
	}
	display "*-----------------*"
}

foreach v of varlist ehat {
	display "`v'"
	display "Lags: 0"
	quietly regress D.`v' L.`v'
	estat bgodfrey, lags(1/4) nomiss0
	forvalues lags = 1/5 {
		display "Lags: `lags'"
		quietly regress D.`v' L(1/`lags')D.`v' L.`v'
		estat bgodfrey, lags(1/4) nomiss0
	}
	display "*-----------------*"
}

foreach v of varlist P I J K L M N O {
	qui reg Ln`v' LnNetProductivityNDP MaUnemployment MaLUnemployment Inflation, robust
	predict ehat`v', resid
}

foreach v of varlist ehatP ehatI ehatJ ehatK ehatL ehatM ehatN ehatO {
	display "`v'"
	display "Lags: 0"
	quietly regress D.`v' L.`v'
	estat bgodfrey, lags(1/4) nomiss0
	forvalues lags = 1/5 {
		display "Lags: `lags'"
		quietly regress D.`v' L(1/`lags')D.`v' L.`v'
		estat bgodfrey, lags(1/4) nomiss0
	}
	display "*-----------------*"
}

reg MaDLnrealmedian MaDLnNetProductivityNDP MaD2Unemployment MaD2LUnemployment MaDLnHoursWorkedRecalculated
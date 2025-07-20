foreach v of varlist  DLnRealAverageCompensation DLnNetProductivityNDP {
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

foreach v of varlist DLnRealMedianWage DLnRealAverageWage {
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

foreach v of varlist DLnRealMaleMedianEarnings DLnRealConsumptionEarnings {
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
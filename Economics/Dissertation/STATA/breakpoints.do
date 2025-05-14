foreach var of varlist Lnrealmedian LnNetProductivityNDP Unemployment LnHoursWorked {
	display "`var'------------------------------"
	clemio1 D.`var'
	clemao1 D.`var'
	display "-------------------------------"
}

foreach v of varlist DLnrealmedian DLnNetProductivityNDP DUnemployment DLnHoursWorkedRecalculated  {
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

foreach v of varlist DUnemployment  {
	display "`v'"
	display "Lags: 0"
	quietly regress D.`v' L.`v' if Year < 2008
	estat bgodfrey, lags(1/4) nomiss0
	forvalues lags = 1/5 {
		display "Lags: `lags'"
		quietly regress D.`v' L(1/`lags')D.`v' L.`v' if Year < 2008
		estat bgodfrey, lags(1/4) nomiss0
	}
	display "*-----------------*"
}

foreach var of varlist LnRealMaleMedianEarnings LnRealFemaleMedianEarnings {
	display "`var'-----------------------------------------------"
	clemio1 `var'
	clemao1 `var'
	display "***********DIFFERENCED*************"
	clemio1 D.`var'
	clemao1 D.`var'
	display "-----------------------------------------------------"
}
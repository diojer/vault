*------------------------
*FOR SETTING UP FROM EXCEL UNDIFFERENCED VARIABLES
gen date = quarterly(quarter, "YQ")

foreach v of var * {
	drop if missing(`v')
}

foreach v of var * {
	gen l`v' = ln(`v')
}

*------------------------
*FOR SERIAL CORRELATION TESTING ALL UNDIFFERENCED VARIABLES
*UNCOMMENT FOLLOWING LINE FOR SERIAL CORRELATION TESTING DIFFERENCED VARIABLES

*foreach v of varlist D.lcpi D.lm D.lxr D.lgep {
foreach v of varlist lcpi lm lxr lgep {
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

foreach v of varlist cpi m xr gep {
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


*------------------------
*FOR ARDL TESTING ALL UNDIFFERENCED VARIABLES

forvalues cpilags = 1/2 {
	forvalues mlags = 0/2 {
		forvalues xrlags = 0/2 {
			forvalues geplags = 0/2 {
				
				eststo: regress lcpi L(1/`cpilags').lcpi L(0/`mlags').lm L(0/`xrlags').lxr L(0/`geplags').lgep
				
			}
		}
	}
}
esttab, scalars (aic bic) noobs

*------------------------
*FOR ARDL TESTING ALL DIFFERENCED VARIABLES

eststo clear
forvalues cpilags = 1/2 {
	forvalues mlags = 0/2 {
		forvalues xrlags = 0/2 {
			forvalues geplags = 0/2 {
				eststo: quietly regress Dlcpi L(1/`cpilags').Dlcpi L(0/`mlags').Dlm L(0/`xrlags').Dlxr L(0/`geplags').Dlgep, robust
			}
		}
	}
}
esttab using test2.csv, replace scalars (aic bic) se

*------------------------
*FOR ARDL TESTING FINAL SPECIFICATION

eststo clear
forvalues cpilags = 1/2 {
	forvalues mlags = 0/2 {
		forvalues xrlags = 0/2 {
			forvalues geplags = 0/2 {
				eststo: quietly regress Dlcpi L(1/`cpilags').Dlcpi L(0/`mlags').lm L(0/`xrlags').lxr L(0/`geplags').lgep, robust
			}
		}
	}
}
esttab using ardlspec.csv, replace scalars (aic bic) se



*------------------------
*FOR DETRENDING ALL VARIABLES

foreach v of varlist lcpi lm lxr lgep {
	quietly reg `v' date
	predict t`v', resid
}

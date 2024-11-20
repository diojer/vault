gen date = quarterly(quarter, "YQ")

foreach v of var * {
	drop if missing(`v')
}

foreach v of var * {
	gen l`v' = ln(`v')
}

forvalues lags = 1/4 {
	quietly regress Dlcpi L(1/`lags').Dlcpi L.lcpi
	estat bgodfrey, lags(1/4) nomiss0
}

quietly regress Dlm L.lm
estat bgodfrey, lags(1/4) nomiss0
forvalues lags = 1/4 {
	quietly regress Dlm L(1/`lags').Dlm L.lm
	estat bgodfrey, lags(1/4) nomiss0
}

foreach v of varlist lcpi lm lxr lgep {
	display "`v'"
	quietly regress D`v' L.`v'
	eststo m5: quietly estat bgodfrey, lags(1/4) nomiss0
	forvalues lags = 1/4 {
		quietly regress D`v' L(1/`lags').D`v' L.`v'
		eststo m`lags': quietly estat bgodfrey, lags(1/4) nomiss0
	}
	esttab m1 m2 m3 m4 m5, scalars(bic aic bgodfrey) obslast
}

foreach v of varlist Dlcpi Dlm Dlxr Dlgep {
	display "`v'"
	gen D`v' = `v' - L.`v'
	quietly regress D`v' L.`v'
	estat bgodfrey, lags(1/4) nomiss0
	forvalues lags = 1/4 {
		quietly regress D`v' L(1/`lags').D`v' L.`v'
		estat bgodfrey, lags(1/4) nomiss0
	}
	display "*-----------------*"
	drop D`v'
}

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

forvalues cpilags = 1/2 {
	forvalues elags = 1/2 {
		eststo: regress Dlcpi L(1/`cpilags').Dlcpi L(1/`elags')
	}
}
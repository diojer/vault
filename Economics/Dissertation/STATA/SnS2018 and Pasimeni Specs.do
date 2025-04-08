//STEP 1
foreach v of var * {
	gen Ln`v' = ln(`v')
}

//STEP 2
foreach var of varlist Unemployment LnInflation LabourShare LnProductivity LnRealMedianWage LnRealAverageWage P I J K L M N O LnHoursWorked {
	gen D`var' = D.`var'
	tssmooth ma MaD`var' = D.`var', window(2,1)
	tssmooth ma Ma`var' = `var', window(2,1)
	tssmooth ma MaL`var' = L.`var', window(2,1)
	tssmooth ma Ma2D`var' = D.`var', window(1,1,1)
	tssmooth ma Ma2`var' = `var', window(1,1,1)
}


//Stansbury and Summers (2018) specification
reg MaDLnRealMedianWage MaDLnProductivity MaUnemployment MaLUnemployment, robust
foreach var of varlist MaDLnTenth MaDLnTwentieth MaDLnThirtieth MaDLnFortieth MaDLnSixtieth MaDLnSeventieth MaDLnEightieth MaDLnNinetieth {
	display "`var'-------------------"
	reg `var' MaDLnProductivity MaUnemployment MaLUnemployment, robust
}


//Pasimeni Moving Averages
reg Ma2DLnRealMedianWage Ma2DLnProductivity Ma2Unemployment MaLUnemployment MaDLnHoursWorked, robust

foreach var of varlist P I J K L M N O {
	display "`var'-------------------"
	reg `var' Ma2DLnProductivity Ma2Unemployment MaLUnemployment MaDLnHoursWorked, robust
}


//Own Specification
reg MaDLnRealMedianWage MaDLnProductivity MaUnemployment MaLUnemployment MaLabourShare, robust


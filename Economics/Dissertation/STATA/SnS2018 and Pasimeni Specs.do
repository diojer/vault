//STEP 1
tsset Year, yearly
foreach v of var * {
	gen Ln`v' = ln(`v')
}

//STEP 2
foreach var of varlist Unemployment LnInflation LabourShare LnNetProductivityNDP LnRealMedianWage LnRealAverageWage LnRealAverageCompensation LnP LnH LnI LnJ LnK LnL LnM LnN {
	gen D`var' = D.`var'
	tssmooth ma MaD`var' = D.`var', window(2,1)
	tssmooth ma Ma`var' = `var', window(2,1)
	tssmooth ma MaL`var' = L.`var', window(2,1)
	tssmooth ma Ma2D`var' = D.`var', window(1,1,1)
	tssmooth ma Ma2`var' = `var', window(1,1,1)
}

tssmooth ma MaLDUnemployment = LD.Unemployment, window(2,1)
tssmooth ma MaDInflation = D.Inflation, window(2,1)


//Stansbury and Summers (2018) specification
reg MaDLnRealMedianWage MaDLnNetProductivityNDP MaDUnemployment MaLDUnemployment MaDInflation, robust
foreach var of varlist MaDLnP MaDLnH MaDLnI MaDLnJ MaDLnK MaDLnL MaDLnM MaDLnN {
	display "`var'-------------------"
	reg `var' MaDLnNetProductivityNDP MaDUnemployment MaLDUnemployment MaDInflation, robust
}

reg MaDLnRealAverageWage MaDLnNetProductivityNDP MaDUnemployment MaLDUnemployment MaDInflation, robust

reg MaDLnRealAverageCompensation MaDLnNetProductivityNDP MaDUnemployment MaLDUnemployment MaDInflation, robust

//Pasimeni Moving Averages
reg Ma2DLnRealMedianWage Ma2DLnProductivity Ma2Unemployment MaLUnemployment MaDLnHoursWorked, robust

foreach var of varlist P I J K L M N O {
	display "`var'-------------------"
	reg `var' Ma2DLnProductivity Ma2Unemployment MaLUnemployment MaDLnHoursWorked, robust
}


//Own Specification
reg MaDLnRealMedianWage MaDLnProductivity MaUnemployment MaLUnemployment MaLabourShare, robust


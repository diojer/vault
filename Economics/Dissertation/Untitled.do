foreach v of var * {
	gen Ln`v' = ln(`v')
}

foreach var of varlist LnRealMedianWage LnProductivity LnHoursWorked {
	tssmooth ma MaD`var' = D.`var', window(2,1)
}

foreach var of varlist Unemployment LabourShare {
	tssmooth ma MaD`var' = `var', window(2,1)
}

foreach var of varlist LnRealMedianWage LnProductivity Unemployment {
	tssmooth ma Ma2D`var' = D.`var', window(1,1,1)
}

foreach var of varlist Unemployment {
	tssmooth ma Ma2D`var' = `var', window(1,1,1)
}
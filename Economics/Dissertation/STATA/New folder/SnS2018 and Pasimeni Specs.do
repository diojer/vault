//STEP 1
tsset Year, yearly
foreach v of var * {
	gen Ln`v' = ln(`v')
}

//STEP 2
foreach var of varlist * {
	gen D`var' = D.`var'
}

foreach var of varlist * {
	tssmooth ma Ma3`var' = `var', window(2,1)
	tssmooth ma Ma3L`var' = L.`var', window(2,1)
	tssmooth ma Ma3Z`var' = `var', window(1,1,1)
	tssmooth ma Ma3ZL`var' = L.`var', window(1,1,1)
}

foreach var of varlist * {
	if !strpos("`var'", "Ma") {
		tssmooth ma Ma3`var' = `var', window(2,1)
		tssmooth ma Ma3L`var' = L.`var', window(2,1)
		tssmooth ma Ma3Z`var' = `var', window(1,1,1)
		tssmooth ma Ma3ZL`var' = L.`var', window(1,1,1)
	}
	
}
foreach var of varlist * {
	if !strpos("`var'", "Ma") {
		tssmooth ma Ma2`var' = `var', window(1,1)
		tssmooth ma Ma2L`var' = L.`var', window(1,1)
		tssmooth ma Ma4`var' = `var', window(3,1)
		tssmooth ma Ma4L`var' = L.`var', window(3,1)
		tssmooth ma Ma4Z`var' = `var', window(2,1,1)
		tssmooth ma Ma4ZL`var' = L.`var', window(2,1,1)
		tssmooth ma Ma5`var' = `var', window(4,1)
		tssmooth ma Ma5L`var' = L.`var', window(4,1)
		tssmooth ma Ma5Z`var' = `var', window(2,1,2)
		tssmooth ma Ma5ZL`var' = L.`var', window(2,1,2)
	}
}
//Stansbury and Summers (2018) specification
//Median Wage
reg Ma3DLnRealMedianWage Ma3DLnNetProductivityNDP Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation, robust
test Ma3DLnNetProductivityNDP = 1

//Mean Wage
reg Ma3DLnRealAverageWage Ma3DLnNetProductivityNDP Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation, robust
test Ma3DLnNetProductivityNDP = 1


//Mean Comp
reg Ma3DLnRealAverageCompensation Ma3DLnNetProductivityNDP Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation, robust
test Ma3DLnNetProductivityNDP = 1

//Income Dist.
foreach var of varlist P I J K L M N O {
	display "`var'-------------------"
	reg Ma3DLn`var' Ma3DLnNetProductivityNDP Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation, robust
	test Ma3DLnNetProductivityNDP = 1
}

//-------ROBUSTNESS CHECKS

foreach var of varlist Ma3DLnRealMedianWage Ma3DLnRealAverageWage Ma3DLnRealAverageCompensation {
	reg `var' Ma3DLnNetProductivityNDP Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIHInflation, robust
	test Ma3DLnNetProductivityNDP = 1
}

//Productivity Loop
foreach var of varlist Ma3DLnNetProductivityNVA Ma3DLnGrossProductivityGVA Ma3DLnGrossProductivityGDP {
	display "-------------------`var'"
	//Median
	reg Ma3DLnRealMedianWage `var' Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation, robust
	test `var' = 1
	
	//Mean Wage
reg Ma3DLnRealAverageWage `var' Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation, robust
	test `var' = 1
	
	//Mean Comp
reg Ma3DLnRealAverageCompensation `var' Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation, robust
	test `var' = 1
}

//Moving Averages Test
foreach var of varlist Ma2DLnRealMedianWage Ma2DLnRealAverageWage Ma2DLnRealAverageCompensation {
	reg `var' Ma2DLnNetProductivityNDP Ma2UnemploymentRestricted Ma2LUnemploymentRestricted Ma2CPIInflation, robust
	test Ma2DLnNetProductivityNDP = 1
}

foreach var of varlist Ma4DLnRealMedianWage Ma4DLnRealAverageWage Ma4DLnRealAverageCompensation {
	reg `var' Ma4DLnNetProductivityNDP Ma4UnemploymentRestricted Ma4LUnemploymentRestricted Ma4CPIInflation, robust
	test Ma4DLnNetProductivityNDP = 1
}

foreach var of varlist Ma5DLnRealMedianWage Ma5DLnRealAverageWage Ma5DLnRealAverageCompensation {
	reg `var' Ma5DLnNetProductivityNDP Ma5UnemploymentRestricted Ma5LUnemploymentRestricted Ma5CPIInflation, robust
	test Ma5DLnNetProductivityNDP = 1
}

//Income Dist. with dummies
foreach var of varlist P I J K L M N O {
	display "`var'-------------------"
	reg Ma3DLn`var' Ma3DLnNetProductivityNDP Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation dummy_Ma3DLnNetProductivityNDP, robust
	test Ma3DLnNetProductivityNDP + dummy_Ma3DLnNetProductivityNDP = 1
}


//Dummy Variables test
//Median Wage
reg Ma3DLnRealMedianWage Ma3DLnNetProductivityNDP Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation dummy_Ma3DLnNetProductivityNDP, robust
test Ma3DLnNetProductivityNDP + dummy_Ma3DLnNetProductivityNDP = 1

//Mean Wage
reg Ma3DLnRealAverageWage Ma3DLnNetProductivityNDP Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation dummy_Ma3DLnNetProductivityNDP, robust
test Ma3DLnNetProductivityNDP + dummy_Ma3DLnNetProductivityNDP = 1

//Mean Comp
reg Ma3DLnRealAverageCompensation Ma3DLnNetProductivityNDP Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3CPIInflation dummy_Ma3DLnNetProductivityNDP, robust
test Ma3DLnNetProductivityNDP + dummy_Ma3DLnNetProductivityNDP = 1

//Contemporaneous test
foreach var of varlist DLnRealMedianWage DLnRealAverageWage DLnRealAverageCompensation {
	reg `var' DLnNetProductivityNDP UnemploymentRestricted L.UnemploymentRestricted CPIInflation, robust
	test DLnNetProductivityNDP = 1
}

//Contemp. w/o inflation
foreach var of varlist DLnRealMedianWage DLnRealAverageWage DLnRealAverageCompensation {
	reg `var' DLnNetProductivityNDP UnemploymentRestricted L.UnemploymentRestricted, robust
	test DLnNetProductivityNDP = 1
}


//Own Specification
reg Ma3DLnRealMedianWage Ma3DLnNetProductivityNDP Ma3UnemploymentRestricted Ma3LUnemploymentRestricted Ma3DCPIInflation Ma3DLabourShare, robust


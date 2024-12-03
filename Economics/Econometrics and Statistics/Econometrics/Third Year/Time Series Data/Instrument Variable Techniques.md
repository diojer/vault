# Stata
```Stata
ivregress 2sls y x1 x2 (x3 = z1 z2 z3), robust first
```
Where:
- y is the dependent,
- x1 and x2 are the exogenous independents,
- x3 is the endogenous independent,
- z1, z2 and z3 are the instrument variables.
- The setting *first* returns the first-stage of the 2-stage least squares regression, i.e., the x3 regression.
	- The second stage is the important regression.
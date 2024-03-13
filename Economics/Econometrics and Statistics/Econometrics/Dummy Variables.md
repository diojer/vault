A dummy variable can be either 0 or 1.
# Intercept Dummy Variables
These are introduced to affect the intercept value depending on different conditions.
![[Pasted image 20240311153052.png]]
Where:
- Price is the price of a house
- sqft is the square footage of a house
- school is whether a house is 1) close to a school 0) far from a school.
In this situation, school is the dummy variable.
![[Pasted image 20240311153155.png]]
This means we think that prices rise at the same rate regardless of their proximity to a good school, but that this proximity imposes some kind of land-value premium.
## Questions
- Are there problems of multicollinearity with intercept dummy variables?
- Does the number of intercept dummy variables affect the adjusted $R^2$?
- 
# Slope Dummy Variable
![[Pasted image 20240311153443.png]]
Where:
- Price is the price of a house
- sqft is the square footage of a house
- school is whether a house is 1) close to a school 0) far from a school.
In this situation, school is the dummy variable.

This means we think the price will rise *faster* due to an increase in square footage when a house is close to a good school. We use the dummy variable to figure out how much "faster" this increase is.
# Intercept and Slope Dummy
![[Pasted image 20240311154320.png]]
![[Pasted image 20240311154305.png]]
# Multiple Dummy Variables
![[Pasted image 20240311155024.png]]

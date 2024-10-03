The error term may pick up variables that affect $y$.
- For example, if we are finding the effect of class size on test score and run a regression with only those two variables, the error term may incorporate omitted confounding variables, such as funding.
- Thus, our estimates are likely to be biased.
![[Pasted image 20240226163426.png]]
Where $\beta_{3}$ is the coefficient of the omitted variable.

The main problem of the omitted variable bias is that it breaks the rule:
- $E(e_{i}|x_{i}=0)$
- In other words, an omitted variable bias occurs when between the error terms are correlated with the independent variable.
	- So, the omitted variable must be confounding, i.e., affect both $x$ and $y$, to bias the estimates.
- If the variable is not confounding but still omitted, the $R^2$ value will be affected.

The solution is to include the omitted variable.

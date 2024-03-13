# Unconstrained
We take $f(x,y)$ to be a twice differentiable function.
- There is a stationary point at $(x^{*},y^*)$.
	- So, the partial first derivatives will be equal to 0 at $(x^{*},y^*)$.
- We want to maximise the function with respect to a constraint (even though this is called unconstrained optimisation).
## Sufficient Conditions for Maximum
- $f_{xx}\leq 0;f_{yy}\leq 0$
- $f_{xx}\cdot f_{yy}-f_{xy}^2\geq 0$
## Sufficient Conditions for Minimum
- $f_{xx}\geq 0;f_{yy}\geq 0$
- $f_{xx}\cdot f_{yy}-f_{xy}^2\geq 0$
## Sufficient Conditions for Saddle Point
- $f_{xx}\cdot f_{yy}-f_{xy}^2\lt 0$
## Unconstrained Optimisation
We use the constraint function, for example $x+y=500$, and change it into $x=500-y$. Then, we can substitute this function into our utility/profit function, and optimise.
- This is called unconstrained because we remove the constraint function.
# Constrained
Instead of using only the objective function, we use the Lagrangian, which includes the constraint. The conditions for minimum and maximums are the same, except using the partial derivatives of the Lagrangian rather than for the objective function:
## Sufficient Conditions for Maximum
- $L_{xx}\leq 0;L_{yy}\leq 0$
- $L_{xx}\cdot L_{yy}-L_{xy}^2\geq 0$
## Sufficient Conditions for Minimum
- $L_{xx}\geq 0;L_{yy}\geq 0$
- $L_{xx}\cdot L_{yy}-L_{xy}^2\geq 0$
## Sufficient Conditions for Saddle Point
- $L_{xx}\cdot L_{yy}-L_{xy}^2\lt 0$

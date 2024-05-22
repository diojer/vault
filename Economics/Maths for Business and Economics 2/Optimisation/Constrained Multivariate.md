# 3 Variables, 1 Constraint
Same procedure as a normal Lagrangian.
1. Write down the Lagrangian as $L=f(x,y,z)-\lambda g(x,y,z)$
2. Find the first order conditions for each variable: $L_{i}=\frac{\delta L}{\delta i}=0$, where $i=x,y,z$
3. Solve the system of equations.
# Multiple Solutions
## 2 Variables, 1 Constraint
- Take the following function and constrain:
	- $f(x,y)=x^{2}+y^{2}$
	- $g(x,y)=x^{2}+xy+y^{2}=3$
- At the end, you get
	- $x=\pm y$
	- Plug $x=y$ then $x=-y$ into the constraint function to find $x$ and $y$.
		- Remember that once you've plugged in these values, $x\neq\pm y$, it's either one or the other.
- Once you've found an array of solutions, plug them back into the objective function. You will find a minimum and minimised and maximised value.
## 3 Variables, 2 Constraints
- Take the following objective and constraint functions:
	- $f(x,y,z)=x^{2}+y^{2}+z$
	- $g_{1}(x,y,z)=x^{2}+2xy+y^{2}+z^{2}=\frac{5}{2}$
	- $g_{2}(x,y,z)=x+y-z=1$
- Put it into the Lagrange using $\lambda_{1}$ and $\lambda_{2}$ for $g_{1}$ and $g_{2}$.
- Solve for x,y,z
- Plug the multiple solutions back into the objective function and see whether it is maximising or minimising.

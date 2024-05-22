# Solving with one constraint
Maximisation will have the inequality look like:
- $g(x,y)\leq c$
While minimisation looks like:
- $g(x,y)\geq c$

- Take the objective and constraint functions:
	- $f(x,y)=4-\frac{1}{2}x-4y$
	- $g(x,y)=6x-4y\leq a$
- This gives us the following first order conditions:
	- $L_{x}=-x-6\lambda=0$
	- $L_{y}=-4+4\lambda=0$
	- $\lambda \geq 0, \text{with}~ \lambda=0 \text{ if }6x-4y<a$
- We look at solving the system of equations under two different cases - one where $\lambda=0$, and one where $\lambda>0$.
- We know that if $\lambda \neq 0$, then $\lambda>0$. If that's the case, then $6x-4y=a$, as if $6x-4y\lt a$, $\lambda=0$, which violates our first premise (and $6x-4y$ can only ever be less than or equal to $a$).
	- So, if $\lambda \neq 0$, $g(x,y)=a$.
- If $\lambda=0$, then we know that $g(x,y)\leq a$. We cannot say for sure it has strict inequality - we just know that only one of the conditions can *ever* have strict equality at a time.
	- However, if $\lambda=0$, we can use this fact to solve the system of equations.
	- $\lambda=0$ does not prove $g(x,y)\lt 0$, while $g(x,y)\lt 0$ does prove $\lambda=0$.
# Solving with multiple constraints
Same as with one constraint, except we introduce multiple lambdas and have to check each of their cases,
- $\lambda_{1}\gt 0$
- $\lambda_{1}= 0$
- $\lambda_{2}\gt 0$
- $\lambda_{2}= 0$
Remember:
- Try to solve for a lambda before entering into the different cases
- Write down all numbered valid equations as you go.
# Non-negativity constraints
This is where $g(x,y)\leq m,x\geq 0,y\geq 0$.
Lagrangian:
- $L=f(x,y)-\lambda_{1} (g(x,y)-m)+\lambda_{2}x+\lambda_{3}y$
First order conditions:
- $L_{x}=f_{x}-\lambda g_{x}\leq 0,f_{x}-\lambda g_{x}=0 \text{ if }x>0$
- $L_{y}=f_{y}-\lambda g_{y}\leq 0,f_{y}-\lambda g_{y}=0 \text{ if }y>0$
- $\lambda_{1}\geq 0, \lambda_{1}=0 \text{ if }g(x,y)<,$
Tips
- See if $\lambda_{1}$ can be narrowed down, this drops the number of cases needed to be checked in half.

Creating a structural model allows better examination of impulse responses, because we know how an exogenous shock should affect our dependent variables.

Uncovering the structural model is called "identification"

Without identification we suffer from simultaneity problems wherein, e.g., monetary policy decisions are caused by inflation expectations, even though monetary policy decisions influence inflation.
- Identifying the underlying structure allows pure exogenous shocks to be considered.
# Structural Element
$$
\begin{eqnarray}
y_{t}+a_{12}r_{t}=\beta_{10}+\beta_{11}y_{t-1}+\beta_{12}r_{t-1}+u_{yt} \\
a_{21}y_{t}+r_{t}=\beta_{20}+\beta_{21}y_{t-1}+\beta_{22}r_{t-1}+u_{rt}
\end{eqnarray}
$$
The above equation is slightly different from previous VAR equations, because it includes contemporaneous endogenous variables on the left-hand side. The coefficients $a_{12}$ and $a_{21}$ represent the contemporaneous relationship between $y$ and $r$. Rewriting in matrix form:
$$
\begin{bmatrix}
1 &a_{12} \\
a_{21} &1
\end{bmatrix}
\begin{bmatrix}
y_{t} \\
r_{t}
\end{bmatrix}
=
\begin{bmatrix}
\beta_{10} \\
\beta_{20}
\end{bmatrix}
+
\begin{bmatrix}
\beta_{11} &\beta_{12} \\
\beta_{21} &\beta_{22}
\end{bmatrix}
\begin{bmatrix}
y_{t-1} \\
r_{t-1}
\end{bmatrix}
+
\begin{bmatrix}
u_{yt} \\
u_{rt}
\end{bmatrix}
$$
The first matrix is the $A$ matrix. This is the structural component of a sVAR. Rewriting again:
$$
AX_{t}=\beta_{0}+\beta_{1}X_{t-1}+u_{t}
$$
We multiply by $A^{-1}$:
$$
A^{-1}AX_{t}=A^{-1}\beta_{0}+A^{-1}\beta_{1}X_{t-1}+A^{-1}u_{t}
$$
Given that:
- $A^{-1}\beta_{x}=G_{x}$
- $A^{-1}u_{t}=e_{t}$
We get:
$$
X_{t}=G_{0}+G_{1}X_{t-1}+e_{t}
$$
- Which is a normal reduced-form VAR equation.
	- This related the structural shocks $u$ with forecast errors $e$.

# Estimation and Identification
The structural VAR cannot be estimated directly. Instead, we start with the reduced form VAR (from a normal VAR estimation) and work backwards to get the structural form and thus isolate the exogenous shocks.
- Identification will isolate matrix $A$ and allow us to calculate the structural component.

All of the information for identifying the sVAR comes from the reduced-form VAR, which gives us 9 parameters. However, the sVAR has 10 parameters, 
- VAR: given two equations, we have 6 coefficients, 2 variances (error terms), 1 covariance (errors are not necessarily independent).
- sVAR: given two equations, we have 8 coefficients and 2 variances (structural shocks are iid).
This means we have more unknowns in the sVAR, so we must impose one restriction on the structural parameters.
- The usual approach is to impose restrictions on matrix $A$.

Identification is about imposing these restrictions based on economic theory and intuition.
- For example, if we assume that $y$ is not affected contemporaneously by a shock to $r$, we can say $a_{12}=0$. This allows us to solve the model.
- Imposing restrictions on matrix $A$ also restricts $A^{-1}$.
	- This allows us to also calculate structural shocks.
- The number of restrictions required is the difference between the unknown elements in the sVAR and the known elements in the reduced-form VAR.
	- This is $\frac{n^{2}-n}{2}$
	- With two endogenous variables, that evaluates to $1$.
	- With three, it evaluates to $3$.

Restrictions can be imposed recursively or non-recursively.
- When imposed recursively, one variable is chosen as totally exogenous, and as you move down the variable list more and more variables are allowed to influence each other contemporaneously. This leads to matrix $A$ being a lower triangular matrix:
$$
\begin{bmatrix}
1 &0 &0 \\
a_{21} &1 &0 \\
a_{31} &a_{32} &1
\end{bmatrix}
\begin{bmatrix}
y_{t} \\
\pi_{t} \\
r_{t}
\end{bmatrix}
$$
- With 3 variables, we have imposed 3 restrictions (0ed coefficients).
- The $y$ variable is exogenous, not influenced contemporaneously by the other variables. Inflation ($\pi$) is affected only by $y_{t}$, and the interest rate $r$ is affected contemporaneously by all of the above.
	- Ordering matters in a recursive identification: the top variable is unaffected, the bottom variable is totally affected.
	- This also means the fully restricted variable's error terms are equal to its structural shocks, $e_{yt}=u_{yt}$, whereas the other variable's error terms are linear combinations of structural shocks with $A^{-1}$ as the coefficient matrix.

The non-recursive identification strategy uses $Ae_{t}=Bu_{t}$ to relate errors and shocks in sVARs.
# Impulse Responses
To calculate impulse response functions, the sVAR is transformed into its Wold representation, as a sum of past shocks (given that all endogenous variables are essentially functions of past shocks in a VAR model).
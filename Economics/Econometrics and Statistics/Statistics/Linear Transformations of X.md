The general expression for a linear transformation of $X$ is:
$$
Y=a+bX
$$
Where $a$ and $b$ are constants.
If we know $E(X)$ and $Var(X)$ we can figure out $E(Y)$ and $Var(Y)$ without knowing $f(y)$ (the probability distribution of $Y$).

# Expected Value
The expected value of $Y$ is:
$$
\begin{eqnarray}
E(Y)&=&E(a+bX) \\
&=&E(a)+E(bX) \\
&=&a+bE(X)
\end{eqnarray}
$$
Thus, by knowing $E(X)$ we can derive $E(Y)$ without knowing $f(y)$.
# Variance
The variance of $Y$ is:
$$
Var(Y)=b^2Var(X)
$$
- Even if $Y=a-bX$, the identity of $Var(Y)$ remains the same.
Thus, by knowing $Var(X)$ we can derive $Var(Y)$ without knowing $f(y)$.

These results apply to both the discrete and continuous case.
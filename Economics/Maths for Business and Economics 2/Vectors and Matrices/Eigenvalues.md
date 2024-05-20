The characteristic equation is: $Det(A-\lambda I)=0$ for a matrix $A$.
We solve this equation to find $\lambda$.
- A is a known square matrix of order $n\times n$
- $\lambda$ is an unknown scalar
$\lambda$ gives an array of eigen values, i.e., possible scalars.
Matrix A is positive/negative *definite* if all $\lambda$ are positive/negative;
Matrix A is sign indefinite if $\lambda$ changes signs.

# Practice
![[Pasted image 20240518210048.png]]
$$
\begin{gather}
0&=& (2-\lambda) \begin{vmatrix}
1-\lambda & 1 \\
0 & -2-\lambda
\end{vmatrix}-0+2\begin{vmatrix}
1 & -1 \\ 1-\lambda & 1
\end{vmatrix}\\ \\
0&=&(2-\lambda)((1-\lambda)(-2-\lambda))-0+2(1+(1-\lambda)) \\ \\
0&=&(2-\lambda)(-2-\lambda+2\lambda+\lambda^{2})+2(2-\lambda) \\ \\
0&=&-4-2\lambda+4\lambda+2\lambda^{2}+2\lambda+\lambda^{2}-2\lambda^{2}-\lambda^{3}+4-2\lambda \\ \\
0&=&-\lambda^{3}+\lambda^{2}+2\lambda \\
0&=&\lambda^{3}-\lambda^{2}-2\lambda
\end{gather}
$$

$$
\begin{vmatrix}
1-\lambda & k & 0 \\
3 & -2-\lambda &0 \\
0&-1&1-\lambda
\end{vmatrix}
$$
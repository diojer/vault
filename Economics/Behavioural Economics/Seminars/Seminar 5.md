1. ---
$$
P(A|B)=\frac{P(B|A)P(A)}{P(B)}
$$
$$
\begin{eqnarray}
P(M)&=&0.1 \\
P(R|M)&=&0.95 \\
P(R|F) &=& 0.08 \\
P(M|R)&=&\frac{P(R|M)P(M)}{P(R)} \\
P(R) &=& \sum P(R|H_{i})P(H_{i}) = P(R|M)P(M) +P(R|F)P(F) = 0.167 \\
P(M|R)&=&\frac{0.95 \times 0.1}{0.167}=0.569
\end{eqnarray}
$$
---
2. ---
$$
\begin{eqnarray}
P(L) &=& 0.01 \\
P(+|L) &=& 0.88 \\
P(-|NL) &=& 0.86 \\
P(NL|+)&=&\frac{P(+|NL)P(NL)}{P(+)} \\
P(+)&=&P(+|NL)P(NL)+P(+|L)P(L)=0.14\times 0.99+0.88\times 0.01=0.1474 \\
P(NL|+)&=& \frac{0.14\times 0.99}{0.1474}=0.94
\end{eqnarray}
$$
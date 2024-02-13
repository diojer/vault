# Special Matrices
- Square matrix
	- Same number of rows as columns
- Null matrix
	- All elements are zero
- Diagonal matrix
	- A square matrix where all off-diagonal elements are zero, and at least one element in the principal diagonal is not zero
- Identity matrix
	- A diagonal matrix where all elements in the principal diagonal are all 1
# Matrix Multiplication
If A, B, and C all are matrices:
- $A=3\times 2$
- $B = 4\times 5$
- And $C=A\cdot B$, then $C=3\times 5$
	- i.e., the number of rows and columns is the number of rows in the first matrix and the number of columns in the second matrix.
When multiplying matrices, the dot product is:
![[Pasted image 20240206153101.png]]
The first matrix goes row-by-row, and the second matrix goes column-by-column.
So, $C_{1}=a_{1}\cdot b_{1}+a_{2}\cdot b_{4}+a_{3}\cdot b_{7}$
## Rules
- $A(BC)=(AB)C$
- $A(B+C)=AB+AC$
Important: matrix multiplication is not commutative, i.e., $A\cdot B\neq B\cdot A$.
# Transpose
When we transpose a matrix, the first row becomes the first column, etc.
![[Pasted image 20240206153805.png]]
i.e., turning clockwise by 90 degrees and flipping horizontally.
- If $A=3\times 2$, then $A'=2\times 3$
## Rules
1. $(A')'=A$
2. $(A+B)'=A'+B'$
3. $(kA)'=kA'$, where $k$ is any scalar
4. $(AB)'=B'A'$ (transpose products get flipped)
5. A matrix is symmetric if $A'=A$
# Determinant of a Matrix
- Only calculated for square matrices
- For a matrix $A$, the determinant is $|A|$
![[Pasted image 20240206155211.png]]
## Rules
- If two or more rows are identical, the determinant is 0
- $|A'|=|A|$
- If two rows or two columns of matrix A are interchanged, the determinant sign changes, but not the value
- If two of the rows or columns are proportional, the determinant is 0
- $|AB|=|A||B|$
- $|kA|=k^{n}|A|$
- 
# Minor Matrix
The minor of an element $a_{mn}$ is equal to the matrix left when we ignore row $m$ and column $n$. For example:
![[Pasted image 20240206155211.png]]
The minor of $a$ is $|efhi|$.
The minor matrix is where an element $M_{mn}=Det(Minor(a_{mn}))$, where $M$ is an element in the minor matrix.
# Cofactor
The cofactor of a matrix is like the minor of a matrix, except the signs of certain elements have been modified:
# Adjoint Matrix
The adjoint is the transpose of the cofactor matrix
# Inverse
The inverse matrix is equal to the adjoint divided by the determinant, $\frac{Adj(A)}{|A|}$.
- Only square matrices can have inverses.
- The matrix $A$ multiplied by its inverse $A^{-1}$ is equal to the identity matrix, $I$.
- For a matrix to be invertible, the determinant must not equal 0.
## Properties
- $A^{-1}$ is invertible, and $(A^{-1})^{-1}=A$
- $(AB)^{-1}=B^{-1}A^{-1}$
- $(A')^{-1}=(A^{-1})'$
- $(kA)^{-1}=k^{-1}A^{-1}$
- If $A,B,C$ are all invertible $n \times n$ matrices, then $(ABC)^{-1}=C^{-1}B^{-1}A^{-1}$
- If $A$ is invertible and symmetric, the inverse is also symmetric.

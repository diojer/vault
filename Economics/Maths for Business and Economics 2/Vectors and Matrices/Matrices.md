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
- If two of the rows 


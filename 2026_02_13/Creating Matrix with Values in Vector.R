# Vector 1
V1 <- c(2,3,1,5,4,6,8,7,9)

# 3x3 matrix (Matrix-1) 
matrix1 <- matrix(V1, nrow = 3, ncol = 3)

# Transpose Matrix-1 to create Matrix-2 
matrix2 <- t(matrix1)

# Rename columns and rows
colnames(matrix1) <- c("Col1", "Col2", "Col3")
rownames(matrix1) <- c("Row1", "Row2", "Row3")
colnames(matrix2) <- c("T_Col1", "T_Col2", "T_Col3")
rownames(matrix2) <- c("T_Row1", "T_Row2", "T_Row3")
addition <- matrix1 + matrix2
subtraction <- matrix1 - matrix2
multiplication <- matrix1 * matrix2
division <- matrix1 / matrix2

print("Matrix 1:")
print(matrix1)
print("Matrix 2 (Transposed):")
print(matrix2)
print("Addition Result:")
print(addition)

# Array 1: 4 columns, 2 rows, 3 tables
data1 <- 1:24
array1 <- array(data1, dim = c(2, 4, 3))

# Array 2: 2 columns, 3 rows, 5 tables 
data2 <- 25:54
array2 <- array(data2, dim = c(3, 2, 5))

print("Array 1:")
print(array1)
print("Array 2:")
print(array2)

# Print second row of second matrix of first array 
cat("\nThe second row of the second matrix of the array:\n")
print(array1[2, , 2])

# Print element in 3rd row and 2nd column of 1st matrix of second array
cat("\nThe element in the 3rd row and 2nd column of the 1st matrix:\n")
print(array2[3, 2, 1])
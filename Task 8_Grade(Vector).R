# Input vector of exam scores
scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61,
            13, 44, 26, 24, 73, 73, 90, 39, 90, 54)

# Grade
grade_A <- sum(scores >= 90 & scores <= 100)
grade_B <- sum(scores >= 80 & scores <= 89)
grade_C <- sum(scores >= 70 & scores <= 79)
grade_D <- sum(scores >= 60 & scores <= 69)
grade_E <- sum(scores >= 50 & scores <= 59)
grade_F <- sum(scores <= 49)

# Display number of students per grade
cat("Grade A:", grade_A, "\n")
cat("Grade B:", grade_B, "\n")
cat("Grade C:", grade_C, "\n")
cat("Grade D:", grade_D, "\n")
cat("Grade E:", grade_E, "\n")
cat("Grade F:", grade_F, "\n\n")

# Check pass/fail (>49)
pass_status <- scores > 49
print(pass_status)

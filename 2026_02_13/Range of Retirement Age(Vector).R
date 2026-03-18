# Retirement age vector
age <- c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,
         52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)
age_factor <- factor(age)
print("Levels of factor:")
print(levels(age_factor))
# Create table for total number of staff per age
staff_age_table <- table(age)
print("Staff Age Count:")
print(staff_age_table)
age_ranges <- cut(age, breaks=c(50, 52, 54, 56, 58, 60), include.lowest=TRUE, right=FALSE)
range_table <- table(age_ranges)
print("Age Range Summary:")
print(range_table)
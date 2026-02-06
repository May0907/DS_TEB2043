student_records <- list(
  Name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt",
           "Larson", "Holland", "Paul", "Simu", "Renner"),
  Chemistry = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59),
  Physics = c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)
)

# Count failures (<=49)
chem_fail <- sum(student_records$Chemistry <= 49)
phys_fail <- sum(student_records$Physics <= 49)

# Find highest score in Chemistry and Physics
highest_chem <- max(student_records$Chemistry)
highest_phys <- max(student_records$Physics)

# Get student names with highest scores
best_chem_students <- student_records$Name[
  student_records$Chemistry == highest_chem
]

best_phys_students <- student_records$Name[
  student_records$Physics == highest_phys
]

# Results
cat("Chemistry failures:", chem_fail, "\n")
cat("Physics failures:", phys_fail, "\n\n")

cat("Highest Chemistry score:", highest_chem, "\n")
cat("Best Chemistry student:", best_chem_students, "\n\n")

cat("Highest Physics score:", highest_phys, "\n")
cat("Best Physics student:", best_phys_students, "\n")

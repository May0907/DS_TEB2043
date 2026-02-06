# Student record in a list with named elements
student_scores <- list(
  Robert = 59,
  Hemsworth = 71,
  Scarlett = 83,
  Evans = 68,
  Pratt = 65,
  Larson = 57,
  Holland = 62,
  Paul = 92,
  Simu = 92,
  Renner = 59
)
# Convert list values to numeric vector
scores_vector <- unlist(student_scores)
# Calculate highest, lowest, and average score
highest <- max(scores_vector)
lowest <- min(scores_vector)
average <- mean(scores_vector)
# Results
cat("Highest score:", highest, "\n")
cat("Lowest score:", lowest, "\n")
cat("Average score:", average, "\n")
cat("Student with highest score:", names(student_scores)[student_scores == max(unlist(student_scores))], "\n")
cat("Student with lowest score:", names(student_scores)[student_scores == min(unlist(student_scores))], "\n")

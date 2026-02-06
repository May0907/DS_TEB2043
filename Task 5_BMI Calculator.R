# Prompt weight and height
weight <- as.numeric(readline(prompt = "Enter your weight in kg: "))
height <- as.numeric(readline(prompt = "Enter your height in meters: "))
# Calculate BMI
bmi <- weight / (height^2)
# BMI category
if (bmi <= 18.4) {
  status <- "Underweight"
} else if (bmi >= 18.5 & bmi <= 24.9) {
  status <- "Normal"
} else if (bmi >= 25.0 & bmi < 39.9) {
  status <- "Overweight"
} else {
  status <- "Obese"
}
# Result
cat("Your BMI is:", round(bmi, 2))
cat("BMI Status:", status)

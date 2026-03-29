data("Theoph")
model_theoph <- lm(Dose ~ Wt, data = Theoph)
print(model_theoph)
summary(model_theoph)
plot(Theoph$Wt, Theoph$Dose, 
     main = "Theophylline: Weight vs Dose", 
     xlab = "Weight (kg)", ylab = "Dose (mg/kg)",
     pch = 16, col = "darkgreen")
abline(model_theoph, col = "red", lwd = 2)
new_weights <- data.frame(Wt = c(90, 95, 100))
predicted_doses <- predict(model_theoph, new_weights)
print(predicted_doses)
#Insights
#Data points near best fit line so weight is a suitable variable
#Weight affect dosage 
#If weight increase, then dosage decrease (Linear relationship)
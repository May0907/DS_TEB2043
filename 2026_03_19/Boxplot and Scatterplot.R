library(plotrix)
data()
data(mtcars)
plot(x = mtcars$wt, y = mtcars$mpg,
     main = "Impact of Weight on Fuel Efficiency",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles Per Gallon (MPG)",
     pch = 19, col = "darkblue")
abline(lm(mpg ~ wt, data = mtcars), col = "red")
boxplot(mpg ~ cyl, data = mtcars,
        main = "MPG by Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon",
        col = c("gold", "orange", "darkorange"))
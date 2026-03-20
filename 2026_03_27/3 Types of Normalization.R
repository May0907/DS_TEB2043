data("mtcars")
raw_data <- mtcars$mpg
log_scaled <- log(raw_data)
standard_scaled <- scale(raw_data)
library(caret)
minmax_proc <- preProcess(as.data.frame(raw_data), method = c("range"))
minmax_scaled <- predict(minmax_proc, as.data.frame(raw_data))
summary(raw_data)
summary(log_scaled)
summary(standard_scaled)
summary(minmax_scaled)
#Comparison of 3 Results
#Log Transformation is useful for highly skewed data & to change distribution shape
#Standard Scaling is useful for data approximately normally distributed & mean=0
#Min-Max Scaling maps feature values to the range 0 to 1 while preserving original distribution
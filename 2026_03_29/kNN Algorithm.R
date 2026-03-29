library(e1071)
library(caTools)
library(class)
data("ChickWeight")
chick_data <- ChickWeight[, c("weight", "Time", "Diet")]
set.seed(123)
split <- sample.split(chick_data$Diet, SplitRatio = 0.7)
train_set <- subset(chick_data, split == TRUE)
test_set <- subset(chick_data, split == FALSE)
train_scale <- scale(train_set[, 1:2])
test_scale <- scale(test_set[, 1:2])
k_values <- c(1, 3, 5, 7, 15)
for (val in k_values) {
  knn_pred <- knn(train = train_scale, test = test_scale, 
                  cl = train_set$Diet, k = val)
  accuracy <- mean(knn_pred == test_set$Diet)
  print(paste("Accuracy for K =", val, "is", round(accuracy, 4)))
}
optimal_k <- 5
final_knn <- knn(train = train_scale, test = test_scale, 
                 cl = train_set$Diet, k = optimal_k)
cm <- table(Actual = test_set$Diet, Predicted = final_knn)
print("Confusion Matrix:")
print(cm)
#Insights
#Highest accuracy for optimal k value is K=5 and K=15
#Accuracy of 0.3873 (38.73%) is low due to limited features of weight and time only
#Best prediction for diet 1


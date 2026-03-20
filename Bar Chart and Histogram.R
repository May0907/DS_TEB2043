library(readxl)
getwd()
setwd('C:/Users/win11/OneDrive/Documents/DS_TEB2043/2026_03_19')
titanic_data <- read.csv("titanic.csv")
survival_counts <- table(titanic_data$Survived)
barplot(survival_counts, 
        main = "Titanic Survival Counts", 
        names.arg = c("Deceased", "Survived"), 
        col = c("red", "green"), 
        xlab = "Status", 
        ylab = "Number of Passengers")
hist(titanic_data$Age, 
     main = "Distribution of Passengers Age", 
     xlab = "Age", 
     col = "skyblue", 
     border = "white",
     breaks = 20)
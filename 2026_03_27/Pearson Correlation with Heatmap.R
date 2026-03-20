data("ToothGrowth")
corr_mat_tooth <- cor(ToothGrowth[, c("len", "dose")])
print(corr_mat_tooth)
library(ggcorrplot)
ggcorrplot(corr_mat_tooth, 
           lab = TRUE, 
           title = "Correlation Heatmap: ToothGrowth",
           colors = c("#6D9ECB", "white", "#E46726"))
#Insight
#Correlation coefficient between 'len' (tooth length) and 'dose' (vitamin C dosage) is approximately 0.80
#Strong positive linear relationship
#If dosage of Vitamin C increase, then tooth length increase
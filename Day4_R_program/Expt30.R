library(dplyr)
library(caTools)
library(nnet)
library(caret)
data("iris")
set.seed(123)
split <- sample.split(iris$Species, SplitRatio = 0.8)
train_data <- iris[split, ]
test_data <- iris[!split, ]
log_model <- multinom(Species ~ Petal.Width + Petal.Length, data = train_data)
test_data$predicted_prob <- predict(log_model, newdata = test_data, type = "probs")
conf_matrix <- confusionMatrix(table(test_data$Species, test_data$predicted_prob), dnn = c("Actual", "Predicted"))
print(conf_matrix)

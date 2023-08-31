data <- data.frame(
  Time = c(5, 8, 10, 12, 15, 5, 8, 10, 12, 15),
  Diet = c(1, 1, 1, 1, 1, 2, 2, 2, 2, 2),
  Weight = c(50, 55, 69, 77, 84, 65, 70, 45, 66, 91)
)
model <- lm(Weight ~ Time + Diet, data = data)
summary(model)
new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)
cat("Predicted weight:", predicted_weight, "\n")
actual_weight <- 65.05
prediction_error <- abs(actual_weight - predicted_weight)
cat("Prediction error:", prediction_error, "\n")
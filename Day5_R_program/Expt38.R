data("Titanic")
install.packages("ggplot2")
library(ggplot2)
bar_chart_class_survived <- ggplot(Titanic, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival by Passenger Class",
       x = "Passenger Class",
       y = "Count",
       fill = "Survived") +
  theme_minimal()
bar_chart_class_gender_survived <- ggplot(Titanic, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  facet_wrap(~Sex) +
  labs(title = "Survival by Passenger Class and Gender",
       x = "Passenger Class",
       y = "Count",
       fill = "Survived") +
  theme_minimal()
histogram_age <- ggplot(Titanic, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Passenger Age",
       x = "Age",
       y = "Count") +
  theme_minimal()
print(bar_chart_class_survived)
print(bar_chart_class_gender_survived)
print(histogram_age)
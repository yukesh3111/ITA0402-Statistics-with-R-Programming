library(ggplot2)
data(ChickWeight)
boxplot <- ggplot(ChickWeight, aes(x = Diet, y = weight, fill = factor(Diet))) +
  geom_boxplot() +
  labs(x = "Diet", y = "Weight") +
  scale_fill_discrete(name = "Diet")
histogram_diet1 <- ggplot(subset(ChickWeight, Diet == 1), aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "skyblue", color = "black") +
  labs(x = "Weight", y = "Frequency")
scatter_plot <- ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) +
  geom_point() +
  labs(x = "Time", y = "Weight") +
  scale_color_discrete(name = "Diet")
print(boxplot)
print(histogram_diet1)
print(scatter_plot)

library(tidyr)
library(stats)
library(ggplot2)
data(airquality)
missing_percent <- colMeans(is.na(airquality)) * 100
for (col in names(airquality)) {
  if (missing_percent[col] < 10) {
    mean_value <- mean(airquality[[col]], na.rm = TRUE)
    airquality[[col]][is.na(airquality[[col]])] <- mean_value
  } else {
    airquality[[col]][is.na(airquality[[col]])] <- NA
  }
}
lm_model <- lm(Ozone ~ Solar.R, data = airquality)
scatter_plot <- ggplot(airquality, aes(x = Solar.R, y = Ozone)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(x = "Solar Radiation", y = "Ozone")
print(scatter_plot)

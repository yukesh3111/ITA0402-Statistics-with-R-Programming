library(reshape2)
library(dplyr)
data(ChickWeight)
ordered_data <- ChickWeight %>%
  arrange(diet, weight) %>%
  group_by(diet) %>%
  slice_tail(n = 6)
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
casted_mean <- dcast(melted_data, Diet ~ variable, mean)
get_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
casted_mode <- dcast(melted_data, Diet ~ variable, get_mode)

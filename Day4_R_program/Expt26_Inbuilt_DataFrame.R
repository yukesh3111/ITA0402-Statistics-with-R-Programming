data(airquality)
if (is.data.frame(airquality)) {
  cat("airquality is a data frame.\n")
} else {
  cat("airquality is not a data frame.\n")
}
ordered_airquality <- airquality[order(airquality$Temp, airquality$Month), ]
modified_airquality <- ordered_airquality[, !(colnames(ordered_airquality) %in% c('Solar.R', 'Wind'))]
print(modified_airquality)
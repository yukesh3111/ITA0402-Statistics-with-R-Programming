data("women")
height_factor <- cut(women$height, breaks = c(50, 55, 60, 65, 70, 75), labels = c("50-55", "56-60", "61-65", "66-70", "71-75"))
print(height_factor)

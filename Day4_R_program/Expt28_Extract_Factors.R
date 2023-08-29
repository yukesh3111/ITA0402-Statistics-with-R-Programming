random_letters <- sample(LETTERS, 20, replace = TRUE)
factor_letters <- factor(random_letters)
five_levels <- levels(factor_letters)[1:5]
print(five_levels)

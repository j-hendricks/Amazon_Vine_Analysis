# performed statistical test on the proportions
# p-value is 0.765 -> failed to reject the null
results <- prop.test(c(13, 14475) , c(22, 26987))
print(results)
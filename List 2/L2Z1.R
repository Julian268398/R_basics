# http://www.cookbook-r.com/Numbers/Generating_random_numbers/
# https://stackoverflow.com/questions/58677913/functions-in-r-how-to-return-mean-median-standard-deviation-within-same-funct
# https://www.r-bloggers.com/2022/07/how-to-calculate-percentiles-in-r/#google_vignette
# https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/t.test

# 1
x <- rnorm(1000, mean=175, sd=12)

#2
print(mean(x))
print(median(x))
print(sd(x))

#3
#hist(x)

#4
q <- quantile(x)
print(q)

#5
q1 <- q[2]
q3 <- q[4]
iqr <- q3 - q1
for (i in x) {
  if (i < (q1 - 1.5 * iqr) || i > (q3 + 1.5 * iqr)) {
    print(i)
  }
}

#6
H0 <- "The mean height of the population is 170 cm"
H1 <- "The mean height of the population is not 170 cm"
t_test <- t.test(x, mu = 170)
if (t_test$p.value < 0.05) {
  print("Reject H0")
  print(H1)
} else {
  print(H0)
}

#7
count <- 0
for (i in x) {
  if (i > 190) {
    count <- count + 1
  }
}
all <- length(x)
propability <- (count / all) * 100
print(paste("The probability of a person being taller than 190 cm is", propability, "%"))
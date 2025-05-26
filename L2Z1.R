# http://www.cookbook-r.com/Numbers/Generating_random_numbers/
# https://stackoverflow.com/questions/58677913/functions-in-r-how-to-return-mean-median-standard-deviation-within-same-funct
# https://www.r-bloggers.com/2022/07/how-to-calculate-percentiles-in-r/#google_vignette

# 1
x <- rnorm(1000, mean=175, sd=12)

#2
print(mean(x))
print(median(x))
print(sd(x))

#3 
hist(x)

#4
quantile(x)

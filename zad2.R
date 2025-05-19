# https://www.rdocumentation.org/packages/Biobase/versions/2.32.0/topics/MultiSet

wspolne <- function(x, y) {
  
  myset <- list()
  
  for (i in x) {
    for (ii in y) {
      if (ii == i) {
        myset[length(myset) + 1] <- ii
      }
    }
  }
  a = unique(myset)
  print(a)
}

a <- c(2, 2, 2, 3)
b <- c(2, 2, 3, 3)
wspolne(a, b)

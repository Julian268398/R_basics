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
  print(myset)
}

a <- c(2, 4, 6 , 8)
b <- c(1, 2, 3, 4, 5)
wspolne(a, b)

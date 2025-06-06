# @author: Julian Siwirski
# https://www.rdocumentation.org/packages/Biobase/versions/2.32.0/topics/MultiSet

wspolne <- function(x, y) {
  #' Function to find common elements in two vectors
  #' @param x A vector of elements 
  #' @param y A second vector of elements
  #' @return A list of unique common elements between the two vectors.

  if (length(x) == 0 || length(y) == 0) {
    return("There are no elements in the vector")
  }
  
  myset <- list()
  
  for (i in x) {
    for (ii in y) {
      if (ii == i) {
        myset[length(myset) + 1] <- ii
      }
    }
  }
  a <- unique(myset)
  if (length(a) == 0) {
    return("No common elements")
  }
  return(a)
}
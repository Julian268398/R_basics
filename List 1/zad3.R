# @author: Julian Siwirski
# https://stackoverflow.com/questions/8371887/making-all-possible-combinations-of-a-list#:~:text=How%20to%20get%20all%20possible%20combinations%20of%20a,itertools.combinations%28lst%2C%20i%29%5D%20combs.append%28els%29%20Now%20combs%20holds%20this%20value%3A
# Powyższy link stanowił jedynie inspirację, ponieważ jest w innym języku

library(itertools)

podzbiory <- function(x) {
  #' @param x A vector of elements (numeric, character, etc.)
  #'
  #' @return A list of all possible non-empty subsets of the input vector.

  if (!is.vector(x)) {
    return("Argument must be a vector.")
  }

  combs <- list()

  for (i in seq_len(length(x))) {
    eles <- combn(x, i, simplify = FALSE)
    combs <- append(combs, eles)
  }
  return(combs)
}
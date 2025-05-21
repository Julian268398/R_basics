library(testthat)

test_that("tests of the function wspolne", {
  # Test with valid inputs
  a <- c(2, 2, 2, 3)
  b <- c(2, 2, 3, 3)
  
  expect_equal(wspolne(a, b), list(2, 3))

  a <- c(2, 4, 6, 8)
  b <- c(1, 2, 3, 4, 5, 6)
  
  expect_equal(wspolne(a, b), list(2, 4, 6))
  
  # Test with empty vectors
  a <- c()
  b <- c()
  
  expect_equal(wspolne(a, b), "There are no elements in the vector")
  
  a <- c(1, 2, 3)
  b <- c()
  
  expect_equal(wspolne(a, b), "There are no elements in the vector")
  
  # Test with no common elements

  a <- c(1, 2, 3)
  b <- c(4, 5, 6)
  
  expect_equal(wspolne(a, b), "No common elements")
})
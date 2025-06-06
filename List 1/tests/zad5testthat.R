library(testthat)

test_that("test of the function collatz", {
  # Test with valid inputs
  expect_equal(collatz(1), list(1))
  expect_equal(collatz(2), list(1))
  expect_equal(collatz(3), list(10, 5, 16, 8, 4, 2, 1))
  expect_equal(collatz(4), list(2, 1))
  expect_equal(collatz(5), list(16, 8, 4, 2, 1))
  
  # Test with negative input
  expect_equal(collatz(-1), "Argument must be an integer bigger than zero.")
  
  # Test with zero
  expect_equal(collatz(0), "Argument must be an integer bigger than zero.")
  
  # Test with non-integer input
  expect_equal(collatz(2.5), "Argument must be an integer bigger than zero.")
})
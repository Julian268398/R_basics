library(testthat)

test_that("Fibonacci sequence tests", {
  # Test with valid inputs
  expect_equal(fibonaci(1), 0)
  expect_equal(fibonaci(3), 1)
  expect_equal(fibonaci(2), 1)
  expect_equal(fibonaci(8), 13)
  expect_equal(fibonaci(10), 34)

  expect_equal(fibonaci_loops(1), 0)
  expect_equal(fibonaci_loops(3), 1)
  expect_equal(fibonaci_loops(2), 1)
  expect_equal(fibonaci_loops(8), 13)
  expect_equal(fibonaci_loops(10), 34)
  
  # Test with negative input
  expect_equal(fibonaci(-1), "Argument must be an integer bigger than zero.")
  expect_equal(fibonaci_loops(-1), "Argument must be an integer bigger than zero.")

  
  # Test with non-integer input
  expect_equal(fibonaci(2.5), "Argument must be an integer bigger than zero.")
  expect_equal(fibonaci_loops(2.5), "Argument must be an integer bigger than zero.")
})
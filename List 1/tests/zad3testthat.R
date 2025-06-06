library(testthat)

test_that("tests of the function podzbiory", {
  expect_setequal(
    podzbiory(c(1, 2)), list(c(1), c(2), c(1, 2))
  )

  expect_setequal(
    podzbiory(c("a", "b")), list(c("a"), c("b"), c("a", "b"))
  )

  expect_equal(
    podzbiory(c()), "Argument must be a vector."
  )

  expect_equal(
    podzbiory(c(1)), list(c(1))
  )
})

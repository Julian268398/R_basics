library(testthat)
source("C:\\Users\\julia\\VSProjects\\R_basics\\zad6.R")

test_that("test for functions in zad6", {
    # Test for komplement function
    expect_equal(komplement(c("A", "T", "G", "C")), list("G", "C", "A", "T"))
    expect_equal(komplement(c("C", "C", "G", "G")), list("C", "C", "G", "G"))
    expect_equal(komplement(c("A")), list("T"))
    # Test for transkrybuj function
    expect_equal(transkrybuj(c("A", "T", "G", "C")), list("G", "C", "A", "U"))
    expect_equal(transkrybuj(c("T", "T", "A", "A")), list("U", "U", "A", "A"))
    expect_equal(transkrybuj(c("G")), list("C"))

    # Test for incorect inputs
    expect_equal(komplement(character(0)), "Argument must be a vector.")
    expect_equal(komplement(c()), "Argument must be a vector.")
    expect_equal(komplement(c("A", "B")), "Incorrect characters in the string.")

    expect_equal(transkrybuj(character(0)), "Argument must be a vector.")
    expect_equal(transkrybuj(c()), "Argument must be a vector.")
    expect_equal(transkrybuj(c("G", "X")), "Incorrect characters in the string.")
})
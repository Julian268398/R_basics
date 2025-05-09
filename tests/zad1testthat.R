library(testthat)

test_that("Heron equation tests", {
    # Test with valid triangle sides
    expect_equal(heron(3, 4, 5), 6)
    expect_equal(heron(5, 5, 5), 10.83)
    
    # Test with invalid triangle sides
    expect_equal(heron(1, 2, 3), "Invalid triangle sides")
    expect_equal(heron(-1, 2, 3), "Invalid triangle sides")
    expect_equal(heron(0, 2, 3), "Invalid triangle sides")
})

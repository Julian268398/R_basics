# @author: Julian Siwirski

# Rekurencja
fibonaci <- function(n) {
    #' Function to calculate the nth Fibonacci number using recursion
    #' @param n A positive integer representing the position in the Fibonacci sequence
    #' @return The nth Fibonacci number.

    if (n <= 0 || n != as.integer(n)) {
        return("Argument must be an integer bigger than zero.")
    }
    if (n == 1) {
        return(0)
    }
    if (n == 2) {
        return(1)
    }
    else {
        fib <- fibonaci(n - 1) + fibonaci(n - 2)
        return(fib)
    }
}

# Pętle
# https://www.geeksforgeeks.org/fibonacci-series-in-python-using-for-loop/
# powyższy link stanowił naprowadzenie na rozwiązanie używając pętli
fibonaci_loops <- function(n) {
    #' Function to calculate the nth Fibonacci number using recursion
    #' @param n A positive integer representing the position in the Fibonacci sequence
    #' @return The nth Fibonacci number.

    if (n <= 0 || n!= as.integer(n)) {
        return("Argument must be an integer bigger than zero.")
    }
    if (n == 1) {
        return(0)
    }
    if (n == 2) {
        return(1)
    }
    else {
        a <- 0
        b <- 1
        for (i in 3:n) {
        fib <- a + b
        a <- b
        b <- fib
        }
        return(fib)
    }
}

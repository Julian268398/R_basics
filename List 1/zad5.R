# @author: Julian Siwirski

collatz <- function(c) {
    #' Function to compute the Collatz sequence starting from a given integer
    #'
    #' @param c A positive integer (greater than 0) to start the Collatz sequence
    #'
    #' @return A list containing the steps of the Collatz sequence

    if (c <= 0 || c != as.integer(c)) {
        return("Argument must be an integer bigger than zero.")
    }
    results <- list()
    if (c == 1) {
        results <- append(results, c)
        return(results)
    }
    else {
        while (c != 1) {
            if (c %% 2 == 0) {
                c <- c / 2
                results <- append(results, c)
            }
            else {
                c <- 3 * c + 1
                results <- append(results, c)
            }
        }
        return(results)
    }
}
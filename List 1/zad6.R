# @author: Julian Siwirski
# https://stackoverflow.com/questions/7818970/is-there-a-dictionary-functionality-in-r
library(hash)

# a
komplement <- function(code) {
#' Function to calculate the reverse complement of a DNA sequence
#' @param code A vector of characters representing a DNA strand (e.g., c("A", "T", "G", "C"))
#' @return A list representing the reverse complement of the DNA strand.    

    h <- hash()
    h[["A"]] <- "T"
    h[["T"]] <- "A"
    h[["C"]] <- "G"
    h[["G"]] <- "C"

    lgth <- length(code)
    if (lgth == 0) {
        return("Argument must be a vector.")
    }

    ansr <- list()
    while (lgth > 0) {
        x <- code[lgth]
        if (x %in% keys(h)) {
            ansr <- append(ansr, h[[x]])
        } else {
            return("Incorrect characters in the string.")
        }
        lgth <- lgth - 1
    }
    return(ansr)
}

# b
transkrybuj <- function(code) {
    #' Function to transcribe a DNA sequence into its complementary RNA strand (reversed)
    #' @param code A vector of characters representing a DNA strand (e.g., c("A", "T", "G", "C"))
    #' @return A list representing the reverse RNA transcription of the input DNA sequence.    

    h <- hash()
    h[["A"]] <- "U"
    h[["T"]] <- "A"
    h[["C"]] <- "G"
    h[["G"]] <- "C"

    lgth <- length(code)
    if (lgth == 0) {
        return("Argument must be a vector.")
    }

    ansr <- list()
    while (lgth > 0) {
        x <- code[lgth]
        if (x %in% keys(h)) {
            ansr <- append(ansr, h[[x]])
        } else {
            return("Incorrect characters in the string.")
        }
        lgth <- lgth - 1
    }
    return(ansr)
}
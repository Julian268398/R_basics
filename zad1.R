# @author: Julian Siwirski
# syntax source: https://www.w3schools.com/r/r_functions.asp

heron <- function(a, b, c){
    #' Function to calculate the area of a triangle using Heron's formula
    #' @param a Length of side a 
    #' @param b Length of side b
    #' @param c Length of side c
    #' @return Area of the triangle or an error message if the sides do not form a valid triangle
    if ((a + b <= c || a + c <= b || b + c <= a) || (a <= 0 || b <= 0 || c <= 0)) {
    return("Invalid triangle sides")
    }
    p <- (a + b + c) / 2
    S <- sqrt(p * (p - a) * (p - b) * (p - c))
    S <- round(S, 2)
    return(S)
}


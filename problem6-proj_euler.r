sum_of_squares <- function(vector){
    sum <- 0
    for(i in vector){
        sum <- sum + i**2
    }
    return (sum)
}

square_of_sums <- function(vector){
    sum <- 0
    for(i in vector){
        sum <- sum + i
    }

    return (sum**2)
}

# Conferindo valores do enunciado
sum_of_squares(1:10)
square_of_sums(1:10)

# Calculando o que foi pedido
difference <- abs(sum_of_squares(1:100) - square_of_sums(1:100))
difference

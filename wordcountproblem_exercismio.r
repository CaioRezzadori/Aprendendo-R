word_count <- function(subtitle){
    j <- 1
    word_list <- c()
    for(i in 1:nchar(subtitle) - 1){
        if((substr(subtitle, i, i) %in% c(":", "!", "?", " ", "\"", ",", " '", "\n", "."))){
            word_list <- c(word_list, c(substr(subtitle, j, i - 1)))
            j <- i + 1
        }        
    }
    word_list <- c(word_list, c(substr(subtitle, j, i))) # Adicionando a lista a ultima palavra
    word_list <- word_list[!(word_list %in% c(""))] # Removendo strings nulas
    word_list <- tolower(word_list)
    return (word_list)
}

word_count("\"That's the password: 'PASSWORD 123'!\", cried the Special Agent.\nSo I fled.")

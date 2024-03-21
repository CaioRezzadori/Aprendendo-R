word_count <- function(subtitle){
    j <- 1 # Variavel auxiliar para separar palavras
    word_list <- c() # Lista das palavras
    for(i in 1:nchar(subtitle) - 1){
        punctuation_logic <- (substr(subtitle, i, i) %in%
        c(":", "!", "?", " ", "\"", ",", "\n", ".", "\t"))

        # Separacao inicial das palavras
        if(punctuation_logic){
            word_list <- c(word_list, c(substr(subtitle, j, i - 1)))
            j <- i + 1
        }        
    }
    word_list <- c(word_list, c(substr(subtitle, j, i))) # Adicionando ultima palavra na lista
    word_list <- word_list[!(word_list %in% c(""))] # Removendo strings nulas
    word_list <- tolower(word_list) # Deixando todas as palavras em minusculo

    # Removendo apostrofos que nao atuam como contracoes
    n <- length(word_list)
    for(i in 1:n){
        m <- nchar(word_list[i])
        if(substr(word_list[i], 1, 1) == "\'"){
            word_list[i] <- substr(word_list[i], 2, m)
        }
        else if(substr(word_list[i], m, m) == "\'"){
            word_list[i] <- substr(word_list[i], 1, m - 1)
        }
    }
    return (table(word_list))
}


word_count("\"That's the password: 'PASSWORD 123'!\", cried the Special Agent.\nSo I fled.")

word_count("You come back, you hear me? DO YOU HEAR ME?")

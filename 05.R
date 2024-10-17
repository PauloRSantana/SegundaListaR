# Função para nomear as linhas e colunas de uma matriz 
nomear_matriz_sem_prontas <- function(matriz, nomes_linhas, nomes_colunas) {

  if (length(nomes_linhas) != nrow(matriz)) {
    stop("O número de nomes de linhas não corresponde ao número de linhas da matriz.")
  }
  
  if (length(nomes_colunas) != ncol(matriz)) {
    stop("O número de nomes de colunas não corresponde ao número de colunas da matriz.")
  }
  

  matriz_nomeada <- list()
  matriz_nomeada$matriz <- matriz
  matriz_nomeada$nomes_linhas <- nomes_linhas
  matriz_nomeada$nomes_colunas <- nomes_colunas
  
  return(matriz_nomeada)  
}

# Exemplo
matriz <- matrix(c(3, 8, 1, 7, 2, 6, 5, 4), nrow = 2, ncol = 4)
nomes_linhas <- c("Linha1", "Linha2")
nomes_colunas <- c("Coluna1", "Coluna2", "Coluna3", "Coluna4")

resultado <- nomear_matriz_sem_prontas(matriz, nomes_linhas, nomes_colunas)


print("Matriz nomeada:")
for (i in 1:length(resultado$nomes_linhas)) {
  cat(resultado$nomes_linhas[i], ":", resultado$matriz[i, ], "\n")
}

cat("Colunas:", paste(resultado$nomes_colunas, collapse = " "), "\n")

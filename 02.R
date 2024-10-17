# Função para encontrar o maior valor em uma matriz
maior_valor_matriz <- function(matriz) {
  maior <- matriz[1,1]  
  for (i in 1:nrow(matriz)) {  
    for (j in 1:ncol(matriz)) {  
      if (matriz[i,j] > maior) {  
        maior <- matriz[i,j] 
      }
    }
  }
  return(maior)
}

# Exemplo
matriz <- matrix(c(3, 8, 1, 7, 2, 6, 5, 4), nrow = 2, ncol = 4)
resultado <- maior_valor_matriz(matriz)
print(paste("O maior valor na matriz é:", resultado))

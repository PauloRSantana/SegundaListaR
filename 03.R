# Função para calcular a média de uma matriz
media_matriz <- function(matriz) {
  soma <- 0  
  contador <- 0  
  

  for (i in 1:nrow(matriz)) {
    for (j in 1:ncol(matriz)) {
      soma <- soma + matriz[i,j] 
      contador <- contador + 1  
    }
  }
  
  media <- soma / contador 
  return(media) 
}

# Exemplo de uso
matriz <- matrix(c(3, 8, 1, 7, 2, 6, 5, 4), nrow = 2, ncol = 4)
resultado <- media_matriz(matriz)
print(paste("A média dos valores na matriz é:", resultado))

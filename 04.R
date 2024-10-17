# Função para determinar o tamanho de um vetor
tamanho_vetor <- function(vetor) {
  contador <- 0  
  
  # Percorrendo o vetor
  for (elemento in vetor) {
    contador <- contador + 1  
  }
  
  return(contador)
}

# Exemplo de uso
vetor <- c(3, 8, 1, 7, 2)
resultado <- tamanho_vetor(vetor)
print(paste("O tamanho do vetor é:", resultado))

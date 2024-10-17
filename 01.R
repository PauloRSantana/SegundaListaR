# Função para encontrar o menor valor em um vetor
menor_valor <- function(vetor) {
  menor <- vetor[1]  
  for (i in 2:length(vetor)) {  
    if (vetor[i] < menor) {  
      menor <- vetor[i]  
    }
  }
  return(menor)  
}

# Exemplo
vetor <- c(5, 2, 8, 3, 1)
resultado <- menor_valor(vetor)
print(paste("O menor valor no vetor é:", resultado))

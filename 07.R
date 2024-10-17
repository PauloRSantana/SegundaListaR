# Função para somar dois vetores
soma_vetores <- function(vetor1, vetor2) {
  # Verificar se os vetores têm o mesmo tamanho
  if (length(vetor1) != length(vetor2)) {
    stop("Os vetores devem ter o mesmo tamanho para realizar a soma.")
  }
  
  # Criar um vetor para armazenar a soma
  vetor_soma <- numeric(length(vetor1))  # Vetor numérico de zeros com o tamanho dos vetores
  
  # Realizar a soma elemento a elemento
  for (i in 1:length(vetor1)) {
    vetor_soma[i] <- vetor1[i] + vetor2[i]
  }
  
  return(vetor_soma)  # Retornar o vetor resultante da soma
}

# Exemplo de uso
vetor1 <- c(3, 8, 1, 7, 2)
vetor2 <- c(2, 5, 3, 4, 6)

resultado <- soma_vetores(vetor1, vetor2)
print("Resultado da soma dos vetores:")
print(resultado)

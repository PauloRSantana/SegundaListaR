# Função para dividir dois vetores
dividir_vetores <- function(vetor1, vetor2) {
  # Verificar se os vetores têm o mesmo tamanho
  if (length(vetor1) != length(vetor2)) {
    stop("Os vetores devem ter o mesmo tamanho para realizar a divisão.")
  }
  
  # Criar um vetor para armazenar o resultado da divisão
  vetor_divisao <- numeric(length(vetor1))  # Vetor numérico de zeros com o tamanho dos vetores
  
  # Realizar a divisão elemento a elemento
  for (i in 1:length(vetor1)) {
    # Verificar se o elemento de vetor2 não é zero para evitar divisão por zero
    if (vetor2[i] == 0) {
      stop(paste("Erro: divisão por zero na posição", i))
    }
    vetor_divisao[i] <- vetor1[i] / vetor2[i]
  }
  
  return(vetor_divisao)  # Retornar o vetor resultante da divisão
}

# Exemplo de uso
vetor1 <- c(6, 8, 10, 14, 16)
vetor2 <- c(2, 4, 5, 7, 8)

resultado <- dividir_vetores(vetor1, vetor2)
print("Resultado da divisão dos vetores:")
print(resultado)

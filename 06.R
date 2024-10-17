# Função para nomear as posições de um vetor
nomear_vetor <- function(vetor, nomes_posicoes) {
  if (length(nomes_posicoes) != length(vetor)) {
    stop("O número de nomes não corresponde ao número de elementos no vetor.")
  }
  
  vetor_nomeado <- list()
  vetor_nomeado$vetor <- vetor
  vetor_nomeado$nomes_posicoes <- nomes_posicoes
  
  return(vetor_nomeado)  
}

# Exemplo
vetor <- c(3, 8, 1, 7, 2)
nomes_posicoes <- c("Posição1", "Posição2", "Posição3", "Posição4", "Posição5")

resultado <- nomear_vetor(vetor, nomes_posicoes)

print("Vetor nomeado:")
for (i in 1:length(resultado$vetor)) {
  cat(resultado$nomes_posicoes[i], ":", resultado$vetor[i], "\n")
}

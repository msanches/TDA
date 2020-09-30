algoritmo Empresa
inicio 
	real bolsa
	inteiro tempo
	escreva ("Qual a quantidade Minima Da sua bolsa?: ")
	leia (bolsa)
	se(bolsa >=750,00 e bolsa =< 950){
			 escreva("Qual o tempo de estágio?")
			 leia(tempo)
			 se(tempo >= 2){
				escreva("Participará do treinamento")
			 }
		} senao {
			escreva("Não participará") 
		}
fim

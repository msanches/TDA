algoritmo exemploDoWhile
inicio
	inteiro num, soma
	soma=0
	faça  { 
		escreva("Digite um número")
		leia(num)
		se (num % 2!= 0){
			soma=soma+num
		}
	} enquanto (num!=0) 
	escreva("A soma dos números ímpares é: " + soma)
fim


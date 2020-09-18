algoritmo exemploWhile2
inicio
	real media, soma
   	inteiro num, qtde
   	literal resp
	soma=0
	qtde = 0
	resp = 's'
	enquanto (resp=='s' ou resp == 'S') {
		escreva("Digite um número")
		leia(num)
		soma=soma+num
		qtde=qtde+1
		escreva("Deseja continuar?")
		leia(resp)
	}
	media=soma/qtde
	escreva("A média dos números digitados é: " + media)
fim

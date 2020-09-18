algoritmo exemploWhile
inicio
	real nota1, nota2, media
    inteiro cont

	cont = 1
	enquanto (cont<=10) {
		escreva("Digite a primeira nota")
		leia(nota1)
		escreva("Digite a segunda nota")
		leia(nota2)
		media = (nota1+nota2)/2
		escreva("A média é" + media)
		cont=cont+1
	}
fim


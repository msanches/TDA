algoritmo aula07Ex02
	inicio
		real num[8], soma, media
		inteiro i, qte
		qte = 0
		soma = 0
		para(i = 0; i < 8; i++){
		  escreva("Digite um número: ")
		  leia(num[i])
		  soma = soma + num[i]
		}
		media = soma / 8
		para(i = 0; i < 8; i++) {
		  se(num[i] > media)
			qte++
		}
		escreva("A média dos valores digitados é: " + media)
		escreva("A qte de nº maiores que a média é: " + qte)
	fim 
	
	
	
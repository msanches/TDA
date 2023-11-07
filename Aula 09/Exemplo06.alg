algoritmo soma
inicio
	real soma, media, a[8]
	inteiro qtde=0
	soma = 0
	para (i=0; i<8; i++ ) {
  	        escreva ("Digite um número")
  	        leia (a[i])
	        soma += a[i]
	}
	media  = soma / 8
	escreva ("A Média é: " + media)
	para (i=0; i<8; i++ ) {
		se (a[i] > media) {
			qtde++
		}		
  	}
	escreva ("A quantidade de números acima da média é: " + qtde)
fim


algoritmo Empresa
inicio
	real sal[5], soma=0, media, maior
	inteiro i, quant = 0
	//Preenchimento do vetor
	para (i=0; i<5 ; i++) {
     	escreva ("Digite o salário do trabalhador "  +   (i+1)  +   ": ")
     	leia (sal[i])
    }
	//Somando valores armazenados no vetor
	para (i=0; i<5 ; i++) {
    		soma += sal[i]
     }

	//Cálculo da média
	media = soma / 5
	escreva ("A média dos salários é R$" + media)
	
	//Encontrando o maior valor
	maior=sal[0]
	para (i=1; i<5 ; i++) {
      	se  (sal[i] > maior) {
         	 	maior = sal[i]
      	}
  	}
  	escreva ("O maior salário é R$" + maior)

 	//Quantidade de salários menores que a média
 	para (i=0; i<5 ; i++) {
      	se  (sal[i] < media) {
          		quant++
      	}
  	}
  	escreva ("Quant. de salários < R$850: " + quant)
fim



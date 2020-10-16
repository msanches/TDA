algoritmo aula08Ex03
	inicio
		real num[3][2], media, soma=0
		inteiro i, j, qtde=0
		 para(i=0; i<3; i++){
			para(j=0; j<2; j++){
				escreva("Digite um valor")
				leia(num[i][j])
				soma+=num[i][j]
			}
		  }
		media = soma/6
		para(i=0; i<3; i++){
			para(j=0; j<2; j++) {
				se(num[i][j] > media)
				qtde+=1
			}
		}
		escreva("Qtde acima da media:" + qtde)
		para(i=0; i<3; i++) {
			soma = 0
			para(j=0; j<2; j++) {
				soma+=num[i][j]
			}
			escreva("Soma "+ (i+1) + "=" + soma)
		}
fim



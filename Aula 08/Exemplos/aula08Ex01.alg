algoritmo aula08Ex01
	inicio
		literal matriz[2][3]
		literal texto=""
		inteiro i, j
		para(i=0; i<2; i++){
			 para(j=0; j<3; j++){
				escreva("Valor [" + i + "][" + j + "]")
				leia(matriz[i][j])
			}
		}
		para(i=0; i<2; i++) {
			para(j=0; j<3; j++){
				texto +=matriz[i][j] + " "
			 }
			 texto+= "\n"
		}
		escreva(texto)
	fim


algoritmo aula08Ex04
	inicio
		inteiro matriz[5][4]
		inteiro busca, i, j, i1, j1
		logico achou
		para(i=0; i<5; i++){
			para(j=0; j<4; j++){
				escreva("Posição [" + i + "][" + j + "]")
				leia(matriz[i][j])
			}
		}
		achou = falso
		i1=0
		j1=0
		escreva("Qual o valor a buscar?")
		leia(busca)
		para(i=0; i<5; i++) {
			para(j=0; j<4; j++) {
				se(matriz[i][j] == busca) {
					achou=verdadeiro
					i1 = i
					j1 = j
				}		
			}
		}
		se(achou == falso) {
			escreva("Elemento não encontrado")
		}
		senao{
			escreva("Encontrado na posição " + i1 + "," + j1)
	  }
	fim

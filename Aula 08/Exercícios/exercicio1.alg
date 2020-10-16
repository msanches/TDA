algoritmo vendaSemanais
	inicio
		real vendas[4][6]
		inteiro i, j
		real somaSemana, somaMes = 0, somaVendedor
		
		para(i = 0; i < 4; i++){
			para(j = 0; j < 6, j++){
				escreva("Entre com a venda da semana " + (j+1) + " do vendedor " + (i+1))
				leia(vendas[i][j])
			}
		}

		para(i = 0; i < 4; i++){
			somaSemana = 0
			para(j = 0; j < 6, j++){
				somaSemana += vendas[i][j]
				somaMes += vendas[i][j]
			}
			escreva("O total vendido na semana " + i + " foi de " + somaSemana)
		}
		escreva("O total vendido no mês foi de " + somaMes)
		
		para(j = 0; j < 6; j++){
			somaVendedor = 0
			para(i = 0; i < 4; i++){
				somaVendedor += vendas[i][j]
			}
			escreva("O vendedor " + j + "vendeu um total de " + somaVendedor)
		}
	fim
	
	
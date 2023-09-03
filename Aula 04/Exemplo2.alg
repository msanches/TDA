algoritmo parcela
início
	real valorParcelado, valorCompra, valorFinal
	inteiro qtdeParcelas, juros
	escreva ("Entre com o valor da compra“)
	leia (valorCompra)
	escreva ("Entre com a qtde de parcelas“)
	leia (qtdeParcelas)

	escolha (qtdeParcelas) {
		caso 2: juros = 3
			pare
		caso 4: juros = 7
			pare
		caso 6: juros = 9
			pare		  
		caso 8: juros = 12
			pare                
		padrão: juros = -1
	}
	
	se(juros == -1) {
		escreva ("Número de Parcelas incorreto")
					}
		senão{
			valorFinal = valorCompra + valorCompra * juros / 100
			valorParcelado = valorFinal/qtdeParcelas
			Escreva ("O valor de cada parcela é " + valorParcelado)
		}
fim

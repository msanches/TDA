/*8- Criar um algoritmo que solicite ao usuário o valor total da compra e a 
quantidade de parcelas a financiar e o sistema deve imprimir o 
valor de cada parcela de acordo com os juros da tabela abaixo:
2 - 3%
4 - 7%
6 - 9%
8 - 12% */

algoritmo compraParcelada
	inicio
		real valorTotal, valorCompra, valorFinal
		inteiro parcelas
		escreva ("Digite o valor total da compra")
		leia (valorCompra)
		escreva ("Digite a quantidade de parcelas")
		leia (parcelas)
		
		escolha (parcelas){
			caso 2:
				juros = 3
				pare:
			caso 4:
				juros = 7
				pare:
			caso 6:
				juros = 9
				pare:
			caso 8:
				juros = 12
				pare:
			padrão:
				juros = -1
		}
		
		se (juros == -1){
			escreva ("O número de parcelas não é válido")
			} 
			senão {
				valorFinal = valorCompra + (valorCompra * juros / 100)
				valorParcelado = valorFinal/qtdeParcelas
				escreva ("O valor de cada parcela é " + valorParcelado)
			}
	fim
	
	

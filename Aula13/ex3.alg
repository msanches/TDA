algoritmo produto
	inicio
		//variaveis
		literal produto
		inteiro quantidade
		real preco, total, desconto
		
		//entrada de dados
		escreva ("Digite o nome do produto :")
		leia (produto)
		escreva ("Qual a quantidade ?")
		leia (quantidade)
		escreva ("valor Produto = $")
		leia (preco)
		
		// calculo
		total = quantidade * preco 
		// condições para descontos
			se (quantidade > 10){
				desconto = total * 0.05
			}senão se (quantidade >=5){
				desconto = total * 0.03
			}senão {
				desconto = total * 0.02
			}
		// saida de dados
		escreva("O valor total da compra é de R$ " + total)
		escreva ("O seu desconto é R$"+ desconto)
		escreva("O valor a pagar é de: " + (total - desconto))  

		
	fim
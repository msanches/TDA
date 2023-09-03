algoritmo aula3Ex6
	real valor
	inicio
		escreva("Digite o valor da compra")
		leia(valor)
		
		escreva("O valor com desconto será de R$ " + calculaDesconto(valor))
	fim 
	
real calculaDesconto(real valor)
		real desconto
		desconto = valor - valor*(0.09)
		//desconto = valor * 0.91
		retorne(desconto)
	fim 
	
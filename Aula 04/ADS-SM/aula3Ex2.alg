algoritmo aula3Ex2
	real a, b
	inicio
		escreva("Digite o ladoA do retângulo em cm")
		leia(a)
		escreva("Digite o ladoB do retângulo em cm")
		leia(b)
		escreva("A área é: " + calculaArea(a, b) + "cm²")
	fim
	
real calculaArea(real a, real b)
		retorne(a * b)
	fim 
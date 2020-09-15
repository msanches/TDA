algoritmo retangulo
	inicio
		real base, altura
		escreva("Digite a base do retângulo em cm")
		leia (base)
		escreva("Digite a altura do retângulo em cm")
		leia (altura)
		
		escreva("A área desse retângulo é: " +
				area(base, altura) + "cm2")
	fim
	
real area (real base, real altura)
	inicio
		real resultado
		resultado = base * altura
		retorne (resultado)
	fim
	
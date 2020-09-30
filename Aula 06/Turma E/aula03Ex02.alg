algoritmo retangulo
	inicio
		real lado1, lado2
		escreva("Digite o lado1 em metros")
		leia(lado1)
		escreva("Digite o lado2 em metros")
		leia(lado2)
		escreva("A área do retangulo é: " + calculaArea(lado1, lado2) + "m²")
	fim

real calculaArea(real a, real b)
	inicio
		real area
		area = a * b
		retorne area
	fim

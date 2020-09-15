algoritmo AreaTriangulo
	inicio
		real base, altura
		escreva("Entre com a base em cm")
		leia(base)
		escreva("Entre com a altura em cm")
		leia(altura)
		escreva("A área é: " + calculaArea(base, altura))
		escreva("A área 2 é: " + calculaArea(10, 15))
		escreva("A área 3 é: " + calculaArea(5, 3))
	fim
	
real calculaArea(real a, real b)
	inicio
		real area
		area = a * b / 2
		retorne (area)
	fim 
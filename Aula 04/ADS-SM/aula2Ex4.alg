algoritmo aula2Ex4
	real raio, altura, area, volume
	inicio
		escreva("Digite o raio da base do cilindro em cm")
		leia(raio)
		escreva("Digite a altura do cilindro em cm")
		leia(altura)
		
		area = PI*raio*raio
		escreva("A área da base do cilindro é: " + area + "cm²")
		volume = area * altura
		escreva("O volume do cilindro é: " + volume + "cm³")
	fim 
algoritmo calculaMinutos
	inicio
		inteiro horas, minutos
		escreva("Digite a quantidade de horas.")
		leia(horas)
		escreva("Digite a quantidade de minutos.")
		leia(minutos)
		escreva("Passaram-se " + minutosCalc(horas, minutos)
				+ "minutos")
	fim

inteiro minutosCalc(inteiro h, inteiro m)
	inicio
		inteiro resultado
		resultado = h * 60 + m
		retorne (resultado)
	fim

algoritmo caixa
	inicio
		real altura, largura, profundidade
		escreva("entre com a altura em cm.")
		leia(altura)
		escreva("entre com a largura em cm.")
		leia(largura)
		escreva("entre com a profundidade em cm.")
		leia(profundidade)
		escreva("O volume é: " + calculaVolume(altura, largura, profundidade)
                + "m³")
	fim
	
real calculaVolume(real a, real l, real p)
	inicio
		real volume
		volume = a/100 * l/100 * p/100
		retorne (volume)
	fim 
algoritmo carango
	inicio
		real kmin, kmfin, litros, valor, distancia, consumo
		escreva ("Digite o km inicial")
		leia (kmin)
		escreva ("Digite o km final")
		leia (kmfin)
		escreva ("Digite a quantidade de litro")
		leia (litros)
		escreva ("Digite o preço da gasolina")
		leia (valor)
		distancia = distPercorrida(kmin, kmfin)
		escreva("A distância percorrida foi: " +
		        distancia)
		consumo = consumoMedio(distancia, litros)		
		escreva("O consumo foi de: " +
				consumoMedio)
		gasto = valorGasto(valor, consumo)
		escreva("O valor gasto foi de:" +
				gasto)
	fim
	
real distPercorrida(real inicio, real fim)
	inicio
		real resultado
		resultado = fim - inicio
		retorne (resultado)
	fim

real consumoMedio(real dist, real fim)
	inicio
		real resultado 
		resultado = dist / litros
		retorne(resultado)
	fim

real valorGasto(real valor, real consumo)
	inicio
		real resultado
		resultado = valor * consumo
		retorno (resultado)
	fim
	
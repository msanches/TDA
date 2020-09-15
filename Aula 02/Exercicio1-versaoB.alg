algoritmo carango
	inicio
		real kmin, kmfin, litros, valor
		escreva ("Digite o km inicial")
		leia (kmin)
		escreva ("Digite o km final")
		leia (kmfin)
		escreva ("Digite a quantidade de litro")
		leia (litros)
		escreva ("Digite o preço da gasolina")
		leia (valor)
        calcular(kmin, kmfin, litros, valor)
    fim

void calcular(real ki, real kf, real qlitros, real preco)
    inicio
        real distancia, consumoMedio, valorGasto
        distancia = kf - ki
        consumoMedio = dist / qlitros
        valorGasto = qlitros * preco
        escreva("A distância percorrida foi: " + distancia)
        escreva("O consumo foi de: " + consumoMedio)
        escreva("O valor gasto foi de:" + valorGasto) 
    fim
	
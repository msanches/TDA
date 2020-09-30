algoritmo aula3_ex1
	inicio
		real kmi, kmf, qtel, preco
		escreva("Digite o km inicial")
		leia(kmi)
		escreva("Digite o km final")
		leia(kmf)
		escreva("Digite a quantidade de litros gastos")
		leia(qtel)
		escreva("Digite preço do litro de combustível")
		leia(preco)
		
		calculaCarro(kmi, kmf, qtel, preco)
		
	fim

void calculaCarro(real kmi, real kmf, real qtel, real preco)
	inicio
		real distancia, consumo, vgasto
		distancia = kmf - kmi
		consumo = distancia / qtel
		vgasto = qtel * preco
		escreva("A distância percorrida foi " + distancia)
		escreva("O consumo médio foi " + consumo)
		escreva("O valor gasto foi de " + vgasto)
	fim 
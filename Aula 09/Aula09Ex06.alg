algoritmo consumo
	inicio
		literal modelo[5]
		real consumo[5], menor
		inteiro inicio
		
		para(i = ; i < 5; i++){
			escreva("Digite o modelo do carro")
			leia(modelo[i])
			escreva("Digite o consumo do carro em km/L")
			leia(consumo[i])
		}
		
		menor = consumo[0]
		para(i = 0; i < 5; i++){
			se(consumo[i] < menor){
				menor = consumo[i]
				pos = i
			}
		}
		
		escreva("O modelo mais econômico é o: " + modelo[pos])
		escreva("Para percorrer 1.000 km, o " + modelo[pos] + "gastará" + (1000/consumo[pos])
	fim
	
	
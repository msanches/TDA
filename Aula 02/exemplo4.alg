algoritmo retangulo
	real: ladoA, ladoB, perim, area
	início
	  escreva ("Digite o valor de um lado (em cm): ")
	  leia (ladoA)
	  escreva ("Digite o valor de outro lado (em cm): ")
	  leia (ladoB) 	 
	  perim ← 2*ladoA  +  2*ladoB
	  escreva ("Perímetro: " + perim + " cm ")
	  area ← ladoA * ladoB  
	  escreva ("Área do retângulo: " + area + " cm² ")
	fim
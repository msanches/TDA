algoritmo imc
	real: peso, altura, imc
	início
	  escreva ("Digite o peso da pessoa (em Kg): ")
	  leia (peso)
	  escreva ("Digite a altura da pessoa (em m): ")
	  leia (altura) 	 
	  imc ← peso / (altura*altura)
	  escreva ("O IMC da pessoa é: " + imc + " Kg/m² ")
	fim
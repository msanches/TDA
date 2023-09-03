algoritmo aula3Ex9
    real peso, altura, imc 
    início
      escreva("Digite o seu peso (kg)")
      leia(peso)
      escreva("Digite a sua altura (m)")
      leia(altura)
    
      imc = calculoImc(peso, altura)
      escreva("O imc é: " + imc + "kg/m²")
    fim
	
real calculoImc(real p, real h)
    início
       real imc
       imc = p/(h * h)
       retorne(imc)
    fim 
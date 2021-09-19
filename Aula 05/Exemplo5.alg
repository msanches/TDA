algoritmo media
inicio
    real peso, altura, imc
        escreva ("Digite o seu peso")
        leia (peso)
        escreva("Digite a sua altura")
        leia(altura)
        imc=peso/(altura*altura)
    se (imc < 20){
        escreva ("Abaixo do peso")
    }
    senão se (imc < 25){
        escreva ("Peso normal")
    }
    senão se (imc < 30){
        escreva ("Sobrepeso")
    }
    senão se (imc < 40){
        escreva ("Obeso")
    }
    senão{
        escreva("Obeso Mórbido")
    }
fim

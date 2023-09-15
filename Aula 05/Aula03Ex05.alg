algoritmo aula03Ex05
    real dist, tempo
    inteiro i
    início
        
        para(i=1; i<=3; i++){
            escreva("Digite a distância percorrida pelo objeto em metros")
            leia(dist)
            escreva("Digite o tempo gasto nesse percurso em segundos")
            leia(tempo)
            escreva("A velocidade do objeto" + i + "é igual a" + calculaVelocidade(dist, tempo) + "m/s")
        }
    fim

real calculaVelocidade(real dist, real tempo)
    retorne (dist/tempo)
    fim
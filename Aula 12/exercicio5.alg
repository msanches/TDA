algoritmo exercicio5
    inteiro num[10], i, posicao, controle=0
    inicio
        para(i=0;i<10;i++){
            escreva("Insira um numero:")
            leia(num[i])
        }
        para(i=0;i<10;i++){
            se(num[i] > 50){//maior que 50
                se(num[i]%2 != 0){ //ímpar
                    escreva("Achei" + num[i] + " posição: " + i)
                    controle++
                }
            }
        }
        se(controle==0){
            escreva("Não há numero ímpar e maior que cinquenta")
        }
    fim

/* 
65
5
89
88
77
25
26
35

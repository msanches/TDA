algoritmo exercicio5
    real num[10]
    inteiro i, controle=0
    início
        para(i=0; i<10; i++){
            escreva("Digite um número: ")
            leia(num[i])
        }

        para(i=0; i<10; i++){
            se(num%2==1 e num>50 ){
                escreva("Número: " + num[i] + "posição: " + i)
                controle++
            }
        }
        se (controle==0)
            escreva ("Não existe numero nessa condição")
    fim
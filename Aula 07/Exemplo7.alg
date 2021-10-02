algoritmo exemplo7
    inteiro num, quadrado, i
    caractere resp
    início
        resp = 's'
        enquanto(resp == 's' ou resp == 'S'){
            escreva("Digite um número")
            leia(num)
            para(i = 0; i <= num; i++){
                quadrado = i * i
                escreva("quadrado = " + quadrado)
            }
            escreva("Deseja continuar??")
            leia(resp)
        }
    fim
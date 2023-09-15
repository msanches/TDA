algoritmo Exemplo5
    real num, media, soma
    inteiro qtNum
    caractere resp
    início
        resp = 's'
        soma = 0
        qtNum = 0
        enquanto(resp == 's' ou resp =='S'){
            escreva("Digite um número: ")
            leia(num)
            soma = soma + num
            qtNum++

            escreva("Deseja continuar? s/n")
            leia(resp)
        }
        media = soma/qtNum
        escreva("A média dos números digitados é: " + media)
    fim
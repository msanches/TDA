algoritmo aula07Ex04
    inteiro n, i
    real soma, media, valor
    início
        soma = 0
        escreva("Digite a quantidade de valores a serem processados: ")
        leia(n)
        para(i=0; i<=n; i++){
            escreva("Digite o valor: ")
            leia(valor)
            soma += valor
        }
        media = soma/n
        escreva("A média dos valores digitados é: " + media)
    fim
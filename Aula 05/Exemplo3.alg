algoritmo exemplo3
    real num, soma
    inteiro i
    início
        soma = 0
        para(i=1; i<=10; i++){
            escreva("Digite um número real: ")
            leia(num)
            soma = soma + num
        }
        escreva("A soma dos números digitados é: " + soma)
    fim
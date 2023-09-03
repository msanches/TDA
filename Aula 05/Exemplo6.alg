algoritmo exemplo6
    inteiro num, soma
    início
        soma = 0
        faça{
            escreva("Digite um número inteiro ou zero para SAIR")
            leia(num)
            se(num%2 !=0)
                soma = soma + num
        }enquanto(num != 0)
        escreva("A soma dos número ímpares é " + soma)
    fim
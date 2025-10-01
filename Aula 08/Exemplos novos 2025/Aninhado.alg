algoritmo Aninhado
    inteiro i, rgm
    real nota, soma
    caractere resp
    início
        soma = 0
        do{ //loop externo
            escreva("Digite o RGM do aluno: ")
            leia(rgm)
            para(i=1; i<=2; i++){//loop interno
                escreva("Digite a " + j + "ª nota do aluno")
                leia(nota)
                soma += nota
            }
            escreva("A média do aluno " + rgm + "é: " + (nota/2))
            escreva("Deseja continuar (s/n)?")
            leia(resp)
        }enquanto(resp == 's' ou resp == 'S')
    fim
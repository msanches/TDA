algoritmo consistencia
    real nota, media, soma
    inteiro i
    início
        soma = 0
        para(i=1; i<=3; i++){
            faça{
                escreva("Digite a "+i+"ª nota do aluno: ")
                leia(nota)
                se(nota<0 ou nota>10)
                    escreva("Nota inválida! Digite uma nota entre 0 e 10")
            } enquanto(nota<0 ou nota>10)

            soma += nota
        }
        media = soma/3

        escreva("A média do aluno é: " + media)
    fim
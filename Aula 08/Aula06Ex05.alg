algoritmo aula06Ex04
    inteiro op
    caractere retorno
    início
        escreva("Digite o destino desejado: ")
        escreva("1- Região Norte")
        escreva("2- Região Nordeste")
        escreva("3- Região Centro-Oeste")
        escreva("4- Região Sul")
        leia(op)
        escreva("A viagem inclui retorno? S/N")
        leia(retorno)

        escolha(op){
            caso 1:
                se(retorno == 's' ou retorno == 'S')
                    escreva("Valor a pagar: R$ 900,00")
                senao
                    escreva("Valor a pagar: R$ 500,00")
                pare
            caso 2:
                se(retorno == 's' ou retorno == 'S')
                    escreva("Valor a pagar: R$ 650,00")
                senao
                    escreva("Valor a pagar: R$ 350,00")
                pare
            caso 3:
                se(retorno == 's' ou retorno == 'S')
                    escreva("Valor a pagar: R$ 600,00")
                senao
                    escreva("Valor a pagar: R$ 350,00")
                pare
            caso 4:
                se(retorno == 's' ou retorno == 'S')
                    escreva("Valor a pagar: R$ 550,00")
                senao
                    escreva("Valor a pagar: R$ 600,00")
                pare
            padrão:
                escreva("Opção inválida!!")
        }
    fim
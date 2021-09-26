algoritmo aula5Ex3
    real bolsa
    inteiro estagio
    início
        escreva("Digite o valor da sua bolsa: R$ ")
        leia(bolsa)
        escreva("Digite o tempo de estágio: ")
        leia(estagio)

        se((bolsa >= 750 e bolsa <=950) e estagio >= 2)
            escreva("Participará do treinamento")
        senao
            escreva("Não participará")
    fim

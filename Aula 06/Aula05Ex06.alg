algoritmo aula5Ex5
    inteiro idade
    início
        escreva("Digite a sua idade: ")
        leia(idade)
        se(idade < 16)
            escreva("Não-eleitor")
        senao
            se(idade >= 18 e idade <= 65)
                escreva("Eleitor obrigatório")
            senao
                escreva("Eleitor facultativo")
    fim
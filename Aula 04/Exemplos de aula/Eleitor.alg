algoritmo Eleitor
    inteiro idade
    literal situacao
    início
        escreva("Qual a sua idade? ")
        leia(idade)

        se (idade < 16) então
            situacao = "não eleitor"
        senao se(idade >= 18 e idade <= 65)
            situacao = "eleitor obrigatório"
        senao 
            situacao = "eleitor facultativo"
        escreva("Sua situação é: " + situacao)        
    fim
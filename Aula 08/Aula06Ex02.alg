algoritmo aula06Ex02
    inteiro digito
    início
        escreva("Digite o digito final da placa: ")
        leia(digito)
        escreva("Rodízio na " + rodizio(digito))
    fim

literal rodizio(inteiro digito)
    literal resp
    se(digito == 1 ou digito == 2)
        resp = "Segunda-feira"
    senao se(digito == 3 ou digito == 4)
        resp = "Terça-feira"
    senao se(digito == 5 ou digito == 6)
        resp = "Quarta-feira"
    senao se(digito == 7 ou digito == 8)
        resp = "Quinta-feira"
    senao se(digito == 9 ou digito == 0)
        resp = "Sexta-feira"
    retorne resp
    fim
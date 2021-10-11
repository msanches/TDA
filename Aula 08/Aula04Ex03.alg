algoritmo aula04Ex03
    inteiro data, dia, mes, ano
    início
        escreva("Digite uma data no formato ddmmaa: ")
        leia(data)
        dia = data/10000
        mes = data%10000/100
        ano = data%100
        escreva("Dia: " + dia)
        escreva("Mês: " + mes)
        escreva("Ano: " + ano)
    fim
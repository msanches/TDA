algoritmo Detetive
    caractere resp
    inteiro cont, i
    literal perguntas[] = {"Telefonou para a vítima?", "Esteve no local do crime?", "Mora perto da vítima"
                           "Devia $$ para a vítima",  "Já trabalhou com a vítima"}
    início
        cont = 0
        para(i=0; i<5; i++){
            escreva(perguntas[i])
            leia(resp)
            se(resp == 's' ou resp == 'S')
                cont++
        }

        se(cont == 2)
            escreva("Você é suspeito")
        senao se(cont == 3 ou cont == 4)
            escreva("Você é cúmplice")
        senao se(cont == 5)
            escreva("Parabéns você é o assassino")
        senao
            escreva("Que pena você é inocente")
    fim
algoritmo Detetive
    caractere resp
    inteiro cont
    início
        cont = 0
        escreva("Telefonou para a vítima?")
        leia(resp)
        se(resp == 's' ou resp == 'S')
            cont++
        escreva("Esteve no local do crime?")
        leia(resp)
        se(resp == 's' ou resp == 'S')
            cont++
        escreva("Mora perto da vítima")
        leia(resp)
        se(resp == 's' ou resp == 'S')
            cont++
        escreva("Devia $$ para a vítima")
        leia(resp)
        se(resp == 's' ou resp == 'S')
            cont++
        escreva("Já trabalhou com a vítima")
        leia(resp)
        se(resp == 's' ou resp == 'S')
            cont++
        
        se(cont == 2)
            escreva("Você é suspeito")
        senao se(cont == 3 ou cont == 4)
            escreva("Você é cúmplice")
        senao se(cont == 5)
            escreva("Parabéns você é o assassino")
        senao
            escreva("Que pena você é inocente")
    fim
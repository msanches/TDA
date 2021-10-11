algoritmo aula07Ex07
    caractere sexo, resp
    real altura, somaF, somaM
    inteiro f, m
    início
        resp = 's'
        f = 0
        m = 0
        somaF = 0
        somaM = 0
        enquanto(resp == 's' ou resp == 'S'){
            escreva("Digite o sexo M/F: ")
            leia(sexo)
            escreva("Digite a altura em metros: ")
            leia(altura)
            se(sexo == 'm' ou sexo == 'M'){
                m++
                somaM += altura
            } senao {
                f++
                somaF += altura   
            }

            escreva("Deseja continuar s/n?")
            leia(resp)
        }
        escreva("A média da altura das mulheres é: " + (somaF/f))
        escreva("A média da altura dos homens é: " + (somaM/m))
    fim
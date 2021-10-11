algoritmo aula07Ex09
    inteiro idade, somaI, contador, contaH, contaSalM
    real salario, mediaI, mediaSal, somaSal
    caractere sexo, resp
    início
        resp = 's'
        somaI = 0
        somaSal = 0
        enquanto(resp=='s' ou resp == 'S'){       
            escreva("Digite a idade da pessoa:")
            leia(idade)
            se(idade < 0){
                pare
            } senao {
                somaI += idade
            }

            escreva("Digite o sexo da pessoa: M/F")
            leia(sexo)
            
            escreva("Digite o salário da pessoa")
            leia(salario)
            contador++

            se(sexo == 'M' ou sexo == 'm'){
                somaSal += salario
                contaH++
            } senao se(salario < 600){
                contaSalM++
            }
                
            escreva("Deseja continuar? S/N ")
            leia(resp)
        }
        mediaI = somaI/contador
        escreva("A média da idade das pessoas é: " + mediaI)
        mediaSal = somaSal/contaH
        escreva("A média do salário dos homens e: " + mediaSal)
        escreva("A quantidade de mulheres que recebem salário inferior a R$ 600 é: "+ contaSalM)
    fim
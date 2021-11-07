algoritmo exercicio
    real salario, decimo, adicional, soma
    inteiro i
    literal mes[] = {"Jan","Fev","Mar",...,"Nov","Dez"}
    início
        soma = 0
        para(i=0; i<12; i++){
            faça{
                escreva("Digite o salário no mês " + mes[i])
                leia(salario)
            }enquanto(salario<0)
            soma += salario
        }
        decimo = soma/12
        adicional = decimo/3
        escreva("Décimo terceiro salário a receber R$ " + decimo)
        escreva("Adicional 1/3 de férias R$ " + adicional)        
    fim
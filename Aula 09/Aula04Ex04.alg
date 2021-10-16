/*Para vários tributos, a base de cálculo é o salário mínimo. 
Fazer um algoritmo que leia o valor do salário mínimo e o valor do 
salário de uma pessoa. Defina um método que calcule e imprima quantos 
salários mínimos ela ganha a partir dos dados digitados.
*/
algoritmo aula04Ex04
    real salMinimo, salario
    início
        escreva("Digite o valor do salário mínimo: ")
        leia(salMinimo)
        escreva("Digite o seu salário: ")
        leia(salario)

        calculaSalario(salMinimo, salario)
    fim

void calculaSalario(real salMinimo, real salario)
        real res
        res = salario/salMinimo
        escreva("Você recebe " + res + "salários mínimos.")
    fim
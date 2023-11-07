algoritmo Salario-versaoA
    real salario
    início
        escreva("Digite o salário do funcionário: ")
        leia(salario)
        escreva("O salário do funcionário antes do método é: " + salario)
        calculaAumento(salario)
        escreva("O salário do funcionário após o método é: " + salario)
    fim
real void calculaAumento(real salario)
    salario = salario * 1.03
    fim
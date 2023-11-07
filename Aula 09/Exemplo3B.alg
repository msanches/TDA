algoritmo Salario-versaoA
    real salario[5]
    inteiro i
    início
        para(i=0; i<5; i++){
            escreva("Digite o salário do "+(i+1) +"º funcionário: ")
            leia(salario[i])
        }
        escreva("O salário do 4º funcionário antes do método é: " + salario[3])
        calculaAumento(salario, 3)
        escreva("O salário do funcionário após o método é: " + salario[3])
    fim
real void calculaAumento(real salario, inteiro i)
    salario[i] = salario[i] * 1.03
    fim
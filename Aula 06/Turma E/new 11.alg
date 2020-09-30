algoritmo AumentoSal
inicio
    inteiro cod
    real salario, aumento
    aumento = 0
    escreva("Digite o código de 1 a 5")
    leia(cod)
    escreva("Digite o salário")
    leia(salario)
    se (cod == 1)
        aumento = salario * 0.50
        escreva("Cargo: Escriturário")        
    senao se (cod == 2)
        aumento = salario * 0.35
        escreva("Cargo: Secretário")
    senao se (cod == 3)
        aumento = salario * 0.20
        escreva("Cargo: Caixa")
    senao se (cod == 4)
        aumento = salario * 0.10
        escreva("Cargo: Gerente")
    senao se (cod == 5)
        escreva("Cargo: Diretor")
    
    escreva("Aumento: ", aumento)
    escreva("Novo salário: ", (salario+aumento))        
fim

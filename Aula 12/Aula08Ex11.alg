algoritmo aula11Ex08
    real salario, aumento
    literal nome
    inteiro i
    início
        para(i=0; i<10; i++){
            escreva("Digite o nome do funcionário")
            leia(nome)
            escreva("Digite o salario do funcionário " + nome)
            leia(salario)
            se(salario<=1500)
                aumento = 10/100
            senao se(salario<=3000)
                aumento = 2/100
            senao
                aumento = 0
            salario = salario*(1+aumento)
            se(aumento==0)
                escreva("O funcionário não tem direito a aumento")
            senao 
                escreva("O salário reajustado do funcionário é: " + salario)
        }
    fim


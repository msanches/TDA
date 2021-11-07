algoritmo exercicio11
    real salario, reajuste
    inteiro i
    literal nome
    início
        para(i=0; i<10; i++){
            escreva("Digite o nome do funcionário: ")
            leia(nome)
            escreva("Entre com o salário do funcionário: " + nome)
            leia(salario)
            se(salario<=1500)
                reajuste = 10/100
            senao se(salario <=3000)
                reajuste = 2/100
            senao
                reajuste = 0
            se(reajuste>0)
                salario = salario + (salario*reajuste)
                escreva("O funcionário " + nome+"vai receber R$ " +salario)
            senao
                escreva("O funcionário " +nome+ "não tem direito a reajuste!")
        }
    fim

/*

11- Uma empresa decide dar um aumento de 10 % para funcionários que ganham até R$
1.500,00 e de 2% para funcionários que recebem entre R$ 1.500,00 e R$ 3.000,00. Faça
um algoritmo que recebe o nome e o salário de 10 funcionários, mostre o valor do salário
de cada um reajustado ou uma mensagem, caso o funcionário não tenha direito a
reajuste.

*/
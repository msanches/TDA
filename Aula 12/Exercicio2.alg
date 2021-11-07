algoritmo exercicio9
    real  valorVenda, salario, comissao, salarioFinal
    caractere resp
    inicio
        escreva("Digite o valor do salário do funcionário: ")
        leia(salario)
        escreva("Digite o valor da venda: ")
        leia(valorVenda) 
        comissao = valorVenda*0.04
        escreva("O funcionário ganhou R$" + comissao + " apenas com as comissões das vendas.")
        salarioFinal = comissao + salario
        escreva("O salário do funcionário ficou R$" + salarioFinal + " com os valores das comissões.")
fim
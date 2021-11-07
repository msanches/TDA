algoritmo Atividade 2
real salario, venda, comissao = 0, total
inicio
    escreva("Digite o salario do funcionario: ")
    leia(salario)

    faça{
       escreva("Digite o valor da venda realizada: (0 para encerrar)")
       leia (venda)
       comissao = comissao+(venda/0.04)
    }enquanto(venda !=0)
    
    total = comissaoTotal + salario
    escreva("Salario final: " + total)
fim
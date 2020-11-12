algoritmo salario
	inicio
	  real sal, venda, comissao
	  
	  escreva("Digite o salario fixo: ")
	  leia(sal)
	  escreva("Digite o valor das vendas: ")
	  leia(venda)
	  
	  se(venda <= 1500)
		comissao = venda * 0.03
	  senao{
		comissao = 1500 *0.03
		comissao += (venda - 1500) *0.05
	  }
	  escreva("Salário final: " + (sal+comissao))
	fim
	
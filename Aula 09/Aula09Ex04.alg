algoritmo salarioFuncionario
	inicio
		real salario, vendas, comissao, final
		escreva("Digite o seu salário fixo")
		leia(salario)
		escreva("Digite o valor de suas vendas")
		leia(vendas)
		comissao = vendas + (vendas * 0.04)
		final = salario + comissao
		escreva("Sua comissão foi de " + comissao)
		escreva("Seu salário fianl foi de " + final) 
	fim 
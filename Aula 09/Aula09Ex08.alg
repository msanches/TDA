algoritmo decimoTerceiro
	inicio
		real salario[12], soma = 0, decimoTerceiro
		inteiro i
		
		para(i = 0; i < 12; i++){
			escreva("Digite o salário do mês " + (i + 1))
			leia(salario[i])
			soma += salario[i]
		}
		decimoTerceiro = soma / 12
		escreva("O 13º salário a ser pago é: " + decimoTerceiro)
		escreva("O valor do adicional de férias é: " decimoTerceiro / 3)

	fim
	
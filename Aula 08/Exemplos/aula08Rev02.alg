algoritmo Exemplo2
inicio
	real temperaturas[12]
	para (inteiro i=0; i< tamanho(temperaturas); i++){
		escreva("Digite a temperatura do mês ",(i+1))
		leia(temperaturas[i])
	}
	real media = mediaAnual(temperaturas)
	escreva("Média anual: ", media)
	escreva("O mês com a maior temperatura foi: " + maiorMes(temperaturas))	
fim 

real mediaAnual(real temps[])
	real soma = 0
	para (inteiro i=0; i< tamanho(temps); i++){
		soma += temps[i]
	}
	retorne soma/tamanho(temps)
fim 

inteiro maiorMes(real temps[])
	inteiro pos = 0
	real maior = temps[pos]
	para (inteiro i=1; i< tamanho(temps); i++){
		se (temps[i] > maior){
			maior = temps[i]
			pos = i + 1
		}
	}
	retorne pos
fim 


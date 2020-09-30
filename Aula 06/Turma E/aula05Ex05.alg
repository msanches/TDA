algoritmo grupoDeValores
	inicio
		real valor, media, soma, maior
		literal op
		inteiro contador
		op = 's'
		soma = 0 	//acumulador
		qte = 0		//contador
		maior = 0
		enquanto(op == 's' ou op == 'S'){
			escreva("Digite um valor")
			leia(num)
			soma = soma + num
			qte++
			se(num  > maior){
				maior = num
			}
			escreva("Deseja continuar (S/N)?")
			leia(op)
		}			
		media = soma / qte
		escreva("A média é igual a " + media)
		escreva("O maior número digitado foi: " + maior)

	fim	
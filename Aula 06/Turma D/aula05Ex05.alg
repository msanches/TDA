algoritmo aula05_ex05
	inicio
		inteiro i //contador
		real soma, valor, media, num
		literal op
		op = 's'
		soma = 0
		i = 0
		num = 0
		
		enquanto(op == 's' ou op == 'S'){
			escreva("Digite um valor")
			leia(valor)
			soma = soma + valor //acumulador
			i++
			se(valor > num) {
				num = valor
			}
			escreva("Quer continuar s/n?")
			leia(op)
		}
		
		media = soma / i
		escreva("A média dos valores digitados é: " + media)
		escreva("O maior valor digitado foi: " + num)
	fim	
	
	i = 1 -> valor = 3 -> soma = 3 -> num = 3
s   i = 2 -> valor = 5 -> soma = 8 -> num = 5
s   i = 3 -> valor = 2 -> soma = 10 -> 	num = 5
n

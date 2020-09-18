algoritmo Quadrado
inicio
	inteiro num, quad, i 
    literal resp
	resp = 's'
	enquanto (resp=='s' ou resp == 'S') {
	     faça {
                escreva("Digite um número")
				leia(num)
        } enquanto (num > 100)
        para (i=0, i<=num, i++) {
			quad = i*i
			escreva("Quadrado de " + num + " igual " + quad)
        }
		escreva("Deseja continuar?")
		leia(resp)
	}
fim

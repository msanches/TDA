algoritmo Quadrado
inicio
	inteiro num, quad, i 
	literal resp
	resp = 's'
	enquanto (resp == 's' ou resp == 'S') {
	     escreva("Digite um número")
	     leia(num)
        para (i=0, i<=num, i++) {
			quad = i*i
			escreva("Quadrado de " + i + " igual " + quad)
                  }
	     escreva("Deseja continuar?")
	     leia(resp)
	}
fim

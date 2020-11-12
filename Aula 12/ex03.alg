algoritmo aula12Ex03
	inicio
		real n1, n2, n3, me
		escreva("Digite as notas do aluno: ")
		leia(n1, n2, n3)
		escreva("Digite a média dos exercícios: ")
		leia(me)
		
		conceito(calculaMedia(n1,n2,n3, me))
	fim

real calculaMedia(real n1, real, n2, real n3, real me)
	inicio
		real ma
		ma = (n1 + n2 * 2 + n3 *3 + me)/7
		retorne ma
	fim
	
void conceito(real media)
	inicio
		literal conceito = ""
		se(media >= 9.0)
			conceito = "A"
		senao se(media >= 7.5)
			conceito = "B"
		senao se(media >= 6.0)
			conceito = "C"
		senao 
			conceito = "D"
		
		escreva("O conceito do aluno foi: " + conceito)
	fim

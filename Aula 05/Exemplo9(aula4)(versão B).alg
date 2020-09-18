algoritmo media
	inicio
		real nota1, nota2
		literal op
		escreva("Digite a primeira nota")
		leia(nota1)
		escreva("Digite a segunda nota")
		leia(nota2)
		escreva("Digite a opção (A: média aritmética) ou (P: média ponderada)")
		leia (op)
		calculaMedia(nota1, nota2, op)
	fim 

void calculaMedia(real n1, real n2, literal op)
	inicio
		real media
		se(op == 'A' ou op == 'a'){
			media = (n1 + n2) / 2
			escreva("A média é: " + media)
		}
		senao se(op == 'P' op == 'p') {
			media = (n1*3 + n2*7) / 10
			escreva("A média é: " + media)
		}
		senao {
			escreva("Opção inválida")
		}
	fim

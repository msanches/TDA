/* 4- Escreva um algoritmo que solicite duas notas de um aluno, 
calcule a média e mostre se o mesmo está aprovado (média >=6.0) ou reprovado caso contrário.
*/ 

algoritmo médiaEscolar
	inicio
		real nota1, nota2, media
		escreva ("Informe a nota1: ")
		leia (nota1)
		escreva ("Informe a nota2: ")
		leia (nota2)
		media = (nota1 + nota2) / 2
		
		se (media >= 6) {
			escreva("Você foi aprovado!")
		}
		senão {
			escreva("Você foi reprovado!!")
		}
	fim	
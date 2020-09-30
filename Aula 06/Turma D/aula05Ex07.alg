algoritmo aula05_ex07
	inicio
		literal sexo, op
		real altura, somaF, somaM
		inteiro qteF, qteM //contadores
		op = 's'
		qteF = 0
		qteM = 0
		somaF = 0
		somaM = 0
		enquanto(op == 's' ou op == 'S'){
			escreva("Digite o sexo da pessoa (F/M)")
			leia(sexo)
			escreva("Digite a altura] da pessoa em metros")
			leia(altura)
			se(sexo == 'f' ou sexo == 'F'){
				somaF = somaF + altura 
				qteF++
			}
			senao{
				somaM = somaM + altura
				qteM++
			}
			escreva("Deseja continuar (s/n)?")
			leia(op)
		}
		escreva("A média das alturas dos homens é: " + somaM/qteM)
		escreva("A média das alturas das moças é: " + somaF/qteF)
	fim
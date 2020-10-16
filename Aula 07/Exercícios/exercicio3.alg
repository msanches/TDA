algoritmo TurmaNotas
inicio
	real disc1[200], disc2[200], disc3[200]
	literal nome[200],sexo[200]
	inteiro n
	leituraDeDados() //letra a
	calcularMediaGeral() //letra b
	mediaDeCadaAluno() //letra c
	alunoComMaiorMedia() //letra d
	mediaDasMulheresNaSegundaDisciplina() //letra e
	alunosReprovadosPrimeiraDisciplina() //letra f
	alunosAbaixoDaMedia() //letra g
fim

void leituraDeDados()
inicio
	inteiro i
	escreva ("Digite a quantidade de alunos da turma: ")
	leia (n)
	para(i=0; i<n; i++){
		escreva ("Digite o nome do aluno " + (i+1) + ": " )
		leia (nome[i])
		escreva ("Digite o sexo deste aluno (m ou f): ")
		leia (sexo[i])
		escreva ("Digite a nota na 1ª disciplina: ")
		leia (disc1[i])
		escreva ("Digite a nota na 2ª disciplina: ")
		leia (disc2[i])
		escreva ("Digite a nota na 3ª disciplina: ")
		leia (disc3[i])
	}
fim

void calcularMediaGeral()
	inicio
	inteiro i   
	real soma, media
	soma = 0
	para(i=0; i<n; i++){
		soma  +=  disc1[i]  +  disc2[i]  + disc3[i]
	}
	media =  soma / (3 * n)
	escreva ("A média geral das notas da turma é " + media)
fim

void mediaDeCadaAluno()
inicio
	inteiro i   
	real media
	para(i=0; i<n; i++){
		media =  (disc1[i]  +  disc2[i]  + disc3[i]) / 3
		escreva ("O aluno "  +  nome[i]  +
				  " tem média:  "  +   media)
	}
fim

void alunoComMaiorMedia()
inicio
	inteiro  i, pos
	real  media, maior
	maior =  (disc1[0]  +  disc2[0]  + disc3[0]) / 3
    pos = 0
	para(i=1; i<n; i++)
		media =  (disc1[i]  +  disc2[i]  + disc3[i]) / 3
		se (media > maior){
			maior = media
			pos = i
		}
	}
    escreva  ("O aluno com maior média é "  +
                nome[pos]   +   ", sexo: "  +   sexo[pos]  +
                ", com média "   +  maior)
fim

void mediaDasMulheresNaSegundaDisciplina()
inicio
	inteiro  i, quantMulh
	real  soma, media
	soma =  0
    quantMulh = 0
	para(i=0; i<n; i++)
		se (sexo[i] == "F" ou sexo[i] == "f"){
		soma +=  disc2[i]        // nota na 2ª disc.
		quantMulh++
		}
	}
    se  (quantMulh >0){ 
        media = soma / quantMulh 
        escreva  ("A média das notas das mulheres na 2ª disciplina é "  
					+ media)
    } senao{
        escreva  ("Esta turma não tem mulheres!" )
	}
fim

void alunosReprovadosPrimeiraDisciplina()
inicio
inteiro i   
	para(i=0; i<n; i++){
		se(disc1[i] < 6.0){
			escreva ("O aluno "  +  nome[i]  + " foi reprovado na disciplina 1")
		}
	}
fim

void alunosAbaixoDaMedia()
inicio
	inteiro  i
	real  media
	maior =  (disc1[0]  +  disc2[0]  + disc3[0]) / 3
	escreva("Alunos abaixo da média da turma na terceira disciplina:")
	para(i=1; i<n; i++)
		media =  (disc1[i]  +  disc2[i]  + disc3[i]) / 3
		se (disc3[i] < media){
			escreva("Nome: " + nome[i])
		}
	}
fim
	
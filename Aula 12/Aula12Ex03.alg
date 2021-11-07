algoritmo aula12Ex03
    inteiro op
    real n1, n2
    início
        enquanto(verdadeiro){
            escreva("Calculadora:\n1-Soma")
            escreva("2-Subtração\n3-Multiplicação")
            escreva("4-Divisão\n5-Sair")
            escreva("Escolha uma opção: ")
            leia(op)
            
            se(op==5)
                pare
            escreva("Digite o primeiro número")
            leia(n1)
            escreva("Digite o segundo número")
            leia(n2)
            
            escolha(op){
                caso 1: soma(n1, n2)
                pare
                caso 2: subtracao(n1, n2)
                pare
                caso 3: multiplicacao(n1, n2)
                pare
                caso 4: divisao(n1, n2)
                pare
                padrão:
                    escreva("Opção inválida")
            }
        }

    fim

void soma(real n1, real n2)
    escreva("Soma = " + (n1+n2))
    fim

void subtracao(real n1, real n2)
    escreva("Subtração = " + (n1-n2))
    fim

void multiplicacao(real n1, real n2)
    escreva("Multiplicação = " + (n1*n2))
    fim

void divisao(real n1, real n2)
    se(n2==0)
        escreva("Não é possível dividir por zero")
    senao
        escreva("Divisão = " + (n1/n2))
    fim
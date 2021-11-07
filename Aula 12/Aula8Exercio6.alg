algoritmo aula08Exercio6
    real num
    inteiro pos, neg, i
    início
        num = -1
        pos = 0
        neg = 0
        i = 0
        enquanto(num != 0){
            escreva("Digite um número real (0 para sair)")
            leia(num)
            
            se(i==0){
                menor = num
                i=1
            }senao se(num<menor){
                menor = num
            }
            
            se(num>0)
                pos++
            senao 
                neg++
        }
        escreva("Forma digitados " + pos + "números positivos")
        escreva("Forma digitados " + neg + "números negativos")
        escreva("O menor número digitado foi " + menor)
    fim
/* Teste de mesa
num = 3 => menor = 3
num = 10 => menor = 3
num = -1 => menor = -1


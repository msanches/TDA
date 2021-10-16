algoritmo exemplo3
    real salario[10], soma, media, salMaior
    inteiro i, contador
    início
        soma = 0
        contador = 0
        //Leitura e armazenamento dos salário
        para (i = 0; i < 10; i++) {
            escreva("Digite o " + (i + 1) + "º salário: ")
            leia(salario[i])
        }
        
        //Processamento da média
        para (i = 0; i < 10; i++) {
            soma += salario[i]
        }
        media = soma/10;
        escreva("A média dos salário é: " + media)
        
        //Processando do maior salário
        salMaior = salario[0]
        para(i=0; i<10; i++){
            se(salario[i] > salMaior)
                salMaior = salario[i]
        }
        escreva("O maior salário é R$ " + salMaior)

        //Salários menores que 850
        para (i = 0; i < 10; i++) {
            se (salario[i] < 850)
                contador++
        }  
        escreva("A quantidade de salários menor que R$ 850,00 é: " + contador)
    fim
/* Teste de mesa 
i=0 => salario[0] = 880
i=1 => salario[1] = 600
i=2 => salario[2] = 1000
i=3 => salario[3] = 1880
i=4 => salario[4] = 950

salMaior = 880
i=0 => salario[0] > salMaior ???? (F) salMaior = 880
i=1 => salario[1] > salMaior ???? (F) salMaior = 880
i=2 => salario[2] > salMaior ???? (V) salMaior = 1000
i=3 => salario[3] > salMaior ???? (V) salMaior = 1880
i=4 => salario[4] > salMaior ???? (F) salMaior = 1880

O maior salário é: R$ 1880,00
*/
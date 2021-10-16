algoritmo aula08Ex03
    início
        real aceleracao
        escreva("Digite a aceleração do veículo em m/s²: ")
        leia(aceleracao)
        bateu(aceleracao)
    fim

real calculaDist(real ac)
    retorne 400/2*ac
    fim

void bateu(real ac)
    se(calculaDist(ac) >= 100)
        escreva("BATEU")
    senao
        escreva("UFA")
    fim
algoritmo media
inicio
   real n1, n2, m, f
   escreva("Digite a média")
   leia(m)
   escreva("Digite o percentual de frequência")
   leia(f)
   se(f < 75) {
        escreva("Reprovado por falta")
   } 
   senão se(m < 6){
        escreva("Reprovado por nota") 
     }
   senão{
        escreva("Aprovado")
   }   
fim

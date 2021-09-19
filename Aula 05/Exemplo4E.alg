algoritmo media
inicio
   real m, f
   escreva("Digite a média")
   leia(m)
   escreva("Digite o percentual de frequência")
   leia(f)
   se(f < 75) {
        escreva("Reprovado por falta")
   } 
   se(m < 6){
        escreva("Reprovado por nota") 
   }
  senão{
        escreva("Aprovado")
  }   
fim
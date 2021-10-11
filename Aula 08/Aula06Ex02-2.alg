algoritmo Exercicio 02
   inteiro placa
   início
      escreva("Digite o número final da sua placa: ")
      leia(placa)
      diaDoRodizio(placa)
   fim
   
void diaDoRodizio(inteiro placa){
   se (placa == 1 || placa == 2){
      escreva("Rodízio na segunda-feira")
   } senão se (placa == 3 || placa == 4){
      escreva("Rodízio na terça-feira")
   } senão se (placa == 5 || placa == 6){
      escreva("Rodízio na quarta-feira")
   } senão se (placa == 7 || placa == 8){
      escreva("Rodízio na quinta-feira")
   } senão se (placa == 9 || placa == 0){
      escreva("Rodízio na sexta-feira")
   } senão {
      escreva("Digite um final de placa entre 0 e 9")
   }
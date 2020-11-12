#Exercício 02 - TDA

anoNasc = int(input("Digite o ano de nascimento: "))
anoIng = int(input("Digite o ano de ingresso: "))

hoje = 2020
idade = hoje - anoNasc
tempoServ = hoje - anoIng
print("O funcionário tem ", idade, "anos de idade e ", tempoServ, "anos de empresa")

if(idade >= 65 or tempoServ >= 30 or (idade >= 60 and tempoServ >= 25)):
  print("Requerer aposentadoria")
else:
  print("Não requerer aposentadoria")

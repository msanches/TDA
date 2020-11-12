#Exercício 03 - TDA
def calculaMedia(n1, n2, n3, me):
  ma = (n1 + n2*2 + n3*3 + me)/7
  return ma

def conceito(media):
  if(media >= 9):
    conceito = "A"
  elif(media >= 7.5):
    conceito = "B"
  elif(media >= 6):
    conceito = "C"
  else:
    conceito = "D"
  
  print("O conceito do aluno é: ", conceito)

n1 = float(input("Digite a nota 1: "))
n2 = float(input("Digite a nota 2: "))
n3 = float(input("Digite a nota 3: "))
me = float(input("Digite a média dos exercícios: "))

conceito(calculaMedia(n1, n2, n3, me))
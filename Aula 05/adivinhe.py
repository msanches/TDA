from random import *

num =  randint(0,10)
i = 0
controle = 0

while (controle == 0 ):
  i = i + 1
  x = int(input("Entre com um número inteiro "))
  if num == x:
    print("Parabéns, você acertou em ", i , " tentativas" )
    controle = 1
  elif num > x:
    print("O número pensado é maior")
  else:
    print("O numero pensado é menor")
    
    
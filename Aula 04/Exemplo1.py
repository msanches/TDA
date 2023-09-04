import os
os.system("cls" or "clear")

print("1- Soma\n2- Subtração\n3- Multiplicação\n4- Divisão\n5- Sair")
op = int(input("digite uma opção: "))
match(op):
    case 1:
        print("Você escolheu soma!")
    case 2:
        print("Você escolheu subtração")
    case 3:
        print("Você escolheu multiplicação")
    case 4:
        print("Você escolheu divisão")
    case 5:
        print("Obrigado por utilizar nosso programa")
    case _:
        print("Opção inválida")
input("Enter continua...")        
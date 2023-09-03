qte = int(input("Digite a quantidade de diárias: "))
tipo = input("Digite o tipo de hospedagem desejada (S-D-T)")

if tipo == 's' or tipo == 'S':
    print("Valor a pagar = R$ ", (qte * 255.50))
elif tipo == 'd' or tipo == 'D':
    print("Valor a pagar = R$ ", (qte * 305.50))
elif tipo == 't' or tipo == 'T':
    print("Valor a pagar = R$ ", (qte * 360.50))
else:
    print("Opção inválida")    
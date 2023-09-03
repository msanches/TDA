def calculaIMC(peso, altura):
    imc = peso / (altura*altura)
    print("IMC = ", imc, "kg/m²")

peso = float(input("Digite o seu peso em kg: "))
altura = float(input("Digite a sua altura em m :"))

calculaIMC(peso, altura)
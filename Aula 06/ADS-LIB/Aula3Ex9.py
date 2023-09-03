def calculaImc(h, p):
	imc = p/ (h * h)
	return imc

h = float(input("Digite a sua altura em m "))
p = float(input("Digite peso em kg "))  
print("O seu imc é ", calculaImc(h, p), "kg/m²")
	

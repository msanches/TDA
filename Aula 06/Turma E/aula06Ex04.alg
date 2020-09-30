algoritmo login
	inicio
		literal psw
		escreva("Digite sua senha")
		leia(psw)
		login(psw)
	fim

void login(literal s)
	inicio
		constante literal SENHA
		SENHA = "4531"
		se(s == SENHA)
			escreva("Acesso liberado")
		senao
			escreva("Acesso negado")
	fim
	
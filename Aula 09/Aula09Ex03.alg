algoritmo loginUser
	inicio
		literal usuarios[][]= {{"joao", "123", "admin"},
							   {"natalia", "123", "médica"},
							   {"moara", "123", "enfermeira"}}

		login()
	fim

void login()
	inicio
		inteiro i, j
		literal usuario, senha
		escreva("Digite seu usuário")
		leia(usuario)
		escreva("Digite sua senha")
		leia(senha)

		para(i = 0; i < 3; i ++){
			se(usuarios[i][0] == usuario E usuarios[i][1] == senha)
				escreva("Acesso liberado!! Seu nível de acesso é:" + usuarios[i][3])
			senao
				escreva("Acesso negado: dados incorretos")
		}
	fim

/******** DADOS DO GRUPO      ********/
/* Nome:				RGM 		 */
/* Nome:				RGM 		 */
/* Nome:				RGM 		 */

algoritmo Projeto_1

	inicio
		inteiro k = 5, h = 4
		literal anos = ["2015","2016","2017","2018"]
		literal paises = ["Brasil", "Angola", "Austrália", "EUA", "Argentina"]
		real idh = [[0.75,0.85,0.56,0.89],
					[0.89,0.50,0.20,0.12],
					[0.10,0.45,0.12,0.78],
					[0.67,0.90,1.00,0.90],
					[0.11,0.67,0.30,0.39]]

		mediaTotal(idh, k, h)
		mediaPaises(idh, paises, k, h)
		mediaAno(idh, anos, k, h)
		maiorIDH(idh, paises, anos, k, h)
		menorIDH(idh, paises, anos, k)
	fim
	
//Métodos



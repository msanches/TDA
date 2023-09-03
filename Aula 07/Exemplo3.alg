algoritmo Principal
início
     real base, altura   
     escreva("Qual a base?")
     leia(base)
     escreva("Qual a altura?")
     leia(altura) 
     escreva("Área "  + calculaAreaTriangulo(base, altura))
     escreva("Área "  + calculaAreaTriangulo(27.5, 44.5))
fim

real calculaAreaTriangulo(real base, real altura) {
     real area
     area = base * altura / 2
     retorne (area)
}


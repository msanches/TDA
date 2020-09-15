algoritmo Eq2grau
    inicio
      inteiro a,b,c, delta, raiz
      real x1, x2
      escreva("Digite o valor A")
      leia(a)
      escreva("Digite o valor B")
      leia(b)
      escreva("Digite o valor C")
      leia(c)
      delta = b**2 - 4 * a * c
      x1 = (-b + raiz(delta))/2*a
      x2 = (-b - raiz(delta))/2*a
      escreva("R1 = ", x1)
      escreva("R2 = ", x2)
    fim 
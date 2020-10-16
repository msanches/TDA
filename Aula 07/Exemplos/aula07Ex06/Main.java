import java.util.Scanner;
class Main {
  public static void main(String[] args) {
    int idade[] = new int[5];
    int soma = 0, acima = 0;
    Scanner c = new Scanner(System.in);
    for(int i = 0; i <= 4; i++){
      System.out.println("Digite a idade do aluno: ");
      idade[i] = c.nextInt();
      soma = soma + idade[i];
    }
    float media = soma / 5;
    for(int i = 0; i <= 4; i++){
      if(idade[i] > media)
          acima++;
    }
    System.out.println("A média da idade dos alunos é " + media);
    System.out.println("O número de alunos com idade acima da média é " + acima);
  }
}


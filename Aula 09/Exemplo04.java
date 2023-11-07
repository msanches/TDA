import java.util.Scanner;
class Exemplo04 {
  public static void main(String[] args) {
    int soma = 0, acima = 0, n = 20;
    int idade[] = new int[n];
    Scanner sc = new Scanner(System.in);
    
    for(int i = 0; i < idade.length; i++){
      System.out.println("Digite a idade do aluno: ");
      idade[i] = sc.nextInt();
      soma = soma + idade[i];
    }
    sc.close();
    
    float media = soma / idade.length;
    for(int i = 0; i < idade.length; i++){
      if(idade[i] > media)
          acima++;
    }    
    System.out.println("A média da idade dos alunos é " + media);
    System.out.println("O número de alunos com idade acima da média é " + acima);
  }
}


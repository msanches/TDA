import java.util.Scanner;

public class Exemplo1{
    public static void main(String[] args) {
        float salario[] = new float[5];
        Scanner sc = new Scanner(System.in);
        
        for(int i=0; i<5; i++){
            System.out.print("Digite o salário do " +(i+1)+"º funcionário: R$ ");
            salario[i] = sc.nextFloat();
        }
        for(int i=0; i<5; i++){
            System.out.println("o salário do do "+(i+1)+"º funcionário é: " + salario[i]);
        }        
    }
}
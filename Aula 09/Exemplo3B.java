import java.util.Scanner;

public class Exemplo3B {
    public static void main(String[] args) {
        double salario[] = new double[5];
        int i;
        Scanner sc = new Scanner(System.in);
        for(i=0; i<5; i++){
            System.out.print("Digite o salário do " +(i+1) +"º funcionário: ");
            salario[i] = sc.nextDouble();
        }
        System.out.println("Salário do 4º funcionário antes do método: " + salario[3]);
        calculaAumento(salario, 3);
        System.out.println("Salário do 4º funcionário antes do método: " +salario[3]);
    }
    public static void calculaAumento(double salario[], int i){
            salario[i] = salario[i]*1.03;
    }
}

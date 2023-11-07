import java.util.Scanner;

public class Exemplo3B2 {
    public static void main(String[] args) {
        double[] salario = new double[5];
        int i, func;
        Scanner sc = new Scanner(System.in);
        for(i=0; i<2; i++){
            System.out.print("Digite o salário do " +(i+1) +"º funcionário: ");
            salario[i] = sc.nextDouble();
        }
        try {
            System.out.println("Digite o código do funcionário 0-4");
            func = sc.nextInt(i);
            System.out.println("Salário do 4º funcionário antes do método: " + salario[func]);
            calculaAumento(salario);
            System.out.println("Salário do 4º funcionário antes do método: " +salario[func]);
        } catch (Exception e) {
            //System.out.println(e);
            System.out.println("Funcionário não encontrado");
        }
    }
    public static void calculaAumento(double salario[]){
        for(int i=0; i< salario.length; i++){
            salario[i] = salario[i]*1.03;
        }
    }
}
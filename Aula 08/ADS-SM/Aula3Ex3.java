import java.util.Scanner;

public class Aula3Ex3 {
    public static void main(String[] args) {
        float valor;
        int parcelas;
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite o valor da compra");
        valor = sc.nextFloat();
        System.out.println("Digite a quantidade de parcelas");
        parcelas = sc.nextInt();

        System.out.println("O valor de cada parcela é R$ " + calculaParcela(valor, parcelas));
    }
    public static float calculaParcela(float valor, int parcelas){
        float parcela = (float) ((valor * 1.05)/parcelas);
        return parcela;
    }
}

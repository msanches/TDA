//import java.util.Scanner;

import javax.swing.JOptionPane;

public class Exemplo1 {
    public static void main(String[] args) {
        int op;
        //Scanner sc = new Scanner(System.in);
        //System.out.print("Digite uma opçãp:\n1-Soma\n2-Subtração\n" +
         //                   "3-Multiplicação\n4-Divisão\n5-Sair \n");
        //op = sc.nextInt();
        op = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite uma opçãp:\n1-Soma\n2-Subtração\n" +
                            "3-Multiplicação\n4-Divisão\n5-Sair \n"));
        switch(op){
            case 1:
                //System.out.println("Você escolheu soma");
                JOptionPane.showMessageDialog(null, "Você escolheu soma");
                break;
            case 2:
                JOptionPane.showMessageDialog(null,"Você escolheu subtração");
                break;
            case 3:
                JOptionPane.showMessageDialog(null,"Você escolheu multiplicação");
                break;
            case 4:
                JOptionPane.showMessageDialog(null,"Você escolheu divisão");
                break;
            case 5:
                JOptionPane.showMessageDialog(null,"Obrigado por utilizar nosso programa");
                break;
            default:
                JOptionPane.showMessageDialog(null,"Opção inválida");
        }
        JOptionPane.showMessageDialog(null,"Até logo!!");
        //sc.close();
    }

    public static void soma(float num1, float num2){

    }
}
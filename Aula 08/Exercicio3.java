import javax.swing.JOptionPane;

public class Exercicio3{
    public static void main(String[] args) {
        int data, dia, mes, ano;
        data = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite a data no formato ddmmaa: "));
        dia = data/10000;
        mes = data%10000/100;
        ano = data%100;
        System.out.println("Dia: " + dia);
        System.out.println("Mês: " + mes);
        System.out.println("Ano: " + ano);
        Math.sqrt(4f);
    }
}
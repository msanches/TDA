import javax.swing.JOptionPane;

public class Exemplo5 {
    public static void main(String[] args) {
        float num, media, soma=0;
        int qtNum = 0;
        char resp = 'S';
        while(resp == 'S'){
            num = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite um número"));
            soma += num;
            qtNum++;

            resp = JOptionPane.showInputDialog(null, "Deseja continuar?").toUpperCase().charAt(0);
        }
        media = soma/qtNum;
        JOptionPane.showMessageDialog(null, String.format("A média dos números digitados é %.2f", media));
    }
}
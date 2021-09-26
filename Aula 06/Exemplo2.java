import javax.swing.JOptionPane;

public class Exemplo2 {
    public static void main(String[] args) {
        int parcelas;
        float valorCompra;
        parcelas = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o número de parcelas: 2|4|6|8"));
        valorCompra = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite o valor da compra: "));

        switch(parcelas){
            case 2:
                JOptionPane.showMessageDialog(null, "Total da compra = " + (valorCompra * 1.03)/2);
                break;
            case 4:
                JOptionPane.showMessageDialog(null, "Total da compra = " + (valorCompra * 1.07)/4);
                break;
            case 6:
                JOptionPane.showMessageDialog(null, "Total da compra = " + (valorCompra * 1.09)/6);
                break;
            case 8:
                JOptionPane.showMessageDialog(null, "Total da compra = " + (valorCompra * 1.12)/8);
                break;
            default:
                JOptionPane.showMessageDialog(null, "Opção inválida!!!");
        }

    }
}

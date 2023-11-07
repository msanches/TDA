import javax.swing.JOptionPane;

public class Exemplo2 {
    public static void main(String[] args) {
        float[][] notas = new float[3][3];
        String[] nome = new String[3];
        float soma;
        int i, j;
        for(i=0; i<3; i++){
            soma=0;
            nome[i] = JOptionPane.showInputDialog(null, "Digite o nome do aluno: ");
            for(j=0; j<3; j++){
                notas[i][j] = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite a " +(j+1)+"ª nota do " + nome[i] ));
                soma+=notas[i][j];
            }
            System.out.println("A média do " +nome[i]+" é: " + soma/3);
        }
    }
}
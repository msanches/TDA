import javax.swing.JOptionPane;

public class Veiculo{
    //atributos de veículo
    private String modelo;
    private String marca;
    private String placa;
    private int ano;
    private float valor;
    private int id, qte = 0;
    private boolean status = false;

    //Estrutura de dados para armazenamento em memória
    private String[] marcaVeiculo = new String[100];
    private int[] anoVeiculo = new int[100];
    private String[] modeloVeiculo = new String[100];
    private float[] valorVeiculo = new float[100];
    private String[] placaVeiculo = new String[100];
    private boolean[] statusVeiculo = new boolean[100];

    //Métodos construtores
    public Veiculo() {}  
    
    public Veiculo(String modelo, String marca, String placa, int ano, float valor, int id) {
        this.modelo = modelo;
        this.marca = marca;
        this.placa = placa;
        this.ano = ano;
        this.valor = valor;
        this.id = id;
    }

    //getters e setters
    public int getId() { return id; }
    public String getMarca() { return marca; }
    public int getAno() { return ano; }
    public String getModelo() { return modelo; }
    public String getPlaca() { return placa; }
    public float getValor() { return valor; }
    public boolean getStatus() { return status; }
    public void setId(int id) { this.id = id;}
    public void setMarca(String marca) { this.marca = marca; }
    public void setAno(int ano) { this.ano = ano; }
    public void setModelo(String modelo) { this.modelo = modelo; }
    public void setPlaca(String placa) { this.placa = placa; }
    public void setValor(float valor) { this.valor = valor; }
    public void setStatus(boolean status) { this.status = status; }

    public int cadastrar(){
        int i = this.id;
        marcaVeiculo[i] = this.marca.toUpperCase();
        modeloVeiculo[i] = this.modelo.toUpperCase();
        anoVeiculo[i] = this.ano;
        placaVeiculo[i] = this.placa.toUpperCase();
        valorVeiculo[i] = this.valor;
        statusVeiculo[i] = this.status;
        qte++;
        JOptionPane.showMessageDialog(null, "Veículo cadastrado com sucesso!");
        return qte;
    }

    public void estoque(){
        System.out.println("\nControle de Estoque:");
        System.out.println("Marca\tModelo\tano\tPlaca\t\tValor\tStatus");
        for(int i=0; i<qte; i++){
            relatorio(i);
        }
    }

    public void consulta(){
        int pos = -1;
        for(int i=0; i<qte; i++){
            if(placaVeiculo[i].equalsIgnoreCase(this.placa))
                pos = i;
        }
        if(pos!=-1){
            System.out.println("Marca\tModelo\tano\tPlaca\t\tValor\tStatus");
            relatorio(pos);
            //caso o veículo esteja em estoque, perguntar se deseja vender
            //caso positivo, perguntar o cpf para consultar o cliente
            //efetuar a venda após verificar o cadastro do cliente
            //após a venda, mudar o status do veículo para true (vendido)
        } else{
            System.out.println("Veículo não encontrado");
        }
    }

    public void relatorio(int i){
        System.out.print(marcaVeiculo[i]+"\t");
        System.out.print(modeloVeiculo[i]+"\t");
        System.out.print(anoVeiculo[i]+"\t");
        System.out.print(placaVeiculo[i]+"\t");
        System.out.print(valorVeiculo[i]+"\t");
        if(statusVeiculo[i]==false)
            System.out.print("Estoque");
        else
            System.out.print("Vendido");
        System.out.println();
    }
}
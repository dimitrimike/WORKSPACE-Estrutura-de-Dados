package exercicio2;
import java.time.LocalDate;

public class Data {
	
	private int mes;
	private int dia;
	private int ano;
	private LocalDate dataNow;
	
	Data (int dia, int mes, int ano){
		this.dia = dia;
		this.mes = mes;
		this.ano = ano;
	}
	
	public void displayData() {
		System.out.println(dia + "/" + mes + "/" + ano);
	}
	
	Data(){
		this.dataNow = LocalDate.now();
	}
	
	public LocalDate getDataNow() {
		System.out.println(dataNow);
		return dataNow;
	}

}

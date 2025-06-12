import java.util.Scanner;
public class Livro{
	
	static Scanner scanner = new Scanner(System.in);
	private String titulo;
	private String autor;
	private String isbn;
	private int ano;
	private boolean alugado;
	@Override
	public String toString() {
		if(alugado) {																					
			return "titulo:" + titulo + ", Autor:" + autor + ", isbn:" + isbn + ", ano:" + ano + ", indisponivel!";
		}
		if(!alugado) {																						
			return "titulo:" + titulo + ", Autor:" + autor + ", isbn:" + isbn + ", ano:" + ano + ", disponivel!";
		}
		return titulo;
	}
	Livro(){
		System.out.print("Digite o Titulo do livro: ");
		this.titulo = scanner.next();
		System.out.print("Digite o Autor do livro: ");
		this.autor = scanner.next();
		System.out.print("Digite a isbn do livro: ");
		this.isbn = scanner.next();
		System.out.print("Digite o ano de publicação do livro: ");
		this.ano = scanner.nextInt();
		scanner.nextLine();
	}	
	
	public boolean isAlugado() {
		return alugado;
	}
	public void setAlugado(boolean alugado) {
		this.alugado = alugado;
	}
	public String getTitulo() {
		return titulo;
	}
	public String getAutor() {
		return autor;
	}
	public String getIsbn() {
		return isbn;
	}
	public int getAno() {
		return ano;
	}
	
}
public class Usuario {
	private String nome;
	private String cpf;
	private int livrosAlugados;
	
	@Override
	public String toString() {
		return "nome:" + nome + ", cpf:" + cpf;
	}
	Usuario(String nome, String cpf) {
		this.nome = nome;
	    this.cpf = cpf;
	}
	public int getLivrosAlugados() {
		return livrosAlugados;
	}
	public void incrementarLivrosAlugados() {
		livrosAlugados++;
	}
	public void decrementarLivrosAlugados() {
		livrosAlugados--;
	}
	public String getNome() {
		return nome;
	}
	public String getCpf() {
		return cpf;
	}
}
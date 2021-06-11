package br.com.elit.ps13si.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "USUARIO_PS")
public class UsuarioModel {

	
	private  long idUsuario;
	private String cpf;
	private String nome;
	private String email;
	private String telefone;
	private String senha;
	private String tipo;
	
	
	
	
	public UsuarioModel(long idUsuario, String cpf, String nome, String email, String telefone, String senha,
			String tipo) {
		super();
		this.idUsuario = idUsuario;
		this.cpf = cpf;
		this.nome = nome;
		this.email = email;
		this.telefone = telefone;
		this.senha = senha;
		this.tipo = tipo;
	}
	
	public UsuarioModel() {
		
	}



	@Id
	@Column(name = "ID_USUARIO")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "USUARIO_PS_SEQ")
	@SequenceGenerator(name = "USUARIO_PS_SEQ", sequenceName = "USUARIO_PS_SEQ", allocationSize = 1)
	public long getIdUsuario() {
		return idUsuario;
	}




	public void setIdUsuario(long idUsuario) {
		this.idUsuario = idUsuario;
	}



	@Column(name = "CPF")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 50, message = "CPF deve ser entre 2 e 50 caracteres")
	public String getCpf() {
		return cpf;
	}




	public void setCpf(String cpf) {
		this.cpf = cpf;
	}



	@Column(name = "NOME")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 50, message = "NOME deve ser entre 2 e 50 caracteres")
	public String getNome() {
		return nome;
	}




	public void setNome(String nome) {
		this.nome = nome;
	}



	@Column(name = "EMAIL")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 50, message = "EMAIL deve ser entre 2 e 50 caracteres")
	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}



	@Column(name = "TELEfONE")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 50, message = "TELEfONE deve ser entre 2 e 50 caracteres")
	public String getTelefone() {
		return telefone;
	}




	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}



	@Column(name = "SENHA")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 50, message = "SENHA deve ser entre 2 e 50 caracteres")
	public String getSenha() {
		return senha;
	}




	public void setSenha(String senha) {
		this.senha = senha;
	}



	@Column(name = "TIPO")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 50, message = "TIPO deve ser entre 2 e 50 caracteres")
	public String getTipo() {
		return tipo;
	}




	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	
	
}
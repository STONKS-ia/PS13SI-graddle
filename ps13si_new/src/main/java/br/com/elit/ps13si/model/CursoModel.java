package br.com.elit.ps13si.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "CURSOS")
public class CursoModel {


    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long idCurso;
    private String nome;
    private String duracao;

    public CursoModel(long idCurso, String nome, String duracao) {
        super();
        this.idCurso = idCurso;
        this.nome = nome;
        this.duracao = duracao;
    }

    public CursoModel() {
    }

    @Id
	@Column(name = "ID_CURSO")
    public long getIdCurso() {
        return idCurso;
    }

    public void setIdCurso(int idCurso) {
        this.idCurso = idCurso;
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

	@Column(name = "DURACAO")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 50, message = "DURACAO deve ser entre 2 e 50 caracteres")
    public String getDuracao() {
        return duracao;
    }

    public void setDuracao(String duracao) {
        this.duracao = duracao;
    }


}

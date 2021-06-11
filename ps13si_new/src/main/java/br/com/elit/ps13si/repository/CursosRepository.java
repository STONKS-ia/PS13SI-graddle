package br.com.elit.ps13si.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.elit.ps13si.model.CursoModel;

public interface CursosRepository extends JpaRepository<CursoModel, Integer> {

}

package br.com.elit.ps13si.repository;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import br.com.elit.ps13si.model.UsuarioModel;

public interface UsuarioRepository extends JpaRepository<UsuarioModel, Long>{
	
	@Query("SELECT u  FROM  USUARIOS u WHERE u.EMAIL = ?1")
	List<UsuarioModel> findByEmail(String email);		
	
}

package br.com.elit.ps13si.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.elit.ps13si.model.UsuarioModel;

public interface UsuarioRepository extends JpaRepository<UsuarioModel, Integer>{

	
	//@Query("SELECT USUARIOS.SENHA  FROM USUARIOS USUARIOS WHERE USUARIOS.EMAIL = ?;")
	//List<UsuarioModel> findByName(@Param("email") String email);
		
	
}

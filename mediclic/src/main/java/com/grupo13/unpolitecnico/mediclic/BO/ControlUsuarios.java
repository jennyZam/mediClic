package com.grupo13.unpolitecnico.mediclic.BO;

import java.util.List;

//import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo13.unpolitecnico.mediclic.Dto.Dto;
import com.grupo13.unpolitecnico.mediclic.Modelo.UsuariosModelo;


@RestController
public class ControlUsuarios {
	
	Dto dt= new Dto();
	
	//insertar o agregar
	@PostMapping("/registrarusuario")
	public void registrarUsuario(UsuariosModelo usuario) {
		dt.getUser().crear(usuario);
	}
	
	//Obtener o buscar
	@GetMapping("/listarusuario")
	public List<UsuariosModelo> leer(){
	return dt.getUser().leer();
	}
	
	/*Eliminar o borrar
	@DeleteMapping("/eliminarusuario")
	public void eliminarUsuario(long ced) {
		dt.getUser().eliminar(ced);
	}
	*/
	
	//Modificar o actualizar
	@PutMapping("/actualizarusuario")
	public void actualizarUsuario(UsuariosModelo usuario) {
		dt.getUser().modificar(usuario);
	}
}

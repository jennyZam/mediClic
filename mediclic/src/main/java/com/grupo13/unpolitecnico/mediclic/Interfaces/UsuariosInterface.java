package com.grupo13.unpolitecnico.mediclic.Interfaces;

import java.util.List;

import com.grupo13.unpolitecnico.mediclic.Modelo.UsuariosModelo;

public interface UsuariosInterface {

	public String crear(UsuariosModelo usuario);

	public String modificar(UsuariosModelo usuario);

	//public String eliminar(int ced);

	public List<UsuariosModelo> leer();

}

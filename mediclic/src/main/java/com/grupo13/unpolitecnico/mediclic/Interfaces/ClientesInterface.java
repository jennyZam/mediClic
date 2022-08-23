package com.grupo13.unpolitecnico.mediclic.Interfaces;

import java.util.List;

import com.grupo13.unpolitecnico.mediclic.Modelo.ClientesModelo;



public interface ClientesInterface {

	public String crear(ClientesModelo usuario);

	public String modificar(ClientesModelo usuario);

	//public String eliminar(int ced);

	public List<ClientesModelo> leer();

}

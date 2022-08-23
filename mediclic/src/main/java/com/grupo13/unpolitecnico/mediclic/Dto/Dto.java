package com.grupo13.unpolitecnico.mediclic.Dto;

import com.grupo13.unpolitecnico.mediclic.Dao.ClientesDao;
import com.grupo13.unpolitecnico.mediclic.Dao.UsuariosDao;

public class Dto {

	UsuariosDao user = new UsuariosDao();
	ClientesDao veri = new ClientesDao();

	public UsuariosDao getUser() {
		return user;
	}

	public void setUser(UsuariosDao user) {
		this.user = user;
	}

	public ClientesDao getVeri() {
		return veri;
	}

	public void setVeri(ClientesDao veri) {
		this.veri = veri;
	}

}

package com.grupo13.unpolitecnico.mediclic.Modelo;

import java.io.Serializable;

public class UsuariosModelo implements Serializable {

	// Identificador unico de las clases entidad
	private static final long serialVersionUID = 1L;
	
	private int userId;
	private String userName;
	private String userPassword;
	private Boolean dependents;
	private int clientId;
	
	
	public UsuariosModelo() {
	
	}


	public UsuariosModelo(int userId, String userName, String userPassword, Boolean dependents, int clientId) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.dependents = dependents;
		this.clientId = clientId;
	}


	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserPassword() {
		return userPassword;
	}


	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}


	public Boolean getDependents() {
		return dependents;
	}


	public void setDependents(Boolean dependents) {
		this.dependents = dependents;
	}


	public int getClientId() {
		return clientId;
	}


	public void setClientId(int clientId) {
		this.clientId = clientId;
	}

}

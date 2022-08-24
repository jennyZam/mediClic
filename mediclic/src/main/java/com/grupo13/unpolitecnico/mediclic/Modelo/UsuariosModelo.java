package com.grupo13.unpolitecnico.mediclic.Modelo;

import java.io.Serializable;

public class UsuariosModelo implements Serializable {

	// Identificador unico de las clases entidad
	private static final long serialVersionUID = 1L;
	
	private int userId;
	private String userName;
	private String userPassword;
	private int dependents;
	
	
	public UsuariosModelo() {
	
	}


	public UsuariosModelo(int userId, String userName, String userPassword, int dependents) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.dependents = dependents;
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


	public int getDependents() {
		return dependents;
	}


	public void setDependents(int dependents) {
		this.dependents = dependents;
	}


	
}

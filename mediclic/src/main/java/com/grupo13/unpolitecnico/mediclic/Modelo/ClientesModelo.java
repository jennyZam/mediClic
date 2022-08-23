package com.grupo13.unpolitecnico.mediclic.Modelo;

import java.io.Serializable;

public class ClientesModelo implements Serializable {

	// Identificador unico de las clases entidad
	private static final long serialVersionUID = 1L;

	private int clientId;
	private String clientName;
	private String parentesco;
	private String gender;
	private String birthDate;
	private String email;

	public ClientesModelo() {

	}

	public ClientesModelo(int clientId, String clientName, String parentesco, String gender, String birthDate,
			String email) {
		super();
		this.clientId = clientId;
		this.clientName = clientName;
		this.parentesco = parentesco;
		this.gender = gender;
		this.birthDate = birthDate;
		this.email = email;
	}

	public int getClientId() {
		return clientId;
	}

	public void setClientId(int clientId) {
		this.clientId = clientId;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getParentesco() {
		return parentesco;
	}

	public void setParentesco(String parentesco) {
		this.parentesco = parentesco;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}

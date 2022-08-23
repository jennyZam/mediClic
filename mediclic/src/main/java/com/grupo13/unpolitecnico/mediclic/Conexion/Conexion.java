package com.grupo13.unpolitecnico.mediclic.Conexion;


import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

	private String db = "helpto";
	private String url = "jdbc:mysql://localhost/" + db; 
	
	private String users = "root"; 
	private String contra = "123456"; 
	private String control = "com.mysql.cj.jdbc.Driver"; 

	// Objeto sin inicializar la conexion
	Connection conectar = null;

	// Conectandonos a la base de datos
	public Conexion() {

		try {
			Class.forName(control);
			conectar = DriverManager.getConnection(url, users, contra);

			if (conectar != null) {
			System.out.println("¡Conectado exitosamente a la base de datos!");
			}
		} catch (Exception e) {
			System.out.println("¡Error al conectarse a la base de datos!" + e.getMessage());
		}
	}

	public Connection Conect() {
		return conectar;
	}

	public void desconectar() {
		conectar = null;
	}

}


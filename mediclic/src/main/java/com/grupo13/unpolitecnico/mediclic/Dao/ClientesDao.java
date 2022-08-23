package com.grupo13.unpolitecnico.mediclic.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.grupo13.unpolitecnico.mediclic.Conexion.Conexion;
import com.grupo13.unpolitecnico.mediclic.Interfaces.ClientesInterface;
import com.grupo13.unpolitecnico.mediclic.Modelo.ClientesModelo;


public class ClientesDao implements ClientesInterface {

	private ResultSet buscar = null;
	private PreparedStatement consulta = null;

	Conexion conecto = new Conexion();
	Connection conect = conecto.Conect();

	String regisDatos;
	String registroDatos;
	String read;
	String reads;
	String mensaje;
	long idUser;

	@Override
	public String crear(ClientesModelo usuario) {

		if (conect != null) {
			regisDatos = "(clientName,parentesco,gender,birthDate,email)";
			registroDatos = "('" + usuario.getClientName() + "'," + "'" + usuario.getParentesco() + "'," + "'"
					+ usuario.getGender() + "'," + "'" + usuario.getBirthDate() + "'," + "'"
					+ usuario.getEmail() + "')";

			read = "INSERT INTO clients" + regisDatos + "VALUES" + registroDatos;
			try {
				consulta = conect.prepareStatement(read);
				consulta.execute();
				consulta.close();
				conecto.desconectar();
				mensaje = "Cliente creado";
			} catch (Exception e) {
				mensaje = "No se creo el cliente";
			}
		} else {
			mensaje = "Error de conexion";
		}

		return mensaje;

	}

	@Override
	public String modificar(ClientesModelo usuario) {
		if (conect != null) {
			read = "UPDATE clients SET clientName= ?," + "parentesco= ?," + "gender= ?," + "birthDate= ?," + "email= ?  WHERE clientId= ? ";

			try {
				consulta = conect.prepareStatement(read);
				consulta.setString(1, usuario.getClientName());
				consulta.setString(2, usuario.getParentesco());
				consulta.setString(3, usuario.getGender());
				consulta.setString(4, usuario.getBirthDate());
				consulta.setInt(4, usuario.getClientId());

				consulta.executeUpdate();
				consulta.close();
				conecto.desconectar();
				mensaje = "Datos del Cliente Actualizados";
			} catch (SQLException e) {
				System.out.println("error");
				System.out.println(e.getMessage());
				System.out.println(e.getErrorCode());

			} catch (Exception e) {
				mensaje = "Error de conexion";
				System.out.println("error");
				System.out.println(e.getMessage());
				System.out.println(e.getLocalizedMessage());
			}
		} else {
			mensaje = "No se actualizaron los datos del Cliente";
		}
		return mensaje;

	}

	@Override
	public List<ClientesModelo> leer() {
		List<ClientesModelo> mostrar = new ArrayList<>();
		buscar = null;
		read = null;

		if (conect != null) {
			read = "SELECT * FROM clients";
			try {
				consulta = conect.prepareStatement(read);
				buscar = consulta.executeQuery();

				while (buscar.next()) {
					ClientesModelo p = new ClientesModelo();

					p.setClientName(buscar.getString(1));
					p.setParentesco(buscar.getString(2));
					p.setGender(buscar.getString(3));
					p.setBirthDate(buscar.getString(4));
					p.setEmail(buscar.getString(5));
					mostrar.add(p);
				}

				consulta.close();
				conecto.desconectar();

			} catch (SQLException e) {
				System.out.println("error");
				System.out.println(e.getMessage());
				System.out.println(e.getErrorCode());

			} catch (Exception e) {
				mensaje = "Error de conexion";
				System.out.println("error");
				System.out.println(e.getMessage());
				System.out.println(e.getLocalizedMessage());
			}
		}
		return mostrar;
	}
}

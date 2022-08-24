package com.grupo13.unpolitecnico.mediclic.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.grupo13.unpolitecnico.mediclic.Conexion.Conexion;
import com.grupo13.unpolitecnico.mediclic.Interfaces.UsuariosInterface;
import com.grupo13.unpolitecnico.mediclic.Modelo.UsuariosModelo;

public class UsuariosDao implements UsuariosInterface {

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
	public String crear(UsuariosModelo usuario) {

		if (conect != null) {
			regisDatos = "(userId,userName,userPassword,dependents,clientId)";
			registroDatos = "('" + usuario.getUserId() + "'," + "'" + usuario.getUserName() + "'," + "'"
					+ usuario.getUserPassword() + "'," + "'" + usuario.getDependents() + "')";

			read = "INSERT INTO users" + regisDatos + "VALUES" + registroDatos;
			try {
				consulta = conect.prepareStatement(read);
				consulta.execute();
				consulta.close();
				conecto.desconectar();
				mensaje = "Usuario creado";
			} catch (Exception e) {
				mensaje = "No se creo el usuario";
			}
		} else {
			mensaje = "Error de conexion";
		}

		return mensaje;

	}

	@Override
	public String modificar(UsuariosModelo usuario) {
		if (conect != null) {
			read = "UPDATE users SET userName= ?," + "userPassword= ?," + "dependents= ? WHERE userId= ? ";

			try {
				consulta = conect.prepareStatement(read);
				consulta.setString(1, usuario.getUserName());
				consulta.setString(2, usuario.getUserPassword());
				consulta.setInt(3, usuario.getDependents());
				consulta.setInt(4, usuario.getUserId());

				consulta.executeUpdate();
				consulta.close();
				conecto.desconectar();
				mensaje = "Datos del Usuario Actualizados";
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
			mensaje = "No se actualizaron los datos del Usuario";
		}
		return mensaje;

	}

	@Override
	public List<UsuariosModelo> leer() {
		List<UsuariosModelo> mostrar = new ArrayList<>();
		buscar = null;
		read = null;

		if (conect != null) {
			read = "SELECT * FROM users";
			try {
				consulta = conect.prepareStatement(read);
				buscar = consulta.executeQuery();

				while (buscar.next()) {
					UsuariosModelo p = new UsuariosModelo();

					p.setUserId(buscar.getInt(1));
					p.setUserName(buscar.getString(2));
					p.setUserPassword(buscar.getString(3));
					p.setDependents(buscar.getInt(4));
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

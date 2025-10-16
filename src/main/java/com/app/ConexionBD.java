package com.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {
	public static Connection obtenerConexion() throws SQLException {
		Connection conexion = null;
		String url = "jdbc:mysql://localhost:3306/muropromo27";
		String user = "root";
		String password = "";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conexion = DriverManager.getConnection(url, user, password);
			System.out.println("âœ… ConexiÃ³n exitosa a MySQL");
		} catch (SQLException e) {
			throw new SQLException("Driver JDBC no encontrado", e);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conexion;
	}

}

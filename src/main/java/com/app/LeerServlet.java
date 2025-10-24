package com.app;

// Importamos las librerías necesarias para trabajar con Servlets y JDBC
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// Anotación que indica la ruta con la que se accede a este servlet
@WebServlet("/LeerServlet")
public class LeerServlet extends HttpServlet {

    // Este método se ejecuta cuando se hace una petición POST al servlet
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Declaramos las variables necesarias para la conexión y la consulta
        Connection conexion = null;  // Representa la conexión con la base de datos
        Statement declaracion = null; // Sirve para enviar instrucciones SQL
        ResultSet resultados = null;  // Guarda los datos que devuelve una consulta SELECT

        try {
            // 1️⃣ Conectarse a la base de datos (usando nuestra clase ConexionBD)
            conexion = ConexionBD.obtenerConexion();

            // 2️⃣ Crear un "Statement" para ejecutar la consulta SQL
            declaracion = conexion.createStatement();

            // 3️⃣ Escribir la consulta SQL que queremos ejecutar
            String sql = "SELECT id, autor, comentario, fecha_hora FROM datosmuro";

            // 4️⃣ Ejecutar la consulta y guardar los datos obtenidos en el ResultSet
         
            // 5️⃣ Enviar los datos obtenidos hacia una página JSP
            // Guardamos el conjunto de resultados como atributo para poder leerlo desde la vista
          
            // Redirigimos a la página JSP que mostrará los datos
          
        } catch (SQLException e) {
          
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/vistas/error.jsp").forward(request, response);
        } finally {
            // 6️⃣ Cerramos los recursos para liberar memoria y evitar errores de conexión

            try {
                if (resultados != null) resultados.close();   // Cierra el ResultSet
                if (declaracion != null) declaracion.close(); // Cierra el Statement
                if (conexion != null) conexion.close();       // Cierra la conexión con la base
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

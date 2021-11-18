/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto_catedra_ayc01t_sl190836_ml190272;

import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

/**
 *
 * @author Vere
 */
public class ConnectionTest {

    Connection conexion = null;
    String Url = "jdbc:sqlserver://DESKTOP-90HJLA8:1433;databaseName=CONTROL_LIBROS05;user=sa;password=12345;";
    String Url2 = "jdbc:sqlserver://DESKTOP-90HJLA8:1433;databaseName=LOGINS;user=sa;password=12345;";

    public void conectar() {

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conexion = DriverManager.getConnection(Url);

            // JOptionPane.showMessageDialog(null, "Conectado!");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex, "error al conectar" + ex.getMessage(), JOptionPane.ERROR_MESSAGE);

        }

    }

    public void conectarlogin() {

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conexion = DriverManager.getConnection(Url2);

            // JOptionPane.showMessageDialog(null, "Conectado!");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex, "error al conectar" + ex.getMessage(), JOptionPane.ERROR_MESSAGE);

        }

    }

    public int login(String User, String Pass) {
        Integer resultado = 0;
     try {
          Statement ejecutor = conexion.createStatement();
           ResultSet rs = ejecutor.executeQuery("SELECT * FROM USUARIOS WHERE NOMBRE = '"+User+"' AND CONTRASENA = '"+Pass+"'");
           
           if(rs.next()){
               JOptionPane.showMessageDialog(null, "Bienvenido");
               resultado = 1;
           } else {
              JOptionPane.showMessageDialog(null, "problemas con Usuario y/o Contraseña");
               resultado = 0;
           }
     } catch (Exception e){
        JOptionPane.showMessageDialog(null, "error al conectar" + e.getMessage(), e.getMessage(), JOptionPane.ERROR_MESSAGE);
     }
    return resultado;
    
    }
    //public String Select() 
    //String texto = "";
    // try {
    //Statement ejecutor = conexion.createStatement();
    // ResultSet respuesta = ejecutor.executeQuery("Select * from AUTOR_LIBRO");

           // while (respuesta.next()) {
               // texto = texto + respuesta.getString("CODIGO_LIBRO") + " | " + respuesta.getString("CODIGO_AUTOR") + "\n";
    //}
    //} catch (Exception e) {
    // }
    // return texto;
    //}
    public String Selectfromquery(String Query) {
        String texto = "";
        try {
            Statement ejecutor = conexion.createStatement();
            ResultSet respuesta = ejecutor.executeQuery(Query);

            while (respuesta.next()) {

                texto = texto + respuesta.getString("CODIGO_LIBRO") + "  " + respuesta.getString("CODIGO_AUTOR") + "\n";

            }
        } catch (Exception e) {
        }
        return texto;
    }

}

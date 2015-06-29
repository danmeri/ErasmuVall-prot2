/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author daniel
 */
public class PuntuacionDAO {
    private Connection conexion;
    
    public void guardarPuntuacion(PuntuacionDTO punt){
        try {
            String query = "insert into PUNTUACIONES(TIPO,PUNTUACION,USUARIO) VALUES ('"+punt.getTipo()+"',"+punt.getPuntuacion()+",'"+punt.getUsuario()+"')";       
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            statement.executeUpdate(query);
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<PuntuacionDTO> getPuntuaciones(String tipo){
        ArrayList<PuntuacionDTO> puntuaciones=new ArrayList<PuntuacionDTO>();
        try {
            String query = "select * from PUNTUACIONES where TIPO='"+tipo+"'";
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                do{
                    int id=resultado.getInt("IDPUNTUACION");
                    String tip=resultado.getString("TIPO");
                    int punt=resultado.getInt("PUNTUACION");
                    String usuario=resultado.getString("USUARIO");
                    PuntuacionDTO p=new PuntuacionDTO(id,tip,punt,usuario);
                    puntuaciones.add(p);
                }while (resultado.next());
            }
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return puntuaciones;
    }
    
    public Connection getConnection() throws SQLException{
        ConnectionPool pool=ConnectionPool.getInstance();
        conexion=pool.getConnection();
        return conexion;
    }
    
    public void closeConnection(Connection connection) throws SQLException {
        connection.close();
    }

    public void borrarPuntuacion(String user,String tipo) {
        try {
            String query = "DELETE FROM PUNTUACIONES WHERE USUARIO='"+user+"' AND TIPO='"+tipo+"'";
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            statement.executeUpdate(query);
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }
}

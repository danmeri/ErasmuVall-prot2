/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author daniel
 */
public class AgenciaDAO {
    private Connection conexion;
    

    public Connection getConnection() throws SQLException{
        ConnectionPool pool=ConnectionPool.getInstance();
        conexion=pool.getConnection();
        return conexion;
    }
    
    public void closeConnection(Connection connection) throws SQLException {
        connection.close();
    }

    public void setAgencia(AgenciaDTO ag) {
        try {
            String query = "insert into AGENCIAVIAJES(NOMBREUSUARIO,NOMBREAGENCIA,DIRECCION) VALUES ('"+ag.getNombreUsuario()+"','"+ag.getNombreAgencia()+"','"+ag.getNombreAgencia()+"')";       
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            statement.executeUpdate(query);
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

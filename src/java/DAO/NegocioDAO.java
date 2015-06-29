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
public class NegocioDAO {
    private Connection conexion;
    
    public void setNegocio(NegocioDTO neg) {
        try {
            String query = "insert into NEGOCIOOCIO(NOMBREUSUARIO,NOMBRENEGOCIO,DIRECCION) VALUES ('"+neg.getNombreUsuario()+"','"+neg.getNombreNegocio()+"','"+neg.getDireccion()+"')";       
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            statement.executeUpdate(query);
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Connection getConnection() throws SQLException{
        ConnectionPool pool=ConnectionPool.getInstance();
        conexion=pool.getConnection();
        return conexion;
    }
    
    public void closeConnection(Connection connection) throws SQLException {
        connection.close();
    }
}

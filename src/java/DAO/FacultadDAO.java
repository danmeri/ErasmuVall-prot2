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
public class FacultadDAO {
    private Connection conexion;
    
    
    public int getIdFacultad(String nombreFacultad){
        int id=0;
        try {
            String query = "select * from FACULTAD where nombre='"+nombreFacultad+"'";
            
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                id=resultado.getInt("IDFACULTAD");
            }
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }
    
    public ArrayList<FacultadDTO> getTodas(){
        ArrayList<FacultadDTO> facultades=new ArrayList<FacultadDTO>();
        try {
            String query = "select * from FACULTAD";
            
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                do{
                    int id=resultado.getInt("IDFACULTAD");
                    String nombre=resultado.getString("NOMBRE");
                    String direccion=resultado.getString("DIRECCION");
                    String web=resultado.getString("WEB");
                    FacultadDTO f=new FacultadDTO(id,nombre,direccion,web);
                    facultades.add(f);
                }while(resultado.next());
            }
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return facultades;
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

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
 * @author jaime
 */
public class FotosDAO {
    private Connection conexion;
    
    public ArrayList<FotosDTO> getFotos(int id, int tipo){
        ArrayList<FotosDTO> fotos = new ArrayList<FotosDTO>();
        try {
            String query = "select * from FOTOS where tipo="+tipo+" and idref="+id;
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                do {
                    String url=resultado.getString("URL");
                    FotosDTO foto = new FotosDTO(url,id,tipo);
                    fotos.add(foto);
                }while (resultado.next());
            }  
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fotos;
    }
    
    public Connection getConnection() throws SQLException{
        ConnectionPool pool=ConnectionPool.getInstance();
        conexion=pool.getConnection();
        return conexion;
    }
    
    public void closeConnection(Connection connection) throws SQLException {
        connection.close();
    }

    public void setFoto(FotosDTO fotoDTO) {
        try {
            String query = "insert into FOTOS(TIPO,IDREF,URL) VALUES ("+fotoDTO.getTipo()+","+fotoDTO.getId()+",'"+fotoDTO.getDireccion()+"')";       
            System.out.println(query);
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            statement.executeUpdate(query);
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

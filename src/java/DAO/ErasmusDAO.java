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
public class ErasmusDAO {
    
    private Connection conexion;
    
    public void setErasmus(ErasmusDTO erasDTO) {
        try {
            String query = "insert into ERASMUS(NOMBREUSUARIO,NACIONALIDAD,IDFACULTAD) VALUES ('"+erasDTO.getNombreUsuario()+"','"+erasDTO.getNacionalidad()+"',"+erasDTO.getIdFacultad()+")";
                    
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

    public ArrayList<ErasmusDTO> getErasmusPorFacultad(int i) {
        ArrayList<ErasmusDTO> erasmus=new ArrayList<ErasmusDTO>();
         try {
            String query = "select * from ERASMUS where idfacultad="+i+"";
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                do{
                    String nombreusuario=resultado.getString("NOMBREUSUARIO");
                    String nacionalidad=resultado.getString("NACIONALIDAD");
                    int idFacultad=resultado.getInt("IDFACULTAD");
                    ErasmusDTO eras=new ErasmusDTO(nombreusuario,nacionalidad,idFacultad);
                    erasmus.add(eras);
                }while(resultado.next());   
            }
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         return erasmus;
    }

    
}

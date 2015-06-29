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
public class ComentarioDAO {
    private Connection conexion;
    
    
    
    public ArrayList<ComentarioDTO> getComentarios(String comen){
        ArrayList<ComentarioDTO> comentarios=new ArrayList<ComentarioDTO>();
        try {
            String query = "select * from COMENTARIO where TIPO='"+comen+"'";
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                do{
                    int id=resultado.getInt("IDCOMENTARIO");
                    String user=resultado.getString("USUARIO");
                    String email=resultado.getString("EMAIL");
                    String fecha=resultado.getString("FECHA");
                    String texto=resultado.getString("TEXTO");
                    String tipo=resultado.getString("TIPO");
                    ComentarioDTO com=new ComentarioDTO(texto,user,id,fecha,tipo,email);
                    comentarios.add(com);
                }while (resultado.next());
            }
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return comentarios;
    }
    
    public void guardarComentario(ComentarioDTO com){
        try {
            String query = "insert into COMENTARIO(USUARIO,FECHA,TEXTO,TIPO,EMAIL) VALUES ('"+com.getNombre()+"','"+com.getFecha()+"','"+com.getTexto()+"','"+com.getTipo()+"','"+com.getEmail()+"')";       
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

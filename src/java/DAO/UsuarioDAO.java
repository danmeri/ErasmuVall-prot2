/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author daniel
 */
public class UsuarioDAO {
    
    private Connection conexion;
    
    public void setUsuario(UsuarioDTO userDTO) {
        try {
            System.out.print("LLEGO A ESTA VAINA\n");
            System.out.println(userDTO.getNombreUsuario());
            System.out.println(userDTO.getEmail());
            System.out.println(userDTO.getNombre());
            System.out.println(userDTO.getNombre());
            String query = "insert into USUARIO(NOMBREUSUARIO,EMAIL,NOMBRE,APELLIDO,CONTRASEÑA,TIPO,CONFIRMADO) VALUES ('"+userDTO.getNombreUsuario()+"',"
                    + "'"+userDTO.getEmail()+"','"+userDTO.getNombre()+"','"+userDTO.getApellidos()+"','"+userDTO.getPasswd()+"',"+userDTO.getTipoUsuario()+",0)"; 
            System.out.print(query);
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            statement.executeUpdate(query);
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Boolean compruebaSiExisteNombreUsuario(String nombreUsuario){
        Boolean existe=false;
        try {
            String query = "select * from USUARIO where nombreusuario='"+nombreUsuario+"'";
            
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                existe=true;
            }
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return existe;
    }
    
    public UsuarioDTO getUsuario(String nombreUsuario,String passwd){
        UsuarioDTO user=null;
        try {
            String query = "select * from USUARIO where nombreusuario='"+nombreUsuario+"' and contraseña='"+passwd+"'";
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                
                    String nombreusuario=resultado.getString("NOMBREUSUARIO");
                    String email=resultado.getString("EMAIL");
                    String nombre=resultado.getString("NOMBRE");
                    String apellido=resultado.getString("APELLIDO");
                    String pass=resultado.getString("CONTRASEÑA");
                    int tipo=resultado.getInt("TIPO");
                    int confirm=resultado.getInt("CONFIRMADO");
                    boolean confirmado=false;
                    if (confirm==1)
                        confirmado=true;
                        
                    user=new UsuarioDTO(nombre,apellido,nombreusuario,email,pass,tipo,confirmado);
               
            }
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    public Connection getConnection() throws SQLException{
        ConnectionPool pool=ConnectionPool.getInstance();
        conexion=pool.getConnection();
        return conexion;
    }
    
    public void closeConnection(Connection connection) throws SQLException {
        connection.close();
    }

    public void confirmarUsuario(String idUsuario) {
        try {
            String query = "update USUARIO SET CONFIRMADO=1 where nombreusuario='"+idUsuario+"'";
            
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            statement.executeUpdate(query);
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

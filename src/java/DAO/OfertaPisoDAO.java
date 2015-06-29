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
public class OfertaPisoDAO {
    
    private Connection conexion;
 
    public OfertaPisoDTO getPiso(int id){
        OfertaPisoDTO oferta=null;
        try {
            String query = "select * from ANUNCIOPISO where IDANUNCIOPISO="+id+"";
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                int idPiso=resultado.getInt("IDANUNCIOPISO");
                String calle=resultado.getString("CALLE");
                int num=resultado.getInt("NUMERO");
                String piso=resultado.getString("PISO");
                int metros=resultado.getInt("METROS");
                int hab=resultado.getInt("HABITACIONES");
                String barrio=resultado.getString("BARRIO");
                int precio=resultado.getInt("PRECIO");
                String otros=resultado.getString("OTROSDATOS");
                String idAnunciante=resultado.getString("IDANUNCIANTE");
                String nombre=resultado.getString("NOMBRE");
                String apellidos=resultado.getString("APELLIDOS");
                String correo=resultado.getString("CORREO");
                String telefono=resultado.getString("TELEFONO");
                oferta=new OfertaPisoDTO(idPiso,calle,num,piso,metros,hab,barrio,precio,otros,idAnunciante,nombre,apellidos,correo,telefono);
                System.out.println(idPiso);
            }
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return oferta;
    }
    
     public ArrayList<OfertaPisoDTO> getPisos(){
         ArrayList<OfertaPisoDTO> ofertas=new ArrayList<OfertaPisoDTO>();
        try {
            String query = "select * from ANUNCIOPISO ORDER BY IDANUNCIOPISO";
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                do {
                    int idPiso = resultado.getInt("IDANUNCIOPISO");
                    String calle = resultado.getString("CALLE");
                    int num = resultado.getInt("NUMERO");
                    String piso = resultado.getString("PISO");
                    int metros = resultado.getInt("METROS");
                    int hab = resultado.getInt("HABITACIONES");
                    String barrio = resultado.getString("BARRIO");
                    int precio = resultado.getInt("PRECIO");
                    String otros = resultado.getString("OTROSDATOS");
                    String idAnunciante = resultado.getString("IDANUNCIANTE");
                    String nombre=resultado.getString("NOMBRE");
                String apellidos=resultado.getString("APELLIDOS");
                String correo=resultado.getString("CORREO");
                String telefono=resultado.getString("TELEFONO");
                    OfertaPisoDTO oferta = new OfertaPisoDTO(idPiso,calle,num,piso,metros,hab,barrio,precio,otros,idAnunciante,nombre,apellidos,correo,telefono);
                    ofertas.add(oferta);
                }while (resultado.next());
                
            }   
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ofertas;
    }
    
    
    
    public Connection getConnection() throws SQLException{
        ConnectionPool pool=ConnectionPool.getInstance();
        conexion=pool.getConnection();
        return conexion;
    }
    
    public void closeConnection(Connection connection) throws SQLException {
        connection.close();
    }

    public void setPiso(OfertaPisoDTO oferDTO,String anunciante) {

        try {
            
            String query = "insert into ANUNCIOPISO(CALLE,NUMERO,PISO,METROS,HABITACIONES,BARRIO,PRECIO,OTROSDATOS,IDANUNCIANTE,NOMBRE,APELLIDOS,CORREO,TELEFONO) VALUES ('"+oferDTO.getCalle()+"',"+oferDTO.getNum()+",'"+oferDTO.getPiso()+"',"+oferDTO.getMetros()+","+oferDTO.getNumHabitaciones()+",'"+oferDTO.getBarrio()+"',"+oferDTO.getPrecio()+",'"+oferDTO.getOtrosDatos()+"','"+anunciante+"','"+oferDTO.getNombre()+"','"+oferDTO.getApellidos()+"','"+oferDTO.getCorreo()+"','"+oferDTO.getTelefono()+"')";
            System.out.println(query);
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            statement.executeUpdate(query);
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public OfertaPisoDTO getUltimoPiso(){
         ArrayList<OfertaPisoDTO> ofertas=new ArrayList<OfertaPisoDTO>();
         OfertaPisoDTO ofpiso=new OfertaPisoDTO();
        try {
            String query = "select * from ANUNCIOPISO ORDER BY IDANUNCIOPISO";
            conexion = this.getConnection();
            Statement statement = conexion.createStatement();
            ResultSet resultado = statement.executeQuery(query);
            if (resultado.next()) {
                do {
                    int idPiso = resultado.getInt("IDANUNCIOPISO");
                    String calle = resultado.getString("CALLE");
                    int num = resultado.getInt("NUMERO");
                    String piso = resultado.getString("PISO");
                    int metros = resultado.getInt("METROS");
                    int hab = resultado.getInt("HABITACIONES");
                    String barrio = resultado.getString("BARRIO");
                    int precio = resultado.getInt("PRECIO");
                    String otros = resultado.getString("OTROSDATOS");
                    String idAnunciante = resultado.getString("IDANUNCIANTE");
                    String nombre=resultado.getString("NOMBRE");
                String apellidos=resultado.getString("APELLIDOS");
                String correo=resultado.getString("CORREO");
                String telefono=resultado.getString("TELEFONO");
                    OfertaPisoDTO oferta = new OfertaPisoDTO(idPiso,calle,num,piso,metros,hab,barrio,precio,otros,idAnunciante,nombre,apellidos,correo,telefono);
                    ofertas.add(oferta);
                }while (resultado.next());
                ofpiso=ofertas.get(ofertas.size()-1);
            }   
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ofpiso;
    }
    
}

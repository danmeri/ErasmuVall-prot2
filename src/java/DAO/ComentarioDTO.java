/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author jaime
 */
public class ComentarioDTO implements Serializable {
    private String texto;
    private String nombre;
    private int idComentario;
    private String fecha;
    private String tipo;
    private String email;
    
    public ComentarioDTO(){
        this.texto = "";
        this.nombre = "";
        this.idComentario = 0;
        this.fecha = "";
        this.tipo = "";
        this.email= "";
    }

    public ComentarioDTO(String texto, String nombre, int idComentario,String fecha,String tipo,String email) {
        this.texto = texto;
        this.nombre = nombre;
        this.idComentario = idComentario;
        this.fecha = fecha;
        this.tipo = tipo;
    }


    public ComentarioDTO(String texto, String nombre, String tipo,String email,String fecha) {
        this.texto = texto;
        this.nombre = nombre;
        this.tipo = tipo;
        this.email = email;
        this.fecha = fecha;
    }
    
    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getIdComentario() {
        return idComentario;
    }

    public void setIdComentario(int idComentario) {
        this.idComentario = idComentario;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setEmail(String em){
        this.email=em;
    }
    
}

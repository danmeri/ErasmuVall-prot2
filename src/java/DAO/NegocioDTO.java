/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.io.Serializable;

/**
 *
 * @author daniel
 */
public class NegocioDTO implements Serializable{
    private int id;
    private String nombreUsuario;
    private String nombreNegocio;
    private String direccion;
    
    public NegocioDTO(){
        this.id=0;
        this.nombreUsuario="";
        this.nombreNegocio="";
        this.direccion="";
    }

    public NegocioDTO(String nombreUsuario, String nombreNegocio, String direccion) {
        this.nombreUsuario = nombreUsuario;
        this.nombreNegocio = nombreNegocio;
        this.direccion = direccion;
    }

    public NegocioDTO(int id, String nombreUsuario, String nombreNegocio, String direccion) {
        this.id = id;
        this.nombreUsuario = nombreUsuario;
        this.nombreNegocio = nombreNegocio;
        this.direccion = direccion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getNombreNegocio() {
        return nombreNegocio;
    }

    public void setNombreNegocio(String nombreNegocio) {
        this.nombreNegocio = nombreNegocio;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    
}

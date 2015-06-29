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
public class AgenciaDTO implements Serializable{
    
    private int id;
    private String nombreUsuario;
    private String nombreAgencia;
    private String direccion;
    
    public AgenciaDTO(){
        this.id=0;
        this.nombreUsuario="";
        this.nombreAgencia="";
        this.direccion="";
    }

    public AgenciaDTO(int id, String nombreUsuario, String nombreAgencia, String direccion) {
        this.id = id;
        this.nombreUsuario = nombreUsuario;
        this.nombreAgencia = nombreAgencia;
        this.direccion = direccion;
    }

    public AgenciaDTO(String nombreUsuario, String nombreAgencia, String direccion) {
        this.nombreUsuario = nombreUsuario;
        this.nombreAgencia = nombreAgencia;
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

    public String getNombreAgencia() {
        return nombreAgencia;
    }

    public void setNombreAgencia(String nombreAgencia) {
        this.nombreAgencia = nombreAgencia;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

}

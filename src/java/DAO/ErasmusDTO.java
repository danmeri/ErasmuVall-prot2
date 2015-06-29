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
public class ErasmusDTO implements Serializable{
    private String nombreUsuario;
    private String nacionalidad;
    private int idFacultad;
    
    public ErasmusDTO(){
        this.nombreUsuario = "";
        this.nacionalidad = "";
        this.idFacultad = 0;
    }

    public ErasmusDTO(String nombreUsuario, String nacionalidad, int idFacultad) {
        this.nombreUsuario = nombreUsuario;
        this.nacionalidad = nacionalidad;
        this.idFacultad = idFacultad;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public int getIdFacultad() {
        return idFacultad;
    }

    public void setIdFacultad(int idFacultad) {
        this.idFacultad = idFacultad;
    }
    
    
}

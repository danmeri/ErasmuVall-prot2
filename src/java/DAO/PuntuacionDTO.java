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
public class PuntuacionDTO implements Serializable{
    
    private int idPuntuacion;
    private String tipo;
    private int puntuacion;
    private String usuario;
    
    public PuntuacionDTO(){
        this.idPuntuacion=0;
        this.tipo="";
        this.puntuacion=0;
        this.usuario="";
    }

    public PuntuacionDTO(int idPuntuacion, String tipo, int puntuacion, String usuario) {
        this.idPuntuacion = idPuntuacion;
        this.tipo = tipo;
        this.puntuacion = puntuacion;
        this.usuario = usuario;
    }

    public PuntuacionDTO(String tipo, int puntuacion, String usuario) {
        this.tipo = tipo;
        this.puntuacion = puntuacion;
        this.usuario = usuario;
    }

    public int getIdPuntuacion() {
        return idPuntuacion;
    }

    public void setIdPuntuacion(int idPuntuacion) {
        this.idPuntuacion = idPuntuacion;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getPuntuacion() {
        return puntuacion;
    }

    public void setPuntuacion(int puntuacion) {
        this.puntuacion = puntuacion;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    
}

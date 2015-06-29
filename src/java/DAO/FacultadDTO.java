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
public class FacultadDTO implements Serializable{
    private int id;
    private String nombre;
    private String direccion;
    private String web;
    
    public FacultadDTO(){
        this.id = 0;
        this.nombre = "";
        this.direccion = "";
        this.web = "";
    }

    public FacultadDTO(int id, String nombre, String direccion, String web) {
        this.id = id;
        this.nombre = nombre;
        this.direccion = direccion;
        this.web = web;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getWeb() {
        return web;
    }

    public void setWeb(String web) {
        this.web = web;
    }
    
    
}

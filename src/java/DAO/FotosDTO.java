/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.io.Serializable;

/**
 *
 * @author jaime
 */
public class FotosDTO implements Serializable{
    private String direccion;
    private int id;
    private int tipo;
    
    public FotosDTO(){
        this.direccion = "";
        this.id = 0;
        this.tipo = 0;
    }

    public FotosDTO(String direccion, int id, int tipo) {
        this.direccion = direccion;
        this.id = id;
        this.tipo = tipo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    
}

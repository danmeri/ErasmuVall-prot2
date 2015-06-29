/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author daniel
 */
public class OfertaPisoDTO implements Serializable  {
   
    private int id;
    private String calle;
    private int num;
    private String piso;
    private int metros;
    private int numHabitaciones;
    private String barrio;
    private int precio;	
    private String otrosDatos;
    private String idAnunciante;
    private String nombre;
    private String apellidos;
    private String correo;
    private String telefono;
	
    
    public OfertaPisoDTO(){
        this.id = 0;
        this.calle = "";
        this.num = 0;
        this.piso = "";
        this.metros = 0;
        this.numHabitaciones = 0;
        this.barrio = "";
        this.precio = 0;
        this.otrosDatos = "";
        this.idAnunciante = "";
        this.nombre="";
        this.apellidos="";
        this.correo="";
        this.telefono="";
    }

    public OfertaPisoDTO(int id, String calle, int num, String piso, int metros, int numHabitaciones, String barrio, int precio, String otrosDatos, String idAnunciante,String nombre,String apellidos,String correo,String telefono) {
        this.id = id;
        this.calle = calle;
        this.num = num;
        this.piso = piso;
        this.metros = metros;
        this.numHabitaciones = numHabitaciones;
        this.barrio = barrio;
        this.precio = precio;
        this.otrosDatos = otrosDatos;
        this.idAnunciante = idAnunciante;
        this.nombre=nombre;
        this.apellidos=apellidos;
        this.correo=correo;
        this.telefono=telefono;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getPiso() {
        return piso;
    }

    public void setPiso(String piso) {
        this.piso = piso;
    }

    public int getMetros() {
        return metros;
    }

    public void setMetros(int metros) {
        this.metros = metros;
    }

    public int getNumHabitaciones() {
        return numHabitaciones;
    }

    public void setNumHabitaciones(int numHabitaciones) {
        this.numHabitaciones = numHabitaciones;
    }

    public String getBarrio() {
        return barrio;
    }

    public void setBarrio(String barrio) {
        this.barrio = barrio;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getOtrosDatos() {
        return otrosDatos;
    }

    public void setOtrosDatos(String otrosDatos) {
        this.otrosDatos = otrosDatos;
    }

    public String getIdAnunciante() {
        return idAnunciante;
    }

    public void setIdAnunciante(String idAnunciante) {
        this.idAnunciante = idAnunciante;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    
    
    
}

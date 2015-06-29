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
public class UsuarioDTO implements Serializable {
    private String nombre;
    private String apellidos;
    private String nombreUsuario;
    private String email;
    private String passwd;
    private int tipoUsuario;
    private Boolean confirmado;

    public UsuarioDTO(){
        this.nombre = "";
        this.apellidos = "";
        this.nombreUsuario = "";
        this.email = "";
        this.passwd = "";
        this.tipoUsuario = -1;
        this.confirmado=false;
    }
    
    public UsuarioDTO(String nombre, String apellidos, String nombreUsuario, String email, String passwd, int tipoUsuario,Boolean confirmado) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.nombreUsuario = nombreUsuario;
        this.email = email;
        this.passwd = passwd;
        this.tipoUsuario = tipoUsuario;
        this.confirmado=confirmado;
    }

    public Boolean getConfirmado() {
        return confirmado;
    }

    public void setConfirmado(Boolean confirmado) {
        this.confirmado = confirmado;
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

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public int getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(int tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
    
    
    
}

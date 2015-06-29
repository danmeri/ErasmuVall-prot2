<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
         <%@page contentType="text/html"%> 
    <%@page pageEncoding="UTF-8"%> 
        <title>ErasmuVall-Registro</title>
        <link rel="stylesheet" href="estilos/css/estilo.css" type="text/css">
        <link rel="stylesheet" href="estilos/css/bootstrap.css" type="text/css">
        <script type="text/javascript">
            function validar(){
                var nom=document.getElementById("nombre").value;
                var apellidos=document.getElementById("apellidos").value;
                var user=document.getElementById("nombreUsuario").value;
                var clave=document.getElementById("pass").value;
                var clave2=document.getElementById("pass2").value;
                var cor=document.getElementById("dir").value;
                
                
                
                if (nom==""){
                    alert("RELLENE EL NOMBRE POR FAVOR");
                    return false;
                }else if (apellidos==""){
                    alert("RELLENE LOS APELLIDOS POR FAVOR");
                    return false;
                }else if (user==""){
                    alert("RELLENE EL NOMBRE DE USUARIO POR FAVOR");
                    return false;
                }else if (clave==""){
                    alert("RELLENE LA CONTRASEÑA POR FAVOR");
                    return false;
                }else if (clave2==""){
                    alert("DEBE INTRODUCIR LA CONTRASEÑA DOS VECES");
                    return false;
                }else if (clave!=clave2){
                    alert("LA CONTRASEÑA NO COINCIDE, REPITALA POR FAVOR");
                    return false;
                }else if (cor=""){
                    alert("RELLENE EL CORREO POR FAVOR");
                    return false;
                }
                
                // Si el script ha llegado a este punto, todas las condiciones
                // se han cumplido, por lo que se devuelve el valor true
                return true;
            }
        </script>
        <script src="estilos/js/bootstrap.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="estilos/js/menu.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="content-type" content="text/html; charset=utf-8"> 
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="estilos/js/bootstrap.min.js"></script>
        
    </head>
    <body>

        <%@include file="cabecera.jsp"%>
        <div class="wrapper" align="center">

            <%response.setContentType("text/html;charset=UTF-8");%>
            <div class="centroSinLinea">
                <h2>Regístrate</h2>
                <hr>
                
                <form name="datos" id="registro" action="Controlador" onsubmit="return validar()" method="post" >
                    Nombre: <input type="text" name="nombre" id="nombre">
                    Apellidos: <input type="text" name="apellidos" id="apellidos" > 
                    Nombre usuario: <input type="text" name="user" id="nombreUsuario" >
                    Contraseña: <input type="password" name="passwd" id="pass" >
                    Repita la contraseña: <input type="password" name="passwd2" id="pass2" >
                    Correo Electronico: <input type="text" name="direccion" id="dir" ><br>
                    
                    <input type="hidden" name="parte" value="usuario">
                    ¿Perfil público?: <input type="checkbox" id="publico" checked ><br>
                    Tipo usuario: <select name="tipo">
                        <option selected>Erasmus
                        <option>Gerente negocio ocio
                        <option>Agencia Viajes
                        <option>Anunciante
                    </select><br><br>
                    <div class="botCentrados">
                        <input class="submit" type="reset"  value="Limpiar">
                        <input class="submit" type="submit" name="accion" value="Siguiente">
                    </div>
                </form>
            </div>


        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


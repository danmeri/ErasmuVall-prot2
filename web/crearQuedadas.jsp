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
        <title>ErasmuVall-Eventos</title>
        <link rel="stylesheet" href="estilos/css/estilo.css" type="text/css">
        <link rel="stylesheet" href="estilos/css/bootstrap.css" type="text/css">
        <script src="estilos/js/bootstrap.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="estilos/js/menu.js"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="estilos/js/bootstrap.min.js"></script>
    </head>
    <body>

        <%@include file="cabecera.jsp"%>
        <div class="wrapper" align="center">
            

            <div class="laterali">
                <div class="cajalateral">
                     <%@include file="menuIzqEventos.jsp"%>
                </div>
            </div>
            <div class="laterald">
            </div>
            <div class="centro">
                <h2>Crear Quedada</h2>
                <hr>
                <form class="formIzq">
                    <h3>Datos</h3>
                    Nombre: <input type="text" id="Calle" ><br>
                    Lugar:<br> <input type="text" class="textoPeq"><br>
                    Hora:<br> <input type="text" class="textoPeq"><br>
                    ¿Pública?<input type="checkbox" class="textoPeq"><br><br>
                    Otros Datos:<br>
                    <textarea rows="10" cols="20"></textarea><br><br>
                    
                    Adjuntar Fotos: <input type="file" name="fotos"><br>
                
                    <div class="botCentrados">
                        <input type="submit" class="submit" value="Limpiar">
                        <input type="submit" class="submit" value="Enviar">
                    </div>               
                                   
                </form>
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


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
        <title>ErasmuVall-OfertarPiso</title>
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
                    <h2>Quedada Publica Fiesta Champanada</h2>
                    <hr>
                    <h4>Datos:</h4>
                        Nombre: Champanada<br>
                        Lugar: ETSI Industriales<br>
                        Metros: 8:00<br>
                    <br>
                    <h4>Otros Datos</h4><br>
                        Venir a pasarlo bien y echar unas cerves.
                
                    <h2>Fotos</h2>
                    <hr>
                    <img src="http://cabeceras.eldiariomontanes.es/imagenes-municipios/galerias/3620/champanada-365.jpg" width="220" height="200" alt="fotoPiso1">

            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>

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
                <h2>Viaje a las MÃ©dulas</h2>
                DÃA (29/04/2015)
                <div class="datosFiesta">
                        <h4>Datos Viaje:</h4><hr>
                        Lugar de salida: Plaza EspaÃ±a<br>
                        Fecha: 29/04/2015<br>
                        Hora de salida: 10:00<br><br>
                        Precio: 20â¬ (incluye bus)
                        <h4>Mas datos:</h4><hr>
                        Llevar calzado cÃ³modo<br>
                        Llevar bocadillos y bebidas<br><br>
                        <h4>Como llegar al lugar de salida</h4>
                        <div class="mapa">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.312207942582!2d-4.725384299999972!3d41.648996000000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712b37fdb3e97%3A0x4f89b5a28c8880a2!2sPlaza+de+Espa%C3%B1a%2C+Valladolid!5e0!3m2!1ses!2ses!4v1429088886262" width="600" height="450" frameborder="0" style="border:0"></iframe>
                        </div>
                </div>        
                
                
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


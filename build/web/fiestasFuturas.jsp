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
                <h2>Fiesta Abril en LA ANTIGUA CERVECERIA</h2>
                SE CELEBRA EL (29/04/2015)
                <div class="datosFiesta">
                        <h4>Datos Fiesta:</h4><hr>
                        Lugar: Bar Antigua Cerveceria<br>
                        Fecha: 29/04/2015<br>
                        Hora: 1:00<br><br>
                        <h4>Mas datos:</h4><hr>
                        Regalos para todos los invitados<br>
                        Entrada 10 Euros<br><br>
                        <h4>Como llegar</h4>
                        <div class="mapa">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.083216624267!2d-4.722855999999956!3d41.653943999999974!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712adff454fbd%3A0xde30f87c9091838e!2sIglesia+de+Santa+Mar%C3%ADa+de+la+Antigua!5e0!3m2!1ses!2ses!4v1429086800750" width="600" height="450" frameborder="0" style="border:0">
                            </iframe>
                        </div>
                </div>        
                
                
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


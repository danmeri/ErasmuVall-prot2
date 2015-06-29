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
        <title>ErasmuVall-VallSur</title>
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
                    <%@include file="menuIzqQueHacer.jsp"%>
                </div>
            </div>
            <div class="laterald">
            </div>
            <div class="centro">
                <h1>VallSur</h1>
                <p class="textofacultad"><img class="fotofacultad" src="https://xtranasproducciones.files.wordpress.com/2012/01/video-mapping-vallsur-xtranas-2.jpg" width="450" height="300" alt="Escuela Ingenierias Industriales">
                    HORARIOS DE APERTURA DEL CENTRO COMERCIAL<br>
Zona Comercial<br>
De lunes a sábado	:	10:00 h a 22:00 h<br>
Hipermercado<br>
De lunes a sábado	:	09:00 h a 22:00 h<br>
Restaurantes<br>
De lunes a sábado	:	10:00 h a 02:00 h<br>
domingo	:	12:00 h a 02:00 h<br>
Festivos y Domingos de Apertura 2015:<br>
4 de Enero
11 de Enero
15 de Marzo
2 de Abril
5 de Abril 
3 de Mayo
28 de Junio
5 de Julio
6 de Septiembre
11 de Octubre
18 de Octubre
2 de Noviembre
6 de Diciembre
13 de Diciembre
20 de Diciembre
27 de Diciembre
Días de cierre del centro en 2015
1 de Enero
6 de Enero
3 de Abril
23 de Abril
1 de Mayo
13 de Mayo
15 de Agosto
8 de Septiembre
12 de Octubre
7 de Diciembre
8 de Diciembre
25 de Diciembre
                </p>

                <hr>
                
                <h2>Comparte tus fotos en este lugar</h2>
                
                <form>
                    <input class="submit" type="submit" value="Subir Foto">
                </form>
                
                <h4>Subidas por otros usuarios</h4>
                <div class="fotosUsuarios">
                    <img src="http://esphoto500x500.mnstatic.com/centro-comercial-vallsur_2617871.jpg" width="220" height="200" alt="fotoUsuario1">
                    <img src="http://www.vallsur.com/W/cms_sites/SITE_13236/images13236/foto_servicios_vallsur-01.jpg" width="220" height="200" alt="fotoUsuario2">
                    <img src="http://www.filigranaurbana.com/wp-content/uploads/2012/04/Vallsur-Area-Descanso-Pasillo-Detalle-Mobiliario.jpg" width="220" height="200" alt="fotoUsuario3">
                    <img src="https://atmosphereinteriordesignlab.files.wordpress.com/2012/11/vallsur_nocturna_final_v6-c21.jpg" width="220" height="200" alt="fotoUsuario4">
                </div>
                <hr>
                
                <h2>Puntua este lugar</h2>
                
                <div class="ec-stars-wrapper">
                    <a href="#" data-value="1" title="Votar con 1 estrellas">&#9733;</a>
                    <a href="#" data-value="2" title="Votar con 2 estrellas">&#9733;</a>
                    <a href="#" data-value="3" title="Votar con 3 estrellas">&#9733;</a>
                    <a href="#" data-value="4" title="Votar con 4 estrellas">&#9733;</a>
                    <a href="#" data-value="5" title="Votar con 5 estrellas">&#9733;</a>
                </div>
                
                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11929.969972832338!2d-4.750047!3d41.623485!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x48d4fc0b15a54778!2sCentro+Comercial+Vallsur!5e0!3m2!1ses!2ses!4v1429011619353" width="600" height="450" frameborder="0" style="border:0">
                    </iframe>
                </div>
                
                <hr>
                <%@include file="comentarios.jsp"%>
            </div>
        </div>
        
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


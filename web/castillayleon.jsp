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
        <title>ErasmuVall-Castilla y Leon</title>
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
                    <%@include file="menuIzqAlojamiento.jsp"%>
                </div>
            </div>
            <div class="laterald">
            </div>
            <div class="centro">
                <h1>Colegio Mayor de Castilla y León</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://www.cmcl.es/images/entrada.jpg" width="350" height="200" alt="Castilla y Leon">
                   El Colegio Mayor Castilla-León está ubicado en una de las mejores zonas de la ciudad.

Residencia y patios forman un conjunto de 12.000 m2; construidos y 40.000 metros de instalaciones deportivas.
Ofrece servicios como comedor diario, incluido festivos, la limpieza de la habitación, una conexión gratuita a Internet en habitación, teléfono en habitación
,prensa diaria y una estupenda lavandería.</p>

                <hr>
                
                <h2>Conoce Estudiantes de Esta Residencia</h2>
                <br>
                <form>
                    <input class="submit2" type="submit" value="Buscar Personas">
                    <input class="submit2" type="submit" value="Yo vivo aqui">
                </form>
                
                <hr>
                
                <h2>Sitio Web</h2>
                <a href="http://www.cmcl.es/entrada.html">Colegio Castilla y León</a>

                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa">
                   <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11922.741748594373!2d-4.728638!3d41.662538!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6e297772ac1ae08e!2sColegio+Mayor+Castilla-leon+SL!5e0!3m2!1ses!2ses!4v1431441773650" width="600" height="450" frameborder="0" style="border:0"></iframe>                </div>
                
                <hr>
                
                <%@include file="comentarios.jsp"%>
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>

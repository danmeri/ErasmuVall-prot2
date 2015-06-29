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
        <title>ErasmuVall-AlfonsoVIII</title>
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
                <h1>Residencia Alfonso VIII</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://alfonso8.uva.es/uploads/imagenes/DSC_0116small.jpg" width="350" height="200" alt="Residencia Alfono VIII">
                   La Residencia Universitaria Alfonso VIII de Valladolid es una residencia pública, perteneciente a la Universidad de Valladolid, y mixta, con capacidad para 250 personas. 
                   A través de ella se proporciona alojamiento a estudiantes de los distintos estudios de grado y postgrado ofrecidos por la propia Universidad.
                   Además de ofrecer unas modernas instalaciones, la Residencia cuenta con una notable actividad extra académica gracias a Comisiones de actividades formadas por los propios Residentes.
                </p>

                <hr>
                
                <h2>Conoce Estudiantes de Esta Residencia</h2>
                <br>
                <form>
                    <input class="submit2" type="submit" value="Buscar Personas">
                    <input class="submit2" type="submit" value="Yo vivo aqui">
                </form>
                
                <hr>
                
                <h2>Sitio Web</h2>
                <a href="http://alfonso8.uva.es/">Residencia Alfonso VIII</a>

                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.015505352889!2d-4.715838!3d41.655407!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712af7be87b43%3A0xcb9189c668f61685!2sResidencia+Universitaria+Alfonso+VIII!5e0!3m2!1ses!2ses!4v1431688059343" width="600" height="450" frameborder="0" style="border:0">
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

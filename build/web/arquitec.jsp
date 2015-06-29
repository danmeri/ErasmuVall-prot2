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
        <title>ErasmuVall-Arquitectura</title>
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
                    <%@include file="menuIzqFacultades.jsp"%>
                </div>
            </div>
            <div class="laterald">
            </div>
            <div class="centro">
                <div>
                <h1>Escuela Tecnica Superior De Arquitectura</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://www.ventilacion.uva.es/images/ETSAV1.jpg" width="350" height="200" alt="Escuela Ingenierias Industriales">
                    La Escuela Técnica Superior de Arquitectura de Valladolid (cuyo acrónimo esETSAV) es la escuela de 
                    arquitectura de la Universidad de Valladolid (España). 
                    Prepara y expide el título de Arquitecto, así como doctorados y diversos masters de postgrado. 
                    Esta escuela se creó en 1968, siendo la única escuela de arquitectura pública de Castilla y León. 
                    El centro no está situado en el Campus de Valladolid, sino en la Avenida de Salamanca. 
                    El director es Jesús Feijóo Muñoz.<br>
                    El edificio está dotado de un fuerte carácter representativo, abandonando las formas orgánicas de otros edificios 
                    vallisoletanos de la época. Se marca un eje de simetría en la fachada, que organiza los contundentes volúmenes del conjunto.
                    La ampliación proyectada también por Fernández Alba en los años 1980, se idea ya para su función, sin la limitación espacial 
                    que tenía el proyecto inicial. Se buscaba una mayor libertad de organización con una planta centralizada.
                </p>
                </div>
                <hr>
                
                <%@include file="conoce.jsp"%>
                
                <hr>
                
                
                <h2>Sitio Web</h2>
                <a href="http://www.arq.uva.es">Escuela Tecnica Superior De Arquitectura</a>
                <hr>
                
                <h2>Localizacion</h2>   
                <div class="mapa"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.2625055723274!2d-4.7403289999999885!3d41.65007000000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd476d3f204fcbcf%3A0xee8f8ca4bfc9e4eb!2sEscuela+T%C3%A9cnica+Superior+De+Arquitectura!5e0!3m2!1ses!2ses!4v1428877381768" width="600" height="450" frameborder="0" style="border:0"></iframe></div>
                
                <hr>
                <%@include file="comentarios.jsp"%>
            </div>

        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>

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
        <title>ErasmuVall-PlazaMayor</title>
        <link rel="stylesheet" href="estilos/css/estilo.css" type="text/css">
        <link rel="stylesheet" href="estilos/css/bootstrap.css" type="text/css">
        <script src="estilos/js/bootstrap.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="estilos/js/menu.js"></script>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
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
                    <%@include file="menuIzqConoce.jsp"%>
                </div>
            </div>
            <div class="laterald">
            </div>
            <div class="centro">
                <h1>Plaza Mayor</h1>
                <p class="textofacultad"><img class="fotofacultad" src="imagenes/valladolid/Plaza_Mayor_Valladolid.jpg" width="450" height="300" alt="Plaza Mayor">
                    La Plaza Mayor de Valladolid está situada en el centro de la ciudad de Valladolid a pocos metros de otros monumentos significativos como la Iglesia de San Benito el Real o la Iglesia de Santa María La Antigua.
                     
                    Presidida por el monumento al repoblador de la ciudad, el Conde Ansúrez, la Plaza Mayor constituye el principal espacio de encuentro de los vallisoletanos.
                    La Plaza Mayor de Valladolid se encuentra en la zona centro de la ciudad, rodeada por las plazas de la Rinconada y del Corrillo y de las calles de la Cebadería y del Peso al norte, de Alarcón, de Guiñones y del duque de la Victoria al este, de la Constitución y Héroes del Alcázar de Toledo al sur y las calles de Correos y de la Reina al oeste.
    
                    Nacen de la Plaza Mayor diez calles y callejones. Desde su lado norte nacen las calles de Viana, de Jesús y de la Manzana; hacia el este comienzan las calles de la Lencería y de Ferrari. Hacia el sur se inicia una de las principales vías comerciales de Valladolid: la calle de Santiago. Finalmente, desde el lado oeste de la Plaza nacen las calles de la Pasión y de Calixto Fernández de la Torre. Además desde la Plaza Mayor se puede acceder a dos callejones: los de Ricote y Torneros.
                    La plaza, una de las más grandes de España, es de planta rectangular, con unas dimensiones de 400 pies de largo por 266 de ancho, de proporción sesquilátera (3x2). Está completamente porticada y sus soportales descansan sobre columnas o pilares cuadrados de granito, siendo de tipo abierto, es decir, las calles desembocan en ella sin ningún obstáculo ni pantalla. Está rodeada por pequeñas calles gremiales que recuerdan el pasado mercantil del entorno.

                </p>

                <hr>
                
                 <h2>Comparte tus fotos en este lugar</h2>
                
                <form>
                    <input class="submit" type="submit" value="Subir Foto">
                </form>
                
                <h4>Subidas por otros usuarios</h4>
                <div class="fotosUsuarios">
                    </div>
                <hr>
                
                <%@include file="puntuar.jsp"%>
                
                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.1711504391074!2d-4.728007!3d41.652044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd476d4d3a756901%3A0x16c054778a1936d!2sAparcamiento+Plaza+Mayor!5e0!3m2!1ses!2ses!4v1432133485087" width="600" height="450" frameborder="0" style="border:0"></iframe>
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

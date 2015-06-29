<%-- 
    Document   : museoCiencia
    Created on : 17-may-2015, 12:12:43
    Author     : adry
--%>

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
        <title>ErasmuVall-MuseoCiencia</title>
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
                    <%@include file="menuIzqConoce.jsp"%>
                </div>
            </div>
            <div class="laterald">
            </div>
            <div class="centro">
                <h1>Museo de la ciencia de Valladolid</h1>
                <p class="textofacultad"><img class="fotofacultad" src="imagenes/valladolid/museociencia.jpg" width="450" height="300" alt="Museo Ciencia">
                    El Museo de la Ciencia de Valladolid, situado al suroeste de la ciudad de Valladolid, comunidad autónoma de Castilla y León, (España), entre la margen derecha del río Pisuerga y la avenida de Salamanca, abrió sus puertas en mayo de 2003. 
                    Es un museo de titularidad municipal, levantado sobre los terrenos del pago de Vistaverde, donde se encontraba la antigua fábrica de harinas «El Palero», un complejo industrial 
                    que fue respetado parcialmente para albergar la exposición permanente del museo.
                    Los arquitectos Rafael Moneo y Enrique de Teresa fueron los responsables de la realización del proyecto,
                    con la participación de Francisco Romero y Juan José Echevarría. 
                    Su trabajo dio lugar a singular complejo arquitectónico referente de la divulgación científica en Castilla y León y uno de los símbolos de modernidad arquitectónica de Valladolid ya que se perseguía un «efecto Guggenheim» en la ciudad.
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
                   <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2981.846881795434!2d-4.745864!3d41.637440999999995!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd476d3f162901cd%3A0xb09e2ab2b794076a!2sMuseo+de+la+Ciencia+de+Valladolid!5e0!3m2!1ses!2ses!4v1432046276411" width="600" height="450" frameborder="0" style="border:0"></iframe>                    </iframe>
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


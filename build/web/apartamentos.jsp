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
        <title>ErasmuVall-Apartamentos universitarios</title>
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
                <h1>Apartamentos Universitarios</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://photos.wikimapia.org/p/00/01/27/86/40_big.jpg" width="350" height="200" alt="Apartamentos universitarios">
                   Los apartamentos Cardenal Mendoza, inaugurados en septiembre de 1996, son el resultado de la colaboración entre El Ministerio de Asuntos Sociales, 
                   La Junta de Castilla y León, el Ayuntamiento de Valladolid y la Universidad de Valladolid. 
                   El complejo consta de 201 apartamentos con 2 habitaciones individuales cada uno de ellos, baño, salón y cocina. Además los apartamentos cuentan con 
                   servicio de conserjería 24 horas, garaje, restaurante ? comedor, sala de estudio, salón de ocio, además de otros servicios a disposición del residente.
                   De instalaciones tiene una sala de estudio, otra sala de TV con vídeo y DVD,una lavandería y plancha, garaje para guardar tanto coches como motocicletas y bicicletas.
                   Son apartamentos con dos dormitorios por habitación, grandes y luminosos. Posee teléfono y comedor.
                </p>

                <hr>
                
                <h2>Conoce Estudiantes de estos apartamentos</h2>
                <br>
                <form>
                    <input class="submit2" type="submit" value="Buscar Personas">
                    <input class="submit2" type="submit" value="Yo vivo aqui">
                </form>
                
                <hr>
                
                <h2>Sitio Web</h2>
                <a href="https://funge.uva.es/residencias-universitarias/apartamentos-cardenal-mendoza/">Apartamentos Universitarios Cardenal Mendoza</a>

                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2980.945153921372!2d-4.714055!3d41.656926999999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712af7be87b43%3A0xc8f130f23a90c932!2sUniversidad+de+Valladolid!5e0!3m2!1ses!2ses!4v1431686257928" width="600" height="450" frameborder="0" style="border:0">
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

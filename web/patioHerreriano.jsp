<%-- 
    Document   : patioHerreriano
    Created on : 17-may-2015, 12:50:38
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
        <title>ErasmuVall-PatioHerreriano</title>
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
                <h1>Patio Herreriano</h1>
                <p class="textofacultad"><img class="fotofacultad" src="imagenes/valladolid/museo_patio_herreriano.jpg" width="450" height="300" alt="Patio Herreriano">
                    El Museo Patio Herreriano de Arte Contemporáneo Español es un centro de arte de la ciudad de Valladolid (comunidad autónoma de Castilla y León, España) que expone una importante suma de obras de estilo contemporáneo español, procedentes de varias colecciones privadas y que cubren el periodo entre 1918 y la actualidad.
                    Las obras proceden de colecciones privadas, pertenecientes a varias empresas y englobadas bajo el nombre de Colección de Arte Contemporáneo. Se distribuyen en once salas de exposición, cada una con un cometido. La colección consta de 903 obras con las que se presenta una visión del arte contemporáneo español desde el año 1918 hasta nuestros días.
                    
                    En esta muestra destaca la aportación del Fondo de Ángel Ferrant, compuesto por 34 esculturas y 406 dibujos y con un legado de más de 35.000 documentos. También alberga una representación de artistas como Joan Miró, Salvador Dalí, Óscar Domínguez, Joaquín Torres García, Leandre Cristòfol, José Guerrero,1 Manolo Millares, Pablo Serrano, Jorge Oteiza, Eduardo Chillida, Adolfo Schlosser, Eusebio Sempere, Antonio Saura, Antoni Tàpies, Equipo Crónica, Manolo Valdés, Eduardo Arroyo, Bonifacio Alfonso, Chema Cobo, Guillermo Pérez Villalta, Alberto García Alix o Esteban Vicente.
    
                    El museo surgió gracias al citado fondo artístico, de origen privado, y al apoyo del Ayuntamiento de Valladolid; fue inaugurado el 4 de junio de 2002. Pocos años después, en 2005, acogió la donación del archivo de la Galería Buades de Madrid.2 Así, cuenta con un Centro de Documentación y Biblioteca, un espacio destinado para diferentes actos y un restaurante ubicado junto a la plaza de acceso, que está presidida por un pequeño jardín y dos fuentes de agua potable.
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
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.049754632592!2d-4.730827999999978!3d41.65466700000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd476d527a5e0f53%3A0xb0236b90ebf9198d!2sMuseo+Patio+Herreriano+de+Arte+Contempor%C3%A1neo+Espa%C3%B1ol!5e0!3m2!1ses!2ses!4v1432133576320" width="600" height="450" frameborder="0" style="border:0"></iframe>
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
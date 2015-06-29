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
        <title>ErasmuVall-Industriales</title>
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
        <%request.setAttribute("pagina","/eii.jsp");%>

            <div class="laterali">
                <div class="cajalateral">
                    <%@include file="menuIzqFacultades.jsp"%>
                </div>
            </div>
            <div class="laterald">
            </div>
            <div class="centro">
                <h1>Escuela Ingenierias Industriales</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://photos.wikimapia.org/p/00/01/27/85/92_big.jpg" width="350" height="200" alt="Escuela Ingenierias Industriales">
                    La Escuela de Ingenierías Industriales (EII) de la Universidad de Valladolid es el resultado de la unificación de la antigua Escuela Técnica Superior de Ingenieros Industriales (ETSII), la antigua Escuela Universitaria Politécnica (EUP) y las instalaciones de los Departamentos de Ingeniería Química y Tecnología del Medio Ambiente e Ingeniería de Sistemas y Automática de la Facultad de Ciencias (en la actualidad edificio mixto FFCC y EII), todos ellos pertenecientes a la Universidad de Valladolid.

                    El Centro de Ingenierías Industriales (EII) fue autorizado por la Consejería de Educación de la Junta de Castilla y León (acuerdo 11/2009, de 23 de Enero 2009, BOCyL nº18, pág. 2356, de 28 de enero de 2009). Junto a la creación de la Escuela de Ingenierías Industriales, el acuerdo autoriza la supresión de la Escuela Técnica Superior de Ingenieros Industriales (ETSII) y de la Escuela Universitaria Politécnica (EUP).

                    El nuevo Centro de Ingenierías Industriales (EII) de la UVa ha entrado en funcionamiento en el curso 2009-2010 y tiene competencias para la organización de las enseñanzas oficiales conducentes a la obtención de los títulos oficiales en el campo de la Ingeniería Industrial.
                </p>

                <hr>
                
                <%@include file="conoce.jsp"%>
                
                <hr>
                
                <h2>Sitio Web</h2>
                <a href="http://www.eii.uva.es/escuela/index.php">Escuela Ingenierias Industriales</a>

                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2980.9371929693566!2d-4.710268!3d41.657098999999995!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712a6ad0de665%3A0x4fe005cdaa2aedbb!2sEscuela+de+Ingenier%C3%ADas+Industriales!5e0!3m2!1ses!2ses!4v1428859221958" width="600" height="450" frameborder="0" style="border:0"></iframe></div>
                
                <hr>
                
                
                <%@include file="comentarios.jsp"%>
            </div>

        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>

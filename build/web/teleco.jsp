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
        <title>ErasmuVall-Teleco</title>
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
                <h1>Escuela Tecnica Superior De Telecomunicación</h1>
                <p class="textofacultad"><img class="fotofacultad" src="https://www.tel.uva.es/images/portada_etsit_recta.jpg" width="350" height="200" alt="Escuela Ingenierias Industriales">
                    La Escuela Técnica Superior de Ingenieros de Telecomunicación de la Universidad de Valladolid, se creó el 27 
                    de septiembre 1991. Tiene como misión básica la formación científica y técnica y la preparación para el ejercicio
                    profesional de ingenieros que han de realizar las funciones que la sociedad actual demanda. Además está 
                    comprometida con la creación y desarrollo de la ciencia y de la técnica mediante la investigación y el estudio, 
                    colaborando con las empresas en el desarrollo tecnológico del país y de la Comunidad de Castilla y León, 
                    contribuyendo de esta forma a la consolidación de Sociedad de la Información.

                    La Escuela se encarga asimismo, de la gestión administrativa y de la organización de las enseñanzas para la 
                    obtención de títulos de Grado y Máster en el ámbito de la Ingeniería de Telecomunicación, coordinando la docencia
                    que imparten los Departamentos de acuerdo con los Planes de Estudio y los objetivos de las titulaciones. 
                    Cuenta para ello con unos recursos humanos que, junto con unas instalaciones nuevas y actualizadas, 
                    permiten cumplir sus objetivos al nivel de las Escuelas más prestigiosas del país.

                    La ETSIT, cumpliendo su principio fundacional y a pesar de su juventud, ha estado integrada en todo momento en la 
                    Universidad de Valladolid y en la sociedad Castellano-Leonesa, contribuyendo a su desarrollo como lo demuestra su 
                    pertenencia a foros de investigación, desarrollo y potenciación de las telecomunicaciones y de la electrónica, 
                    tanto nacionales como internacionales, implicándose en particular en la potenciación del mundo empresarial regional, 
                    estando presente allí donde las necesidades de estos sectores lo demandan.
                </p>
                </div>
                <hr>
                
                <%@include file="conoce.jsp"%>
                
                <hr>
                
                <h2>Sitio Web</h2>
                <a href="https://www.tel.uva.es">Escuela Tecnica Superior De Telecomunicación</a>
                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2980.675438569179!2d-4.705442999999983!3d41.66275400000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd47129fbb58a2dd%3A0xa91659b5c99b4932!2sETS+Ingenieros+de+Telecomunicaci%C3%B3n!5e0!3m2!1ses!2ses!4v1428926437684" width="600" height="450" frameborder="0" style="border:0"></iframe></div>
                
                <hr>
                
                <%@include file="comentarios.jsp"%>
            </div>

        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>

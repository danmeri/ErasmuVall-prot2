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
        <title>ErasmuVall-Informatica</title>
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
                <h1>Escuela Tecnica Superior Ingenieria Informatica</h1>
                <p class="textofacultad"><img class="fotofacultad" src="imagenes/facultades/etsii.jpg" width="350" height="200" alt="Escuela Ingenierias Industriales">
                    La Escuela Técnica Superior de Ingeniería Informática es el centro más joven de la Universidad de Valladolid 
                    en el campus de Valladolid (se integraron varios centros del Campus de Segovia en el curso siguiente). 
                    Se encuentra situada dentro del Campus Miguel Delibes. Empezando su actividad docente en el curso 2000/2001, 
                    integró los estudios de Ingeniero en Informática que se impartían en la Facultad de Ciencias y los de Ingeniero 
                    Técnico en Informática de Gestión e Ingeniero Técnico en Informática de Sistemas que se impartían en la Escuela 
                    Univesitaria Politécnica.
                </p>

                <hr>
                
                <%@include file="conoce.jsp"%>
                
                <hr>
                
                <h2>Sitio Web</h2>
                <a href="https://www.inf.uva.es">Escuela Tecnica Superior Ingenieria Informática</a>

                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2980.6771512918085!2d-4.705367000000039!3d41.66271700000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd47129fbb4a727b%3A0xaab6e3ec16643ed1!2sUniversidad+De+Valladolid+-+Escuela+de+Ingenier%C3%ADa+Inform%C3%A1tica!5e0!3m2!1ses!2ses!4v1428924144875" width="600" height="450" frameborder="0" style="border:0"></iframe></div>
                
                <hr>
                
                <%@include file="comentarios.jsp"%>
            </div>

        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


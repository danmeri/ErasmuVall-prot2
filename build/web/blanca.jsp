Ã¯Â»Â¿<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
         <%@page contentType="text/html"%> 
    <%@page pageEncoding="UTF-8"%> 
        <title>ErasmuVall-Blanca de Castilla</title>
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
                <h1>Residencia Blanca de Castilla</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://www.blancadecastilla.com/img/galeria/Rua%20Blanca%20Castilla%20(2)reducida.jpg" width="350" height="200" alt="Residencia Blanca de Castilla">
                   Esta residencia es hogar de universitarios y casa de estudio. pretende ser un centro de convivencia armÃÂ³nica, que permita a los residentes hallar el ambiente cercano y acogedor necesario para lograr el rendimiento acadÃÂ©mico esperado. 
                   Durante el curso, el residente cambia su domicilio familiar por nuestro centro, aquÃÂ­ aprenderÃÂ¡ a convivir y a responsabilizarse de sus obligaciones y actividades diarias.
                   El ÃÂ©xito acadÃÂ©mico es nuestro objetivo inmediato, pero el paso por nuestra residencia ha de  iniciarles  en el aprendizaje de normas de convivencia tolerante y respetuosa con sus compaÃÂ±eros y amigos, a fin de que el tiempo que aquÃÂ­ permanezcan, sea para todos una experiencia positiva y enriquecedora a nivel personal y formativo.
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
                <a href="http://www.blancadecastilla.com/">Residencia Blanca de Castilla</a>

                <hr>
                
                <h2>LocalizaciÃ³n</h2>   
                <div class="mapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2980.8837335550134!2d-4.722954!3d41.658254!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712ac04b328e5%3A0x2d6922aeed9d905b!2sResidencia+Universitaria+Blanca+De+Castilla!5e0!3m2!1ses!2ses!4v1431688563963" width="600" height="450" frameborder="0" style="border:0">
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

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
        <title>ErasmuVall-Menendez</title>
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
                <h1>Colegio Mayor Menendez Pelayo</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://www.mommybye.com/upload/upload/residence_pics/422-337631dc389805f4c4e7df24b86a7e6e.jpg" width="350" height="200" alt="Escuela Ingenierias Industriales">
                   El Colegio Mayor MenÃ©ndez Pelayo consta de 116 plazas. En su uso habitual como residencia de universitarios 
                   es mixta. El Colegio Mayor no es un centro meramente residencial, sino que aspira a proporcionar a sus residentes
                   una formaciÃ³n humana y proyectar su actividad al servicio de la Comunidad Universitaria y de la ciudad de 
                   Valladolid. Su ubicaciÃ³n es cÃ©ntrica y cercana a la Universidad. El Colegio ofrece un gran nÃºmero de servicios 
                   y actividades para apoyar la formaciÃ³n de sus integrantes. El Colegio ofrece alojamiento y manutenciÃ³n durante 
                   todos los dÃ­as del curso ordinario, exceptuando los perÃ­odos vacacionales de Navidad y Semana Santa. La 
                   alimentaciÃ³n comprende desayuno, comida y cena (de elaboraciÃ³n propia) los siete dÃ­as de la semana. 
                   TambiÃ©n se ofrece como servicio opcional el lavado de ropa con periodicidad semanal.
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
                <a href="http://www.menendezpelayo.org">Colegio Mayor Menendez Pelayo</a>

                <hr>
                
                <h2>Localizacion</h2>   
                <div class="mapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.1290814598638!2d-4.720881000000009!3d41.652953000000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712b1c0964875%3A0x90fbe95fb5c1eba7!2sColegio+Mayor+Men%C3%A9ndez+Pelayo+Jesu%C3%ADtas!5e0!3m2!1ses!2ses!4v1429042272611" width="600" height="450" frameborder="0" style="border:0">
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

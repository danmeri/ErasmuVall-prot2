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
        <title>ErasmuVall-Facultades</title>
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
        <script type="text/javascript" src="../js/jssor.slider.mini.js"></script>

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
            <div class="centroCarrusel">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="imagenes/facultades/arquitectura.jpg" alt="Arquitectura">
                        <div class="carousel-caption">
                            <h3><a href="arquitec.jsp">Arquitectura</a></h3>
                            <p>Avenida de Salamanca S/N</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="imagenes/facultades/eii.jpg" alt="Industriales">
                        <div class="carousel-caption">
                            <h3><a href="eii.jsp">ETS. Ingenieria Industrial</a></h3>
                            <p>Paseo del cauce, 59</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="imagenes/facultades/etsii.jpg" alt="Informatica">
                        <div class="carousel-caption">
                            <h3><a href="informatica.jsp">ETS. Ingenieria Informatica</a></h3>
                            <p>Paseo de BelÃ©n, 15</p>
                        </div>
                    </div>

                    
                    <div class="item">
                        <img src="imagenes/facultades/medicina.jpg" alt="Enfermeria">
                        <div class="carousel-caption">
                            <h3>Facultad de Enfermeria</h3>
                            <p>Direccion</p>
                        </div>
                    </div>
                    
                    <div class="item">
                        <img src="imagenes/facultades/etsii.jpg" alt="Teleco">
                        <div class="carousel-caption">
                            <h3><a href="teleco.jsp">E.T.S. TelecomunicaciÃ³n</a></h3>
                            <p>Paseo de Belen, 15</p>
                        </div>
                    </div>
                    
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            </div>
        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>

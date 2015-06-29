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
        <title>ErasmuVall-ConoceValladolid</title>
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
            <div class="centroCarrusel2">
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
                        <img src="imagenes/valladolid/sanpablo.jpg" alt="San Pablo">
                        <div class="carousel-caption">
                            <h3><a href="sanPablo.jsp">Plaza de San Pablo</a></h3>
                            <p>Cuenta con una de las iglesias mas bonitas de la ciudad</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="imagenes/valladolid/ayuntamiento.jpg" alt="Ayuntamiento">
                        <div class="carousel-caption">
                            <h3><a href="ayuntamiento.jsp">Ayuntamiento</a></h3>
                            <p>Ubicado en la plaza mayor, con una preciosa fachada</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="imagenes/valladolid/catedral.jpg" alt="Catedral">
                        <div class="carousel-caption">
                            <h3><a href="catedral.jsp">Catedral</a></h3>
                            <p>De estilo Herreriano y Barroco</p>
                        </div>
                    </div>

                    
                    <div class="item">
                        <img src="imagenes/valladolid/antigua.jpg" alt="La Antigua">
                        <div class="carousel-caption">
                            <h3><a href="antigua.jsp">La antigua</a></h3>
                            <p>Junto a la catedral, conforman una zona muy agradable en el centro de valladolid</p>
                        </div>
                    </div>
                    
                    <div class="item">
                        <img src="imagenes/valladolid/sanbenito.jpg" alt="San Benito">
                        <div class="carousel-caption">
                            <h3><a href="sanbenito.jsp">San BenÃ­to</a></h3>
                            <p>Edificada de 1499 a 1515, totalmente construida en piedra</p>
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
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>

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
        <title>ErasmuVall-Inicio</title>
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
                 <ul id="menuizqindex">
                        <li>Ocio
                            <ul>
                                <li><a href="vallsur.jsp">C.Comercial Vallsur</a></li>
                            </ul>
                        </li>
                      
                        <li>GastronomÃ­a
                        <ul>
                            <li>Restaurante La mejillonera</li>
                            <li>Restaurante Eh Voila</li>
                            <li>Restaurante DÃ¡maso</li>
                            </ul>
                            </li>
                        <li>Noche
                        <ul>
                            <li>Sala Bagur</li>
                            <li>Bar la PorronerÃ­a</li>
                            <li>Sala Heineken</li>
                            </ul>
                            </li>
                        <li><a href="generarRuta.jsp">Genera tu propia ruta</a></li>
                    </ul>
            </div>
            <div class="laterald">
            </div>
            <div class="centroCarrusel2" style="padding: 20px">
                <table class="table table-striped">
                    
                    <th>Paso</th>
                    <th>Lugar</th>
                    <th>Instruccion</th>
                    <tr>
                        <td>1</td>
                        <td>Mejillonera</td>
                        <td>Dirijase a la calle tal</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Ayuntamiento</td>
                        <td>Dirijase a la calle cual</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Plaza mayor</td>
                        <td>Quedese ahi</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Museo de la ciencia</td>
                        <td>Salga de la plaza mayor y vaya hacia avenida salamanca</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Bar la Mejillonera</td>
                        <td>Vaya a la calle esta y pidase un bocadillo de rabas</td>
                    </tr>
                    
</table>
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


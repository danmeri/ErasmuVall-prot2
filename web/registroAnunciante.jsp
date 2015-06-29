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
        <title>ErasmuVall-Registro</title>
        <link rel="stylesheet" href="estilos/css/estilo.css" type="text/css">
        <link rel="stylesheet" href="estilos/css/bootstrap.css" type="text/css">
        <script src="estilos/js/bootstrap.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="estilos/js/menu.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="content-type" content="text/html; charset=utf-8"> 
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="estilos/js/bootstrap.min.js"></script>
    </head>
    <body>

        <%@include file="cabecera.jsp"%>
        <div class="wrapper" align="center">

            <%response.setContentType("text/html;charset=UTF-8");%>
            <div class="centroSinLinea">
                <h2>Registro Erasmus</h2>
                <hr>
                
                <form id="registro" action="Controlador" method="post">
                    Facultad:
                    <select name="facultad">
                        <option selected value="ETSII">ETSII
                        <option value="EII">EII
                        <option value="Medicina">Medicina
                        <option value="Arquitectura">Arquitectura
                        <option value="Derecho">Derecho
                    </select> <br><br>
                    Nacionalidad:
                    <select name="nacionalidad">
                        <option selected value="Ingles">Ingles
                        <option value="Aleman">Aleman
                        <option value="Frances">Frances
                        <option value="Italiano">Italiano
                        <option value="Griego">Griego
                        <option value="Checo">Checo
                        <option value="Portuges">Portuges
                    </select> <br><br>
                    <input type="hidden" name="parte" value="erasmus">
                    
                    <div class="botCentrados">
                        <input class="submit" type="reset"  value="Limpiar">
                        <input class="submit" type="submit" name="accion" value="Siguiente">
                    </div>
                </form>
            </div>


        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


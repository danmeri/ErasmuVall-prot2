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
                 <%@include file="menuIzqQueHacer.jsp"%>
            </div>
            <div class="laterald">
            </div>
            <div class="centro" style="text-align: left">
                <form class="formIzq">
                    <h1>Genera tu propia ruta</h1>
                    <h2>Monumentos</h2>
                    
                    <ul>
                        <li>  San Pablo <input type="checkbox" name="sitiosSugeridos"> </li>
                            
                        <li>       Antigua <input type="checkbox" name="sitiosSugeridos"> </li>
                            
                        <li>        Catedral <input type="checkbox" name="sitiosSugeridos"> </li>
                            
                        <li>        Casa cervantes <input type="checkbox" name="sitiosSugeridos"> </li>
                            
                        <li>       Plaza mayor <input type="checkbox" name="sitiosSugeridos"> </li>
                            
                        <li>       Ayuntamiento <input type="checkbox" name="sitiosSugeridos"> </li>
                    </ul>
                
                    <h2>GastronomÃ­a</h2>
                    <ul>
                        <li>  La mejillonera <input type="checkbox" name="sitiosSugeridos"> </li>
                            
                        <li>       La porroneria <input type="checkbox" name="sitiosSugeridos"> </li>
                    </ul>
                    
                    <h2>Lugares de interÃ©s</h2>
                    <ul>
                        
                        <li>  Campo grande <input type="checkbox" name="sitiosSugeridos"> </li>
                            
                        <li>       Mercado Plaza EspaÃ±a <input type="checkbox" name="sitiosSugeridos"> </li>
                    </ul>
                    <br>
                    Incluir sitios sugeridos para un italiano <input type="checkbox" name="sitiosSugeridos">
                    
                </form>
                <a href="ruta.jsp"> <button class="botCabecera" style="margin-left:45%">Genera Ruta </button></a>
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


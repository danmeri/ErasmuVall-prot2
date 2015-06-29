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
        <title>ErasmuVall-OfertarPiso</title>
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
                <h2>Ofertar Habitacion</h2>
                <hr>
                <form id="formPiso">
                    <h3>Datos del Piso/Habitacion</h3>
                    Calle: <input type="text" id="Calle" ><br>
                    Numero:<br> <input type="text" class="textoPeq"><br>
                    Piso:<br> <input type="text" class="textoPeq"><br>
                    Metros:<br> <input type="text" class="textoPeq"><br>
                    Metros Habitación:<br> <input type="text" class="textoPeq" ><br>
                    Barrio:<br>
                    <select name="barrio">
                        <option selected>Centro
                        <option>La Rondilla
                        <option>Las Delicias
                        <option>Barrio España
                        <option>Pilarica
                        <option>Parquesol
                    </select> <br><br>
                    
                    Otros Datos:<br>
                    <textarea rows="10" cols="20"></textarea><br><br>
                    
                    Adjuntar Fotos: <input type="file" name="fotos"><br>
                    
                    <h3>Datos de contacto</h3>
                    Nombre: <br><input type="text"><br>
                    Apellidos: <br><input type="text"><br>
                    Correo electronico: <br><input type="text"><br>
                    Telefono: <br><input type="text"><br><br>
                                   
                    <div class="botCentrados">
                        <input type="submit" class="submit" value="Limpiar">
                        <input type="submit" class="submit" value="Enviar">
                    </div>               
                                   
                </form>
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


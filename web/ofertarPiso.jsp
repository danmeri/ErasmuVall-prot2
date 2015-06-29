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
        <script type="text/javascript">
            function validar(){
                var calle=document.getElementById("call").value;
                //alert("llego y la calle es "+calle);
                var numero=document.getElementById("num").value;
                var piso=document.getElementById("pis").value;
                var metros=document.getElementById("met").value;
                var habitaciones=document.getElementById("hab").value;
                var barrio=document.getElementById("bar").value;
                
                //var foto=document.getElementById("file").value;
                var nom=document.getElementById("nom").value;
                var ape=document.getElementById("ape").value;
                var cor=document.getElementById("cor").value;
                var tel=document.getElementById("tel").value;
                
                if (calle==""){
                    alert("Introduzca la calle.");
                    return false;
                }else if (numero==""){
                    alert("Introduzca un numero.");
                    return false;
                }else if (piso==""){
                    alert("Introduzca un piso.");
                    return false;
                }else if (metros==""){
                    alert("Introduzca los metros");
                    return false;
                }else if (habitaciones==""){
                    alert("Introduzca el numero de habitaciones");
                    return false;
                }else if (barrio==""){
                    alert("Seleccione un barrio");
                    return false;
                }else if(nom==""){
                    alert("Introduzca su nombre:");
                    return false;
                }else if (ape==""){
                    alert("Introduzca sus apellidos");
                    return false;
                }else if (cor==""){
                    alert("Introduzca su correo electronico");
                    return false;
                }else if (tel==""){
                    alert("Introduzca un telefono de contacto");
                    return false;
                }
                
                // Si el script ha llegado a este punto, todas las condiciones
                // se han cumplido, por lo que se devuelve el valor true
                return true;
            }
        </script>
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
                <h2>Ofertar Piso</h2>
                <hr>
                <form name="fomulario" class="formIzq" action="upload" onsubmit="return validar()" method="post" enctype="multipart/form-data" >
                    <h3>Datos del inmueble</h3>
                    Calle: <input id="call" type="text" name="calle" ><br>
                    Numero:<br> <input id="num" type="text" name="numero" class="textoPeq"><br>
                    Piso:<br> <input id="pis" type="text" name="piso" class="textoPeq"><br>
                    Metros:<br> <input id="met" type="text" name="metros" class="textoPeq"><br>
                    Habitaciones:<br> <input id="hab" type="text" name="habitaciones" class="textoPeq" ><br>
                    Barrio:<br>
                    <select name="barrio" id="bar">
                        <option selected>Centro
                        <option>La Rondilla
                        <option>Las Delicias
                        <option>Barrio España
                        <option>Pilarica
                        <option>Parquesol
                    </select> <br><br>
                    
                    Otros Datos:<br>
                    <textarea id="otros" rows="10" cols="20" name="otrosDatos"></textarea><br><br>
                    
                    Adjuntar Fotos: <input class="botonAlto" id="file" type="file" name="file" accept="image/x-png, image/gif, image/jpeg"><br>
                    
                    <h3>Datos de contacto</h3>
                    Nombre: <br><input id="nom" type="text" name="nombre"><br>
                    Apellidos: <br><input id="ape" type="text" name="apellidos"><br>
                    Correo electronico: <br><input id="cor" type="text" name="correo"><br>
                    Telefono: <br><input id="tel" type="text" name="telefono"><br><br>
                                   
                    <div class="botCentrados">
                        <input type="submit" class="submit" name="lugar" value="Enviar">
                    </div>               
                                   
                </form>
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>

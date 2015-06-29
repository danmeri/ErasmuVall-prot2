<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ page import="DAO.FotosDAO"%>
<%@ page import="DAO.FotosDTO"%>
<html>
    <head>
         <%@page contentType="text/html"%> 
    <%@page pageEncoding="UTF-8"%> 
        <title>ErasmuVall-SanPablo</title>
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
            <div class="centro">
                <h1>Plaza de San Pablo</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://upload.wikimedia.org/wikipedia/commons/thumb/5/53/IglesiaDeSanPablo20110905170422P1120849.jpg/1280px-IglesiaDeSanPablo20110905170422P1120849.jpg?1428884599284" width="450" height="300" alt="Escuela Ingenierias Industriales">
                    La plaza de San Pablo es una de las plazas más emblemáticas de la ciudad de Valladolid (Castilla y León, España).
                    Fue construida extramuros de la primitiva ‘cerca vieja’ o interior que delimitaba el casco urbano de Valladolid en
                    el siglo X, época en la que se encontraba situada junto a la ‘puerta de Cabezón’, en el extremo norte de la ciudad.
                    Durante sus más de diez siglos de existencia, ha sido uno de los principales puntos neurálgicos de la ciudad, 
                    con una notable impronta clerical durante la Edad Media, palaciega durante el Renacimiento y el Barroco, transformada 
                    en espacio cultural y turístico en los siglos XX y XXI.

                    En nuestros días es uno de los principales espacios urbanos de la ciudad de Valladolid, compartiendo protagonismo con la plaza Mayor, 
                    la plaza de Zorrilla y la plaza de España. Su adaptación a las necesidades cambiantes de cada época, ha propiciado que en la actualidad 
                    conserve uno de los principales conjuntos de edificios históricos de la ciudad, entre los que destaca la iglesia de San Pablo, el palacio 
                    Real y el palacio de Pimentel, los llamados sitios reales en siglos pasados. Junto ellos, existen otros inmuebles notables 
                    como son el palacio de Justicia, el instituto Zorrilla o el colegio El Salvador. En uno de los laterales de la zona centro de 
                    la plaza se encuentra situada la estatua del monarca Felipe II, nacido en la ciudad de Valladolid, y frente a la iglesia, 
                    precediendo al atrio de su fachada principal, un crucero procedente de la iglesia de Santiago.
                    
                    Además, en la plaza confluyen numerosas calles, consecuencia del papel central que esta plaza desempeñó durante 
                    siglos en la vida de la ciudad. Entre ellas destacan las de Cadenas de San Gregorio (donde se encuentra el Museo
                    Nacional de Escultura) y la de las Angustias, junto con otras que facilitaban el acceso, como la de Felipe II, 
                    del León, San Quirce, de Esteban García Chico o la de Cardenal Torquemada (donde se encuentra el antiguo hospital
                    Río Hortega).
                </p>

                <hr>
                
                <h2>Comparte tus fotos en este lugar</h2>
                    <%String usuar=(String)session.getAttribute("usuario");
                    if (usuar==null){
                        %><h3>Para subir fotos en este lugar, necesita estar registrado</h3><%
                    }else{%>
                     <form  action="upload" method="post" enctype="multipart/form-data" class="formIzq">
                    Adjuntar Fotos: <input class="botonAlto" type="file" name="file" accept="image/x-png, image/gif, image/jpeg"><br>
                    <input type="hidden" name="id" value="1">
                    <input type="hidden" name="url" value="/sanPablo.jsp?itemSelect=Conoce&coment=sanPablo">
                    <input class="submit" type="submit" name="lugar" value="Enviar foto lugar">
                </form>
                    <%}%>
                <h4>Subidas por otros usuarios</h4>
                <div class="fotosUsuarios">
                    <%FotosDAO fotDAO = new FotosDAO();
                    ArrayList<FotosDTO> fotos = fotDAO.getFotos(1, 3);
                    for(FotosDTO fot: fotos){%>
                    <a href="<%=fot.getDireccion()%>"><img src="<%=fot.getDireccion()%>" width="220" height="200" alt="fotoPiso"></a>
                    <%}%>
                </div>
                <hr>
                
                <%@include file="puntuar.jsp"%>
                
                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2980.9377769923803!2d-4.72467728888551!3d41.657086381935876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712acf78ee083%3A0x553198e5bf58e59c!2sPlaza+San+Pablo%2C+Valladolid!5e0!3m2!1ses!2ses!4v1428955857013" width="600" height="450" frameborder="0" style="border:0">
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


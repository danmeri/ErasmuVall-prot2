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
        <title>ErasmuVall-Ayuntamiento</title>
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
                <h1>Ayuntamiento</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://upload.wikimedia.org/wikipedia/commons/3/37/Fachada_trasera_del_Ayuntamiento.jpg" width="450" height="300" alt="Escuela Ingenierias Industriales">
                    En 1880, se convocó concurso público de ideas para su construcción del que resultó ganador el proyecto del arquitecto 
                    local Antonio Iturralde Montel, aunque el diseño no gustó demasiado y la Real Academia de Bellas Artes de la Purísima 
                    Concepción cuestionó el proyecto elegido. Sin embargo, las obras la construcción del nuevo edificio no comenzaron hasta 
                    1892, debido, sobre todo, a las dificultades económicas que atravesaba el Ayuntamiento de Valladolid.
                    Un año después, en 1893, se iniciaron discrepancias entre Iturralde y el Ayuntamiento; este acusaba al arquitecto 
                    de no disponer de un proyecto estable y de errores en el cálculo del coste total de la obra. Finalmente, 
                    las obras se paralizaron en marzo de 1894 hasta la muerte del arquitecto en 1897 cuando se pudo rescindir el 
                    contrato.
                    El Ayuntamiento optó entonces por realizar un sorteo con el fin de encontrar un arquitecto para la continuación 
                    de las obras, entre aquellos que recientemente hubiesen dirigido la construcción de edificios.
                    De los seis arquitectos que se barajaron, el elegido fue el abulense Enrique María Repullés y Vargas, a quien 
                    corresponde el edificio actual. Tras la presentación del proyecto, Repullés derribó todo lo efectuado hasta el 
                    momento del proyecto de Antonio Iturralde debido a la imposibilidad de aprovechar lo ya edificado, modificando 
                    el proyecto inicial.
                </p>

                <hr>
                
                <h2>Comparte tus fotos en este lugar</h2>
                <%String usuar=(String)session.getAttribute("usuario");
                if (usuar==null){
                    %><h3>Para subir fotos en este lugar, necesita estar registrado</h3><%
                }else{%>
                <form  action="upload" method="post" enctype="multipart/form-data" class="formIzq">
                    Adjuntar Fotos: <input class="botonAlto" type="file" name="file" accept="image/x-png, image/gif, image/jpeg"><br>
                    <input type="hidden" name="id" value="2">
                    <input type="hidden" name="url" value="/ayuntamiento.jsp?itemSelect=Conoce&coment=ayuntamiento">
                    <input class="submit" type="submit" name="lugar" value="Enviar foto lugar">
                </form>
                <%}%>
                <h4>Subidas por otros usuarios</h4>
                <div class="fotosUsuarios">
                    <%FotosDAO fotDAO = new FotosDAO();
                    ArrayList<FotosDTO> fotos = fotDAO.getFotos(2, 3);
                    for(FotosDTO fot: fotos){%>
                    <a href="<%=fot.getDireccion()%>"><img src="<%=fot.getDireccion()%>" width="220" height="200" alt="fotoPiso"></a>
                    <%}%>
                </div>
                <hr>
                
                <%@include file="puntuar.jsp"%>
                
                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.154674668638!2d-4.728654999999986!3d41.65240000000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd476d4d3a756901%3A0xd63417d6a26b3cae!2sAyuntamiento+de+Valladolid!5e0!3m2!1ses!2ses!4v1428956607607" width="600" height="450" frameborder="0" style="border:0">
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


<!DOCTYPE html>
<%@ page import="DAO.FotosDAO"%>
<%@ page import="DAO.FotosDTO"%>
<html>
    <head>
         <%@page contentType="text/html"%> 
        <%@page pageEncoding="UTF-8"%> 
        <title>ErasmuVall-Catedral</title>
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
                <h1>Catedral</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://fotos.nortecastilla.es/201006/catedral-de-noche.jpg" width="450" height="300" alt="Escuela Ingenierias Industriales">
                    La Catedral de Nuestra Señora de la Asunción de Valladolid es un templo católico ubicado en la ciudad de 
                    Valladolid con categoría de catedral, sede de la Archidiócesis de Valladolid. Concebida en el siglo XVI como 
                    última obra de Felipe II y diseñada por el arquitecto Juan de Herrera, es un edificio de estilo herreriano con 
                    añadidos barrocos. Debía ser la catedral más grande de Europa1 , si bien se encuentra construida en un 40-45%,
                    2 debido a la falta de recursos para un proyecto de tal magnitud y a los gastos provocados por la difícil 
                    cimentación del templo, situado en una zona con un gran desnivel en el terreno.
                    Obtuvo la categoría de catedral el año 1595, tras haber sido un templo colegial dependiente de la diócesis de 
                    Palencia.
                    Está situada en el centro de la ciudad, en una zona ligeramente elevada, cerca de la Iglesia de Santa María La 
                    Antigua y construida junto a la Colegiata de Santa María, anterior iglesia colegial de Valladolid, algunos de 
                    cuyos espacios fueron destruidos para continuar con las nuevas obras.
                </p>

                <hr>
                
                <h2>Comparte tus fotos en este lugar</h2>
                <%String usuar=(String)session.getAttribute("usuario");
                if (usuar==null){
                    %><h3>Para subir fotos en este lugar, necesita estar registrado</h3><%
                }else{%>
                <form  action="upload" method="post" enctype="multipart/form-data" class="formIzq">
                    Adjuntar Fotos: <input class="botonAlto" type="file" name="file" accept="image/x-png, image/gif, image/jpeg"><br>
                    <input type="hidden" name="id" value="3">
                    <input type="hidden" name="url" value="/catedral.jsp?itemSelect=Conoce&coment=catedral">
                    <input class="submit" type="submit" name="lugar" value="Enviar foto lugar">
                </form>
                <%}%>
                <h4>Subidas por otros usuarios</h4>
                <div class="fotosUsuarios">
                    <%FotosDAO fotDAO = new FotosDAO();
                    ArrayList<FotosDTO> fotos = fotDAO.getFotos(3, 3);
                    for(FotosDTO fot: fotos){%>
                    <a href="<%=fot.getDireccion()%>"><img src="<%=fot.getDireccion()%>" width="220" height="200" alt="fotoPiso"></a>
                    <%}%>
                </div>
                <hr>
                
                <%@include file="puntuar.jsp"%>
                
                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.142641729844!2d-4.723425999999996!3d41.65266000000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712b22e6504cb%3A0x65e10a576c0d3e83!2sCatedral+de+Valladolid!5e0!3m2!1ses!2ses!4v1428957476487" width="600" height="450" frameborder="0" style="border:0">
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


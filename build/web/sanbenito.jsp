<!DOCTYPE html>
<%@ page import="DAO.FotosDAO"%>
<%@ page import="DAO.FotosDTO"%>
<html>
    <head>
         <%@page contentType="text/html"%> 
    <%@page pageEncoding="UTF-8"%> 
        <title>ErasmuVall-SanBenito</title>
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
                <h1>San Benito</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://esphoto500x500.mnstatic.com/iglesia-del-monasterio-de-san-benito-el-real_137482.jpg" width="450" height="300" alt="San Benito">
                    La iglesia de San Benito el Real, de la orden benedictina, es uno de los templos más antiguos de Valladolid.
                    Fue erigida sobre el antiguo Alcázar Real y está realizada en estilo gótico; aunque la fachada en forma de 
                    torre pórtico es posterior: fue diseñada por Rodrigo Gil de Hontañón en 1569. Originalmente, esta torre poseía 
                    bastante más altura gracias a la existencia de otros dos cuerpos para el campanario, que se encontraban sobre 
                    los actuales, y que fueron derribados en el siglo XIX por amenazar ruina.
                    La iglesia fue edificada de 1499 a 1515, siguiendo planos de Juan de Arandia y García de Olave. Está totalmente edificada en piedra.
                    <br><br>Se organiza mediante tres naves, que rematan en tres ábsides poligonales y no existe crucero. Las naves 
                    laterales son muy altas y su diferencia de altura con la central es escasa, por lo que podemos decir que esta 
                    iglesia sigue la tipología de iglesia-salón, muy difundida en la primera mitad del siglo XVI, creando edificios 
                     de una interesante y grandiosa espacialidad como el que nos ocupa.
                     La iluminación se resuelve a partir de grandes huecos, que se abren el la pared de la nave lateral del lado de 
                     la Epístola y en los ábsides. Originalmente, también existieron algunos huecos en la nave central, tapados a 
                     raíz de la elevación de los tejados hacia 1580. En el tramo de los pies se encuentra el coro alto, que abarca 
                     las tres naves de la iglesia.
                </p>

                <hr>
                
                <h2>Comparte tus fotos en este lugar</h2>
                <%String usuar=(String)session.getAttribute("usuario");
                if (usuar==null){
                    %><h3>Para subir fotos en este lugar, necesita estar registrado</h3><%
                }else{%>
                <form  action="upload" method="post" enctype="multipart/form-data" class="formIzq">
                    Adjuntar Fotos: <input class="botonAlto" type="file" name="file" accept="image/x-png, image/gif, image/jpeg"><br>
                    <input type="hidden" name="id" value="5">
                    <input type="hidden" name="url" value="/sanbenito.jsp?itemSelect=Conoce&coment=sanbenito">
                    <input class="submit" type="submit" name="lugar" value="Enviar foto lugar">
                </form>
                <%}%>
                <h4>Subidas por otros usuarios</h4>
                <div class="fotosUsuarios">
                    <%FotosDAO fotDAO = new FotosDAO();
                    ArrayList<FotosDTO> fotos = fotDAO.getFotos(5, 3);
                    for(FotosDTO fot: fotos){%>
                    <a href="<%=fot.getDireccion()%>"><img src="<%=fot.getDireccion()%>" width="220" height="200" alt="fotoPiso"></a>
                    <%}%>
                </div>
                
                <hr>
                
                <%@include file="puntuar.jsp"%>
                
                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.0551881888323!2d-4.730138399999988!3d41.65454959999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd476d528c1c21e3%3A0xae26cc0f10d4fa03!2sMonasterio+de+San+Benito%2C+47003+Valladolid!5e0!3m2!1ses!2ses!4v1428961030805" width="600" height="450" frameborder="0" style="border:0">
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


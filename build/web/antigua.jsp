<!DOCTYPE html>
<%@ page import="DAO.FotosDAO"%>
<%@ page import="DAO.FotosDTO"%>
<html>
    <head>
         <%@page contentType="text/html"%> 
         <%@page pageEncoding="UTF-8"%> 
        <title>ErasmuVall-LaAntigua</title>
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
                <h1>La antigua</h1>
                <p class="textofacultad"><img class="fotofacultad" src="http://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/IglesiaDeSantaMar%C3%ADaLaAntigua20110905164612P1120844.jpg/1024px-IglesiaDeSantaMar%C3%ADaLaAntigua20110905164612P1120844.jpg" width="450" height="300" alt="Escuela Ingenierias Industriales">
                    La iglesia de Santa María de La Antigua se levanta desde al menos el siglo XI en la ciudad de Valladolid. 
                    Conserva de fines de la centuria siguiente (siglo XII) una esbelta torre románica rematada con un chapitel 
                    apiramidado de teja y un pórtico en el lado norte también románico. El resto del edificio es gótico y 
                    neogótico, pues se levantó en el siglo XIV y fue intensamente restaurado y reconstruido en la primera mitad 
                    del siglo XX.
                    La torre, uno de los símbolos de Valladolid, se encuentra a los pies del edificio. Posee planta cuadrada 
                    y cuatro pisos separados por impostas ajedrezadas, rematándose en un chapitel piramidal, con teja cerámica 
                    al exterior, del que se desconoce su morfología original. En el cuerpo bajo de la torre se alberga una estancia 
                    cubierta con bóveda de cañón apuntado, que hoy es capilla bautismal; en los tres cuerpos más altos se abren 
                    una serie de ventanas agrupadas de forma que van generando una tensión ascensional, que enfatiza la esbeltez 
                    de la torre, a lo que también contribuyen las impostas de ajedrezados, dispuestas rítmicamente a lo largo de 
                    los alzados. Las ventanas poseen arcos de medio punto moldurados, que muestran gran similitud con los de la 
                    galería porticada, sobre columnillas con capiteles de tema vegetal o geométrico, que se disponen en las jambas 
                    de los huecos. También es de advertir la valoración plástica y el énfasis dado a las esquinas de la torre a 
                    través de disponer en ellas de columnillas similares a las que se disponen en las jambas de los huecos.5
                    La torre tiene un fuerte cuño románico lombardo y esto puede explicarse por la procedencia catalana de la 
                    dinastía Armengol, descendiente del Conde Ansúrez y sucesora suya el señorío de Valladolid hasta su 
                    incorporación a la corona.
                </p>

                <hr>
                
                <h2>Comparte tus fotos en este lugar</h2>
                <%String usuar=(String)session.getAttribute("usuario");
                if (usuar==null){
                    %><h3>Para subir fotos en este lugar, necesita estar registrado</h3><%
                }else{%>
                <form  action="upload" method="post" enctype="multipart/form-data" class="formIzq">
                    Adjuntar Fotos: <input class="botonAlto" type="file" name="file" accept="image/x-png, image/gif, image/jpeg"><br>
                    <input type="hidden" name="id" value="4">
                    <input type="hidden" name="url" value="/antigua.jsp?itemSelect=Conoce&coment=antigua">
                    <input class="submit" type="submit" name="lugar" value="Enviar foto lugar">
                </form>
                <%}%>
                <h4>Subidas por otros usuarios</h4>
                <div class="fotosUsuarios">
                    <%FotosDAO fotDAO = new FotosDAO();
                    ArrayList<FotosDTO> fotos = fotDAO.getFotos(4, 3);
                    for(FotosDTO fot: fotos){%>
                    <a href="<%=fot.getDireccion()%>"><img src="<%=fot.getDireccion()%>" width="220" height="200" alt="fotoPiso"></a>
                    <%}%>
                </div>
                <hr>
                
                <%@include file="puntuar.jsp"%>
                
                <hr>
                
                <h2>Localización</h2>   
                <div class="mapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2981.0832166242603!2d-4.722855999999956!3d41.653943999999974!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4712adff454fbd%3A0xde30f87c9091838e!2sIglesia+de+Santa+Mar%C3%ADa+de+la+Antigua!5e0!3m2!1ses!2ses!4v1428958159366" width="600" height="450" frameborder="0" style="border:0">
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


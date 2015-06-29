<%@page import="DAO.FotosDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.OfertaPisoDTO"%>
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
                <%OfertaPisoDTO piso=(OfertaPisoDTO)request.getAttribute("oferta");%>
                <%ArrayList<FotosDTO>fotos=(ArrayList<FotosDTO>)request.getAttribute("fotos");%>
                    <h2>Oferta Nº<%=piso.getId()%> </h2>
                    <hr>
                    <h4>Datos Piso:</h4>
                        Calle: <%=piso.getCalle()%><br>
                        Numero: <%=piso.getNum()%>
                        Piso: <%=piso.getPiso()%><br>
                        Metros: <%=piso.getMetros()%><br>
                        Barrio: <%=piso.getBarrio()%><br>
                    <br>
                    <h4>Datos de contacto:</h4><br>
                        Jaime Sanz Herrero<br>
                        jaimejaimito@gmail.com<br>
                        675 89 12 43 <br>
                
                    <h2>Fotos</h2>
                    <hr>
                    <%for(FotosDTO fot: fotos){%>
                    <a href="<%=fot.getDireccion()%>"><img src="<%=fot.getDireccion()%>" width="220" height="200" alt="fotoPiso"></a>
                    <%}%>
                    <h2>Otros Datos</h2>
                    <%=piso.getOtrosDatos()%>
                    
                

                <%@include file="comentarios.jsp"%>
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>

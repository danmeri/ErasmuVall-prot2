<%@page import="DAO.FotosDTO"%>
<%@page import="DAO.OfertaPisoDTO"%>
<%@page import="java.util.ArrayList"%>
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
                <h3>Todas las ofertas disponibles</h3>
                <table>
                    <%ArrayList <OfertaPisoDTO> pisos=(ArrayList<OfertaPisoDTO>)request.getAttribute("ofertaPisos");%>
                    <%ArrayList <FotosDTO> fotos=(ArrayList<FotosDTO>)request.getAttribute("fotos");%>
                    <% for(int i=0;i<pisos.size();i++){%>
                    <tr>
                        <td> <img src="<%=fotos.get(i).getDireccion()%>" width="110" height="100" alt="fotoPiso1">
</td>
                        <td>
                            <h2><a href="Controlador?accion=VerPiso&idPiso=<%=pisos.get(i).getId()%>"><%=pisos.get(i).getId()%></a></h2></td>
                        <td>
                    <td>
                        Calle: <%=pisos.get(i).getCalle()%> <%=pisos.get(i).getNum()%>, Piso: <%=pisos.get(i).getPiso()%>,  Metros: <%=pisos.get(i).getMetros()%>, Barrio: <%=pisos.get(i).getBarrio()%>
                    </td>
                </tr>
                <%}%>
                </table>
                    </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>

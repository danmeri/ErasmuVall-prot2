<%-- 
    Document   : conoce
    Created on : 17-may-2015, 17:10:26
    Author     : daniel
--%>

<%@page import="DAO.ErasmusDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Conoce Estudiantes de Este Centro</h2>
                <br>
                <%String tipo=request.getParameter("coment");%>
                
                
                <%String usuario=(String)session.getAttribute("usuario");
                if (usuario==null){
                    %><h4>Para buscar personas en este centro, necesita estar registrado</h4><%
                }else{
                ArrayList<ErasmusDTO> erasmus=(ArrayList<ErasmusDTO>)request.getAttribute("usuarios");
                if (erasmus!=null){
                    if (erasmus.size()>0){%>
                        <h4>A continuacion se muestra la lista de usuarios con perfil publico:</h4>
                        <%for (int i=0;i<erasmus.size();i++){%>
                        Nombre de usuario: <%=erasmus.get(i).getNombreUsuario()%>  --  Nacionalidad: <%=erasmus.get(i).getNacionalidad()%><br>
                        <%}%>
                   <%}else{%>
                        <h4>Lo sentimos, en este momento no hay ningun usuario  con perfil publico registrado en este centro</h4><%
                    }  
                }else{%>
                    <form action="Controlador" method="post">
                        <input class="submit2" type="submit" name="accion" value="Buscar Personas">
                        <input class="hidden" name="tip" value="<%=tipo%>">
                    </form>
                <%}}%>
    </body>
</html>

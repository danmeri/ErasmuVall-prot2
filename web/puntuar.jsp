<%@page import="DAO.PuntuacionDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.PuntuacionDAO"%>
<!DOCTYPE html>
<html>
    <head>
         <%@page contentType="text/html"%> 
    <%@page pageEncoding="UTF-8"%> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%String usuario=(String)session.getAttribute("usuario");%>
        <h2>Puntuaciones</h2>
        <%String c = (String) request.getParameter("coment");
        PuntuacionDAO puntDAO = new PuntuacionDAO();
        ArrayList<PuntuacionDTO> puntuaciones=puntDAO.getPuntuaciones(c);
        Boolean yaPuntuado=false;
        if (puntuaciones!=null)
        {
            for(int i=0;i<puntuaciones.size();i++)
            {
                PuntuacionDTO puntuacion=puntuaciones.get(i);
                int p=puntuacion.getPuntuacion();
            %><%if (puntuacion.getUsuario().replace(" ","").equals(usuario)){%>
                        <i>Usted puntuo:</i> <br>
                        <%yaPuntuado=true;%>
                  <%}else{%>
                        <%=puntuacion.getUsuario()%> <i>puntuo: </i> <br>
                  <%}%>
                <div class="ec-stars-wrapper">
                    <%if (p>=1){%>
                        <a class="punt" href="#">&#9733;</a>
                    <%}else{%>
                        <a class="puntGris" href="#">&#9733;</a>
                    <%}%>
                    
                    <%if (p>=2){%>
                        <a class="punt" href="#">&#9733;</a>
                    <%}else{%>
                        <a class="puntGris" href="#">&#9733;</a>
                    <%}%>
                    
                    <%if (p>=3){%>
                        <a class="punt" href="#">&#9733;</a>
                    <%}else{%>
                        <a class="puntGris" href="#">&#9733;</a>
                    <%}%>
                    
                    <%if (p>=4){%>
                        <a class="punt" href="#">&#9733;</a>
                    <%}else{%>
                        <a class="puntGris" href="#">&#9733;</a>
                    <%}%>
                    
                    <%if (p>=5){%>
                        <a class="punt" href="#">&#9733;</a>
                    <%}else{%>
                        <a class="puntGris" href="#">&#9733;</a>
                    <%}%>
                    
                </div>
                <br><br>
            <%}
        }%>
        
        <h2>Puntua este lugar</h2>
        <% if (session.getAttribute("usuario") != null) {
            if (yaPuntuado){%>
            <h3>Ya has puntuado esto.</h3> <a href="Controlador?accion=BorrarComentario&punt=<%=c%>">Borrar Puntuacion</a>
            <%}else{%>
                <div class="ec-stars-wrapper">
                <a href="Controlador?accion=puntuar&valor=1&punt=<%=c%>" title="Votar con 1 estrellas">&#9733;</a>
                <a href="Controlador?accion=puntuar&valor=2&punt=<%=c%>" title="Votar con 2 estrellas">&#9733;</a>
                <a href="Controlador?accion=puntuar&valor=3&punt=<%=c%>" title="Votar con 3 estrellas">&#9733;</a>
                <a href="Controlador?accion=puntuar&valor=4&punt=<%=c%>" title="Votar con 4 estrellas">&#9733;</a>
                <a href="Controlador?accion=puntuar&valor=5&punt=<%=c%>" title="Votar con 5 estrellas">&#9733;</a>
                </div>
           <%}
         } else {%>
            <h3> Necesitas iniciar sesion para poder puntuar</h3>
        <%}%>
    </body>
</html>
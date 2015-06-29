<%-- 
    Document   : comentarios
    Created on : 08-may-2015, 19:39:34
    Author     : daniel
--%>

<%@page import="DAO.ComentarioDAO"%>
<%@page import="DAO.ComentarioDTO"%>
<%@page import="java.util.ArrayList"%>
 <%@page contentType="text/html"%> 
    <%@page pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
function valida(f) {
  var ok = true;
  var msg = "Debes escribir algo en los campos:\n";
  if(f.elements["email"].value == "")
  {
    msg += "email\n";
    ok = false;
  }

  if(f.elements["mensaje"].value == "")
  {
    msg += "-Comentario \n";
    ok = false;
  }

  if(ok == false)
    alert(msg);
  return ok;
}
</script>
    </head>
    <body>
        <h2>Comentarios</h2>
                <%String comen = (String) request.getParameter("coment");
                ComentarioDAO cDAO=new ComentarioDAO();
                ArrayList<ComentarioDTO> comentarios=cDAO.getComentarios(comen);
                if (comentarios!=null){
                    for(int i=0;i<comentarios.size();i++){
                        ComentarioDTO comentario=comentarios.get(i);
                        %><i><%=comentario.getNombre()%> el <%=comentario.getFecha()%> comento:</i> <br>
                        <p class="comentario">
                        <%=comentario.getTexto()%>
                        </p>
                    <%}
                }%>
        
                 
                <h2>Deja tu comentario</h2>
                <div>
                    <% if(session.getAttribute("usuario")!=null){%>
                    
                    <form action="Controlador" method="post" onsubmit="return valida(this)">
                        <label for="email">Email:</label>
                        <input id="email" type="email" name="email" placeholder="ejemplo@correo.com" required="" />
                        <label for="comentario">Comentario:</label>
                        <textarea id="mensaje" name="mensaje" placeholder="Mensaje" required=""></textarea>
                        <input class="hidden" name="claveComent" value="<%=comen%>">
                        <input class="submit" type="submit" name="accion" value="Comentar" />
                    </form>
                   <%}else {%>
                   <h3> Necesitas iniciar sesion para poder comentar</h3>
                   <%}%>
                </div>
    </body>
</html>

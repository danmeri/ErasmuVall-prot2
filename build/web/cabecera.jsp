<head>
    <%@page contentType="text/html"%> 
    <%@page pageEncoding="UTF-8"%> 
    <meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
</head>
<body>

<div class="header">
    <div style="float:right; position:absolute;  margin-top: 10px; right: 22px">
        
        <%
        Cookie[] cookies=request.getCookies();
        String name = "usuario";
        String value = "";
        if (cookies!=null){
        for (int i=0;i<cookies.length;i++){
            Cookie cookie = cookies[i];
            if(cookie.getName().equals("recordar")){
                if(!cookie.getValue().equals("")){
                session.setAttribute("usuario", cookie.getValue());
                break;
                }
            }
            if (name.equals(cookie.getName())){
                value=cookie.getValue();
            }
        }
        }
        if(session.getAttribute("usuario")==null){%>
            <a href="registro.jsp"> <button class="botCabecera">Registrate </button></a><%
            if (value!=""){
                String[] separados=value.split(";");
                %><a href="inicioSesion.jsp?nomUsu=<%=separados[1]%>">Inicia Sesion <%=separados[0]%></a> ||
                
                <a href="inicioSesion.jsp">¿No eres <%=separados[0]%>?</a> <%
            }else{%>
                <a href="inicioSesion.jsp"> <button class="botCabecera">Iniciar Sesion </button></a> 
            <%}%>
        
        
        <%} else {%>
            Has iniciado sesión como: 
            <%=session.getAttribute("usuario")%>
            <a href="Controlador?accion=Salir">Salir</a>
        <%}%>
    </div>
    <a href="index.jsp"> <img src="imagenes/logotipo.png" alt="ErasmusVall"> </a>
    <table id="tidiomas" align="center">
        <tr>
            <td class="idiomas">
                <img src="imagenes/banderas/esp.png" alt="Español">
            </td>
            <td class="idiomas">
                <img src="imagenes/banderas/ger.png" alt="Aleman">
            </td>
            <td class="idiomas">
                <img src="imagenes/banderas/ita.png" alt="Italiano">
            </td>
            <td class="idiomas">
                <img src="imagenes/banderas/fra.png" alt="Frances">
            </td>
            <td class="idiomas">
                <img src="imagenes/banderas/por.png" alt="Portugues">
            </td>
        </tr>
    </table> 
</div>
<div class="menu">
    <table id="menu">
        <%String select = (String) request.getAttribute("itemSelect");
            if (select == null) {
                select = request.getParameter("itemSelect");
                if (select == null) {
                    select = "Inicio";
                }
            }%>
        <tr>
            <td class="tdmenu" <%if (select.equals("Inicio")) {%> id="tdactivo"<%}%>>
                <a class="elemenu" href="Controlador?accion=Inicio">Inicio</a>
            </td>
            <td class="tdmenu" <%if (select.equals("Facultades")) {%> id="tdactivo"<%}%>>
                <a class="elemenu" href="Controlador?accion=Facultades">Facultades</a>
            </td>
            <td class="tdmenu" <%if (select.equals("Conoce")) {%> id="tdactivo"<%}%>>
                <a class="elemenu" href="Controlador?accion=Conoce">Conoce Valladolid</a>
            </td>
            <td class="tdmenu" <%if (select.equals("Alojamiento")) {%> id="tdactivo"<%}%>>
                <a class="elemenu" href="Controlador?accion=Alojamiento">Alojamiento</a>
            </td>
            <td class="tdmenu" <%if (select.equals("Eventos")) {%> id="tdactivo"<%}%>>
                <a class="elemenu" href="Controlador?accion=Eventos">Eventos</a>
            </td>
            <td class="tdmenu" <%if (select.equals("QueHacer")) {%> id="tdactivo"<%}%>>
                <a class="elemenu" href="Controlador?accion=QueHacer">Que hacer</a>
            </td>
            <td class="tdmenu" <%if (select.equals("Chat")) {%> id="tdactivo"<%}%>>
                <a class="elemenu" href="Controlador?accion=Chat">Chat</a>
            </td>
        </tr>
    </table>
</div>
</body>
<%@page import="DAO.UsuarioDTO"%>
 <%@page contentType="text/html"%> 
    <%@page pageEncoding="UTF-8"%> 
<ul id="menuizqindex">
    <li>Residencias Universitarias
        <ul>
            <li><a href="menendez.jsp?itemSelect=Alojamiento&coment=menendez">Menendez Pelayo</a></li>
            <li><a href="castillayleon.jsp?itemSelect=Alojamiento&coment=castillayleon">Castilla y Leon</a></li>
            <li><a href="apartamentos.jsp?itemSelect=Alojamiento&coment=apartamentosuniversitarios">Apartamentos Universitarios</a></li>
            <li><a href="alfonso.jsp?itemSelect=Alojamiento&coment=alfonsoVIII">Alfonso VIII</a></li>
            <li><a href="blanca.jsp?itemSelect=Alojamiento&coment=blancadecastilla">Blanca de Castilla</a></li>
            <li><a href="alberto.jsp?itemSelect=Alojamiento&coment=albertomagno">Alberto Magno</a></li>
        </ul>
    </li>
    <li>Pisos en alquiler
        <ul>
            <li><a href="Controlador?accion=verOfertasPisos">Ver Ofertas</a></li>
                <% UsuarioDTO user = (UsuarioDTO) session.getAttribute("userDTO");
                                    if (user != null) {
                                        if (user.getTipoUsuario() == 2) {%>
            <li><a href="ofertarPiso.jsp?itemSelect=Alojamiento">Ofertar Piso</a></li>
                <%}
                                   }%>

        </ul>
    </li>
    <li>Alquiler de Habitaciones
        <ul>
            <li><a href="verOfertasHab.jsp?itemSelect=Alojamiento">Ver Ofertas</a></li>
            <li><a href="ofertarHab.jsp?itemSelect=Alojamiento">Ofertar Habitación</a></li>
        </ul>
    </li>
</ul>
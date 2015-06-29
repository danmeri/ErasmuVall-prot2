/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.AgenciaDAO;
import DAO.AgenciaDTO;
import DAO.ComentarioDAO;
import DAO.ComentarioDTO;
import DAO.ErasmusDAO;
import DAO.ErasmusDTO;
import DAO.FacultadDAO;
import DAO.FotosDAO;
import DAO.FotosDTO;
import DAO.NegocioDAO;
import DAO.NegocioDTO;
import DAO.OfertaPisoDAO;
import DAO.OfertaPisoDTO;
import DAO.PuntuacionDAO;
import DAO.PuntuacionDTO;
import DAO.UsuarioDAO;
import DAO.UsuarioDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.catalina.startup.Catalina;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;

/**
 *
 * @author daniel
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
@MultipartConfig
public class Controlador extends HttpServlet {

    //meter en las funciones;

    private String url;
    private UsuarioDTO userDTO = null;
    private HttpSession session;
    private UsuarioDAO userDAO;
    private OfertaPisoDAO oferDAO;
    private FotosDAO fotosDAO;
    private AgenciaDAO agenciaDAO;
    private ErasmusDAO erasDAO;
    private NegocioDAO negocioDAO;
    private PuntuacionDAO puntuacionDAO;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String encoding = request.getCharacterEncoding();
            if (encoding == null) {
                request.setCharacterEncoding("UTF-8");
            }

            session = request.getSession();
            userDAO = new UsuarioDAO();
            oferDAO = new OfertaPisoDAO();
            fotosDAO = new FotosDAO();
            agenciaDAO = new AgenciaDAO();
            erasDAO = new ErasmusDAO();
            negocioDAO = new NegocioDAO();
            puntuacionDAO = new PuntuacionDAO();
            String tipo = request.getParameter("accion");
            switch (tipo) {
                case "Inicio":
                    this.url = "/index.jsp";
                    request.setAttribute("itemSelect", "Inicio");
                    break;
                case "Facultades":
                    this.url = "/facultades.jsp";
                    request.setAttribute("itemSelect", "Facultades");
                    break;
                case "Conoce":
                    request.setAttribute("itemSelect", "Conoce");
                    this.url = "/conoceVall.jsp";
                    break;
                case "Alojamiento":
                    request.setAttribute("itemSelect", "Alojamiento");
                    this.url = "/alojamiento.jsp";
                    break;
                case "Eventos":
                    request.setAttribute("itemSelect", "Eventos");
                    this.url = "/eventos.jsp";
                    break;
                case "QueHacer":
                    request.setAttribute("itemSelect", "QueHacer");
                    this.url = "/quehacer.jsp";
                    break;
                case "Chat":
                    request.setAttribute("itemSelect", "Chat");
                    this.url = "/chat.jsp";
                    break;
                case "Entrar":
                    request.setAttribute("itemSelect", "Inicio");
                    this.url = "/index.jsp";
                    break;
                case "Siguiente":
                    String parteRegistro = (String) request.getParameter("parte");

                    if (parteRegistro.equals("usuario")) {
                        String nombre = request.getParameter("nombre");
                        String apellidos = request.getParameter("apellidos");
                        String user = request.getParameter("user");
                        String pass = request.getParameter("passwd");
                        String dir = request.getParameter("direccion");
                        String ti = request.getParameter("tipo");

                        if (userDAO.compruebaSiExisteNombreUsuario(user)) {
                            request.setAttribute("error", "El nombre de usuario introducido ya existe");
                            this.url = "/errorRegistro.jsp";
                        } else {
                            int tipoUsuario = 0;
                            switch (ti) {
                                case "Erasmus":
                                    tipoUsuario = 1;
                                    this.url = "/registroErasmus.jsp";
                                    break;
                                case "Gerente negocio ocio":
                                    this.url = "/registroGerenteNegocio.jsp";
                                    tipoUsuario = 2;
                                    break;
                                case "Agencia Viajes":
                                    tipoUsuario = 3;
                                    this.url = "/registroAgencia.jsp";
                                    break;
                                case "Anunciantes":
                                    tipoUsuario = 4;
                                    this.url = "/registroAnunciante.jsp";
                                    break;
                            }

                            userDTO = new UsuarioDTO(nombre, apellidos, user, dir, pass, tipoUsuario, false);
                        }
                    } else {
                        Cookie user = new Cookie("usuario", userDTO.getNombre() + ";" + userDTO.getNombreUsuario());
                        user.setMaxAge(60 * 60 * 24 * 30);  //1 MES
                        response.addCookie(user);
                        if (parteRegistro.equals("erasmus")) {

                            String facultad = request.getParameter("facultad");
                            String nacionalidad = request.getParameter("nacionalidad");
                            FacultadDAO faculDAO = new FacultadDAO();
                            int id = Integer.parseInt(facultad);
                            userDAO.setUsuario(userDTO);

                            ErasmusDTO erasDTO = new ErasmusDTO(userDTO.getNombreUsuario(), nacionalidad, id);
                            erasDAO.setErasmus(erasDTO);

                            request.setAttribute("usuario", userDTO);
                            request.setAttribute("erasmus", erasDTO);
                            //session.setAttribute("usuario",userDTO.getNombreUsuario());
                            this.url = "/registroCorrecto.jsp";

                            Correo c = new Correo();
                            c.Enviar(userDTO);

                        } else if (parteRegistro.equals("Agencia")) {
                            String nombreAgencia = request.getParameter("nombreAgencia");
                            String direccion = request.getParameter("direccionAgencia");
                            AgenciaDTO ag = new AgenciaDTO(userDTO.getNombreUsuario(), nombreAgencia, direccion);
                            userDAO.setUsuario(userDTO);
                            agenciaDAO.setAgencia(ag);
                            request.setAttribute("usuario", userDTO);
                            this.url = "/registroCorrecto.jsp";
                            Correo c = new Correo();
                            c.Enviar(userDTO);
                        } else if (parteRegistro.equals("Negocio")) {
                            String nombreNegocio = request.getParameter("nombreNegocio");
                            String direccion = request.getParameter("direccionNegocio");
                            NegocioDTO neg = new NegocioDTO(userDTO.getNombreUsuario(), nombreNegocio, direccion);
                            userDAO.setUsuario(userDTO);
                            negocioDAO.setNegocio(neg);
                            request.setAttribute("usuario", userDTO);
                            this.url = "/registroCorrecto.jsp";
                            Correo c = new Correo();
                            c.Enviar(userDTO);
                        }
                    }

                    break;

                case "ConfirmacionRegistro":
                    String idUsuario = request.getParameter("idUsuario");
                    userDAO.confirmarUsuario(idUsuario);
                    this.url = "/confirmar.jsp?usuario=" + idUsuario;
                    break;

                case "Salir":
                    Cookie[] cookies = request.getCookies();
                    String recor = "recordar";
                    String value = "";
                    if (cookies != null) {
                        for (int i = 0; i < cookies.length; i++) {
                            Cookie cookie = cookies[i];
                            if (cookie.getName().equals("recordar")) {
                                cookie.setValue("");
                                response.addCookie(cookie);
                                break;
                            }
                        }

                    }
                    userDTO = null;
                    session.setAttribute("usuario", null);
                    session.setAttribute("tipousuario", null);
                    session.setAttribute("userDTO",null);
                    this.url = "/index.jsp?itemSelect=inicio";
                    session.invalidate();
                    break;

                case "Comentar":
                    //EN ESTE ATRIBUTO VIENE LA CLAVE CON LA QUE SE TIENE QUE GUARDAR EL COMENTARIO
                    String clave = request.getParameter("claveComent");
                           //AHORA COJEMOS LOS DATOS DEL FORMULARIO

                    String nombre = (String) session.getAttribute("usuario");
                    String email = request.getParameter("email");
                    String texto = request.getParameter("mensaje");

                    Calendar fecha = new GregorianCalendar();
                    int año = fecha.get(Calendar.YEAR);
                    int mes = fecha.get(Calendar.MONTH);
                    int dia = fecha.get(Calendar.DAY_OF_MONTH);
                    int hora = fecha.get(Calendar.HOUR);
                    int minutos = fecha.get(Calendar.MINUTE);
                    String fech = Integer.toString(dia) + "-" + Integer.toString(mes) + "-"
                            + Integer.toString(año) + " a las " + Integer.toString(hora) + ":" + Integer.toString(minutos);

                    ComentarioDTO comen = new ComentarioDTO(texto, nombre, clave, email, fech);
                    ComentarioDAO comDAO = new ComentarioDAO();
                    comDAO.guardarComentario(comen);

                    switch (clave) {
                        case "indus":
                            this.url = "/eii.jsp?itemSelect=Facultades&coment=indus";
                            break;
                        case "arquitectura":
                            this.url = "/arquitec.jsp?itemSelect=Facultades&coment=arquitectura";
                            break;
                        case "informatica":
                            this.url = "/informatica.jsp?itemSelect=Facultades&coment=informatica";
                            break;
                        case "teleco":
                            this.url = "/teleco.jsp?itemSelect=Facultades&coment=teleco";
                            break;
                        case "antigua":
                            this.url = "/antigua.jsp?itemSelect=Conoce&coment=antigua";
                            break;
                        case "sanPablo":
                            this.url = "/sanPablo.jsp?itemSelect=Conoce&coment=sanPablo";
                            break;
                        case "sanbenito":
                            this.url = "/sanbenito.jsp?itemSelect=Conoce&coment=sanbenito";
                            break;
                        case "ayuntamiento":
                            this.url = "/ayuntamiento.jsp?itemSelect=Conoce&coment=ayuntamiento";
                            break;
                        case "catedral":
                            this.url = "/catedral.jsp?itemSelect=Conoce&coment=catedral";
                            break;
                        case "menendez":
                            this.url = "/menendez.jsp?itemSelect=Alojamiento&coment=menendez";
                            break;
                    }
                    // this.url="/eii.jsp?itemSelect=Facultades&coment=indus";
                    break;
                case "Login":
                    String usuario = (String) request.getParameter("usuario");
                    String pass = (String) request.getParameter("password");
                    String recordar = (String) request.getParameter("recordar");
                    userDTO = userDAO.getUsuario(usuario, pass);

                    if (userDTO != null) {
                        if (userDTO.getConfirmado()) {
                            session.setAttribute("usuario", usuario);
                            session.setAttribute("tipousuario", userDTO.getTipoUsuario());
                            session.setAttribute("userDTO",userDTO);
                            this.url = "/index.jsp";
                            Cookie user = new Cookie("usuario", userDTO.getNombre() + ";" + userDTO.getNombreUsuario());
                            user.setMaxAge(60 * 60 * 24 * 30);  //1 MES
                            response.addCookie(user);
                            if (recordar.equals("recordarme")) {
                                Cookie rec = new Cookie("recordar", userDTO.getNombreUsuario());
                                rec.setMaxAge(60 * 60 * 24 * 30);  //1 MES
                                response.addCookie(rec);
                            }
                        } else {
                            request.setAttribute("error", "Usuario no confirmado");
                            this.url = "/errorInicioSesion.jsp";
                        }
                    } else {
                        request.setAttribute("error", "Datos contraseña o nombre de usuario incorrectos");
                        this.url = "/errorInicioSesion.jsp";
                    }
                    break;
                case "verOfertasPisos":
                    ArrayList<OfertaPisoDTO> ofertas = oferDAO.getPisos();
                    ArrayList<FotosDTO> fotos = new ArrayList<FotosDTO>();
                    FotosDTO fot = new FotosDTO();
                    for (OfertaPisoDTO of : ofertas) {
                        ArrayList<FotosDTO> temp = fotosDAO.getFotos(of.getId(), 1);
                        if (temp.size() > 0) {
                            fotos.add(temp.get(0));
                        } else {
                            fotos.add(new FotosDTO("error.jpg", 1, 1));
                        }
                    }
                    request.setAttribute("ofertaPisos", ofertas);
                    request.setAttribute("fotos", fotos);
                    this.url = "/verOfertasPisos.jsp?itemSelect=Alojamiento";
                    break;
                case "VerPiso":

                    int id = Integer.parseInt(request.getParameter("idPiso"));
                    OfertaPisoDTO oferta = oferDAO.getPiso(id);
                    ArrayList<FotosDTO> fotosPiso = fotosDAO.getFotos(id, 1);
                    request.setAttribute("oferta", oferta);
                    request.setAttribute("fotos", fotosPiso);
                    this.url = "/verOfertaPiso.jsp?itemSelect=Alojamiento";
                    break;

                case "puntuar":
                    String valor = request.getParameter("valor");
                    String tip = request.getParameter("punt");
                    PuntuacionDTO punt = new PuntuacionDTO(tip, Integer.parseInt(valor), (String) session.getAttribute("usuario"));
                    puntuacionDAO.guardarPuntuacion(punt);
                    switch (tip) {
                        case "sanPablo":
                            this.url = "/sanPablo.jsp?itemSelect=Conoce&coment=sanPablo";
                            break;
                        case "ayuntamiento":
                            this.url = "/ayuntamiento.jsp?itemSelect=Conoce&coment=ayuntamiento";
                            break;
                        case "catedral":
                            this.url = "/catedral.jsp?itemSelect=Conoce&coment=catedral";
                            break;
                        case "antigua":
                            this.url = "/antigua.jsp?itemSelect=Conoce&coment=antigua";
                            break;
                        case "sanbenito":
                            this.url = "/sanbenito.jsp?itemSelect=Conoce&coment=sanbenito";
                            break;
                    }
                    break;

                case "Buscar Personas":
                    String origen = request.getParameter("tip");
                    ArrayList<ErasmusDTO> erasmus = null;
                    switch (origen) {
                        case "informatica":
                            erasmus = erasDAO.getErasmusPorFacultad(3);
                            this.url = "/informatica.jsp?itemSelect=Facultades&coment=informatica";
                            break;
                        case "arquitectura":
                            erasmus = erasDAO.getErasmusPorFacultad(2);
                            this.url = "/arquitec.jsp?itemSelect=Facultades&coment=arquitectura";
                            break;
                        case "indus":
                            erasmus = erasDAO.getErasmusPorFacultad(1);
                            this.url = "/eii.jsp?itemSelect=Facultades&coment=indus";
                            break;
                        case "teleco":
                            erasmus = erasDAO.getErasmusPorFacultad(4);
                            this.url = "/teleco.jsp?itemSelect=Facultades&coment=teleco";
                            break;
                    }
                    request.setAttribute("usuarios", erasmus);
                    System.out.print("Llego a buscar personas\n");
                    break;
                    
                case "BorrarComentario":
                    tipo=request.getParameter("punt");
                    puntuacionDAO.borrarPuntuacion((String)session.getAttribute("usuario"),tipo);
                    switch (tipo) {
                        case "sanPablo":
                            this.url = "/sanPablo.jsp?itemSelect=Conoce&coment=sanPablo";
                            break;
                        case "ayuntamiento":
                            this.url = "/ayuntamiento.jsp?itemSelect=Conoce&coment=ayuntamiento";
                            break;
                        case "catedral":
                            this.url = "/catedral.jsp?itemSelect=Conoce&coment=catedral";
                            break;
                        case "antigua":
                            this.url = "/antigua.jsp?itemSelect=Conoce&coment=antigua";
                            break;
                        case "sanbenito":
                            this.url = "/sanbenito.jsp?itemSelect=Conoce&coment=sanbenito";
                            break;
                    }
                    break;
            }
        } catch (Exception e) {
            //request.setAttribute("tipo", e);
            //this.url = "/error.jsp";
        } finally {
            RequestDispatcher respuesta = getServletContext().getRequestDispatcher(this.url);
            respuesta.forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

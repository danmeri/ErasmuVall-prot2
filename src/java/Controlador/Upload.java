/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.FotosDAO;
import DAO.FotosDTO;
import DAO.OfertaPisoDAO;
import DAO.OfertaPisoDTO;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import static jdk.nashorn.internal.objects.NativeError.getFileName;

/**
 *
 * @author jaime
 */
@WebServlet(name = "Upload", urlPatterns = {"/upload"})
@MultipartConfig
public class Upload extends HttpServlet {
       private String url;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String path = "/Users/jaime/Dropbox/universidad/3º curso/2º cuatrimestre/Sistemas Web/Sistemas web/ENTREGA FINA/ErasmuVall-prot2/build/web/imagenes/";
        //String path="/Users/daniel/Dropbox/Sistemas web/ENTREGA FINA/ErasmuVall-prot2/build/web/imagenes/pisos";
        Part filePart = request.getPart("file");
            String fileName = (String) getFileName(filePart);
            InputStream fileContent = filePart.getInputStream();
            OutputStream outFile = null;  
            FotosDAO fotosDAO=new FotosDAO();
            FotosDTO fotoDTO;
        switch(request.getParameter("lugar")){
                case ("Enviar"):
                    try {
                outFile = new FileOutputStream(new File(path+"pisos" + File.separator
                        + fileName));
                int read = 0;
                byte[] bytes = new byte[1024];
                while ((read = fileContent.read(bytes)) != -1) {
                    outFile.write(bytes, 0, read);
                }
               
            } catch (FileNotFoundException fne) {
                
            } finally {
                if (outFile != null) {
                    outFile.close();
                }
                if (fileContent != null) {
                    fileContent.close();
                } 
            }
            HttpSession session=request.getSession();
            String calle=(String)request.getParameter("calle");
            int numero=Integer.parseInt((String)request.getParameter("numero"));
            String piso=(String)request.getParameter("piso");
            int metros=Integer.parseInt(request.getParameter("metros"));
            int habitaciones=Integer.parseInt(request.getParameter("habitaciones"));
            String barrio=(String)request.getParameter("barrio");
            String otros=(String)request.getParameter("otrosDatos");
            String nombre=(String)request.getParameter("nombre");
            String apellidos=(String)request.getParameter("apellidos");
            String correo=(String)request.getParameter("correo");
            String telefono=(String)request.getParameter("telefono");  
            OfertaPisoDAO oferDAO=new OfertaPisoDAO();
            OfertaPisoDTO oferDTO=new OfertaPisoDTO(20,calle,numero,piso,metros,habitaciones,barrio,120,otros,"PedroRodriguez",nombre,apellidos,correo,telefono);     
            oferDAO.setPiso(oferDTO,(String)session.getAttribute("usuario"));
            oferDTO=oferDAO.getUltimoPiso(); 
            fotoDTO=new FotosDTO("imagenes/pisos/"+fileName,oferDTO.getId(),1);
            fotosDAO.setFoto(fotoDTO);
            url="/alojamiento.jsp?itemSelect=Alojamiento";
            
                    break;
                case ("Enviar foto lugar"):
                    try {
                outFile = new FileOutputStream(new File(path+"lugar" + File.separator
                        + fileName));
                int read = 0;
                byte[] bytes = new byte[1024];
                while ((read = fileContent.read(bytes)) != -1) {
                    outFile.write(bytes, 0, read);
                }
               
            } catch (FileNotFoundException fne) {
                
            } finally {
                if (outFile != null) {
                    outFile.close();
                }
                if (fileContent != null) {
                    fileContent.close();
                } 
            }
           
            fotoDTO=new FotosDTO("imagenes/lugar/"+fileName,Integer.parseInt(request.getParameter("id")),3);
            fotosDAO.setFoto(fotoDTO);
                    url=request.getParameter("url");
                    break;
            }
            

            
            RequestDispatcher respuesta = getServletContext().getRequestDispatcher(url);
            respuesta.forward(request, response);
        }
    

    private static String getFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
                return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1);
            }
        }
        return null;
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




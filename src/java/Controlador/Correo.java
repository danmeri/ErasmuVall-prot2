/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.UsuarioDTO;
import static java.rmi.server.LogStream.log;
import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author daniel
 */
public class Correo {

    public void Enviar(UsuarioDTO userDTO) {
        try {
            Properties props = new Properties();
            props.put("mail.transport.protocol", "smtps");
            props.put("mail.smtps.host", "smtp.gmail.com");
            props.put("mail.smtps.port", 465);
            props.put("mail.smtps.auth", "true");
            props.put("mail.smtps.quitwait", "false");
            Session MailSession = Session.getDefaultInstance(props);
            MailSession.setDebug(true);

            MimeMessage message = new MimeMessage(MailSession);
            message.setSubject("Confirmacion Registro " + userDTO.getNombre());
            
            message.setContent("<html>"
                    + "<body> <img src=\"http://noticias.iberestudios.com/files/2013/07/erasmus.jpg\" alt=\"Logotipo\" height=\"80\" width=\"350\" > <br><br>"
                    + "<h2>Querido "+userDTO.getNombre()+",</h2><br><br>"
                    + "!Bienvenido a la comunidad de ErasmusVall! <br><br>"
                    + "Por favor, haga clic en este enlace para verificar su direccion de correo electronico para ErasmusVall: <br>" 
                    + "<a href=\"http://localhost:8081/ErasmuVall-prot2/Controlador?accion=ConfirmacionRegistro&idUsuario=" + userDTO.getNombreUsuario() + "\">Aqui</a><br><br>"
                    + "Para proteger a nuestros usuarios, su cuenta puede ser desactivada si su correo electronico no ha sido verificado.<br><br>"
                    + "A modo de referencia, su nombre de usuario es: "+userDTO.getNombreUsuario()+"<br><br>"
                    + "Gracias! <br><br>"
                    + "<i>El equipo de ErasmusVall</i> </body></html>", "text/html");
            
            Address fromAddress = new InternetAddress("erasmusvall@gmail.com");
            Address toAddress = new InternetAddress(userDTO.getEmail());
            message.setFrom(fromAddress);
            message.setRecipient(Message.RecipientType.TO, toAddress);
            Transport transport = MailSession.getTransport();
            transport.connect("erasmusvall@gmail.com", "laquequieras");
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();

        } catch (MessagingException e) {
            log(e.toString());
        }
    }
}

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
        <title>ErasmuVall-Eventos</title>
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
                    <ul id="menuizqindex">
                        <li>Fiestas
                            <ul>
                                <li><a href="verFiestas.jsp">Ver Fiestas</a></li>
                                <li>Crear Evento Fiesta</li>
                            </ul>
                        </li>
                        <li>Viajes
                            <ul>
                                <li><a href="verOfertasPisos.jsp">Ver Viajes</a></li>
                                <li><a href="ofertarPiso.jsp">Ofertar Viajes</a></li>
                            </ul>
                        </li>
                        <li>Conciertos
                            <ul>
                                <li><a href="verOfertasHab.jsp">Ver Conciertos</a></li>
                                <li><a href="ofertarHab.jsp">Crear Evento Concierto</a></li>
                            </ul>
                        </li>
                        <li>Quedadas
                            <ul>
                                <li><a href="verOfertasHab.jsp">Ver Quedadas</a></li>
                                <li><a href="ofertarHab.jsp">Crear Quedadas</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="laterald">
            </div>
            <div class="centro">
                <h2>Fiesta Hallowen Bar La Porroneria</h2>
                YA CELEBRADA (12/02/2015)
                <div class="datosFiesta">
                        <h4>Datos Fiesta:</h4><hr>
                        Lugar: Bar la porroneria<br>
                        Fecha: 12/04/2015<br>
                        Hora: 12:00<br><br>
                        <h4>Mas datos:</h4><hr>
                        Bonocopas 3 x 10 Euros y regalos para todos los invitados<br>
                        Entrada 5 Euros<br><br>
                        
                        <h4>Comparte tus fotos de esta fiesta</h4>
                        <form>
                            <input class="submit" type="submit" value="Subir Foto">
                        </form>
                        
                        <h4>Subidas por otros usuarios</h4><hr>
                        <div class="fotosUsuarios">
                            <img src="http://www.viaboda.com/images/stories/articulos/fiesta_matrimonio_01.jpg" width="220" height="200" alt="fotoUsuario1">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH8y2za_T6MV1mqAolphtUSEOjVJMcg6hV_U4PdAqizPWE-yDD" width="220" height="200" alt="fotoUsuario2">
                            <img src="http://mlm-s1-p.mlstatic.com/orejas-mickey-diadema-con-luz-fiestas-eventos-minnie-mono-3486-MLM4291079595_052013-F.jpg" width="220" height="200" alt="fotoUsuario3">
                        </div><br><br>
                        
                        <h4>Puntua esta fiesta</h4>

                        <div class="ec-stars-wrapper">
                            <a href="#" data-value="1" title="Votar con 1 estrellas">&#9733;</a>
                            <a href="#" data-value="2" title="Votar con 2 estrellas">&#9733;</a>
                            <a href="#" data-value="3" title="Votar con 3 estrellas">&#9733;</a>
                            <a href="#" data-value="4" title="Votar con 4 estrellas">&#9733;</a>
                            <a href="#" data-value="5" title="Votar con 5 estrellas">&#9733;</a>
                        </div>
                </div>
                <h2>Fiesta Abril en LA ANTIGUA CERVECERIA</h2>
                SE CELEBRA EL (29/04/2015)
                <div class="datosFiesta">
                        <h4>Datos Fiesta:</h4><hr>
                        Lugar: Bar Antigua Cerveceria<br>
                        Fecha: 29/04/2015<br>
                        Hora: 1:00<br><br>
                        <h4>Mas datos:</h4><hr>
                        Regalos para todos los invitados<br>
                        Entrada 10 Euros<br><br>
                </div>        
                
                
            </div>
        </div>
        <div class="footer">
            <p>Servicios y Sistemas Web Desarrollado por el Grupo 14</p>
        </div>
    </body>
</html>


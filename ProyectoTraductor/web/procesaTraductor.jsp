<%-- 
    Document   : procesaTraductor
    Created on : 01/09/2018, 12:00:02 PM
    Author     : c14170
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="clases.utp.edu.pe.Traductor"%>
<%@page import="clases.utp.edu.pe.Estudiante"%>





<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Procesa Traduccion</title>
        
        <link href="Resources/css/formatos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
      <% 
       //Aqui generamos la instancia a la clase
       
       Traductor t=new Traductor();
       Estudiante est=new Estudiante();
          
          
       //Aqui recibira las variables
       String pt, iu, rf;
       String codEstP;
       pt=request.getParameter("txtPalabraT");
       iu=request.getParameter("txtIdioma");
       codEstP=request.getParameter("txtCodEstudiante");
       
       
       est.setCodEstudiante(codEstP);
        
       t.setPalabraT(pt);
       t.setIdioma(iu);
       String datoTraducido=t.miTraduccion(pt, iu);
       t.setResultado(datoTraducido);
       t.setEst(est);
       
       
       
       out.write("Palabra: " + t.getPalabraT());
       out.write("<br>");       
       out.write("Idioma: " +t.getIdioma());
       out.write("<br>");       
       out.write("Traduccion: " + t.getResultado());
        out.write("<br>");       
       out.write("Estudiante: " + t.getEst().getCodEstudiante());

       
      
      
      
      %>  
        
        
        
      <%@include file="comunes/piepagina.jsp" %>   
    </body>
</html>

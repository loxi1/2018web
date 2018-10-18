<%-- 
    Document   : index
    Created on : 01/09/2018, 10:28:12 AM
    Author     : c14170
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Traductor 2018 - V:)<3</title>
        <link href="Resources/css/formatos.css" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body>
        <form action="procesaTraductor.jsp" method="post" >
        <table>
            <tr>
                <td colspan="2" >
                    <h4 style="background-color:#81DAF5; width:250px " >Traduccion</h4>
                </td>
            </tr>
            <tr>
                <td colspan="2" >
                    <img src="Resources/imagenes/logo.jpg" alt=""/>
                    
                </td>
            </tr>
             <tr>
                <td>
                    <label class="fondo">Codigo Estudiante:</label>
                </td>
                <td>
                    <input type="text" name="txtCodEstudiante">
                </td>             
            </tr>
            
            
            
            <tr>
                <td>
                    <label class="fondo">Palabra a Traducir:</label>
                </td>
                <td>
                    <input type="text" name="txtPalabraT">
                </td>             
            </tr>
            <tr>
                <td>
                    <label class="fondoDos">Idioma:</label>
                </td>
                <td>
                    <input type="text" name="txtIdioma">
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    <input type="submit" value="Traduce"> 
                    <input type="reset" value="Nuevo"> 
                    
                    
                </td>
            </tr>
        </table>
        
        </form>
        <%@include file="comunes/piepagina.jsp" %>
        
    </body>
</html>

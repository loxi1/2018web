<%-- 
    Document   : index
    Created on : 15-sep-2018, 8:38:25
    Author     : c14170
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seguridad</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        
        
    </head>
    <body>
        <div class="jumbotron text-center">
        <h1 >Bienvenidos a Nuestro Portal de Traducciòn</h1>
        <p>UTP @2018-3</p>
        </div>
        <div class="jumbotron text-center">
            
            <center>
        <table class="table"  style="width: 450px">
            <form action="Login" method="post">
                <tr class="table-primary">
                    <td>
                        <p class="text-right">Usuario:</p>
                    </td>
                    <td>
                        <input name="txtUsuario" type="text" class="form-control"/>
                    </td>
                </tr>
                <tr class="table-primary">
                    <td>
                        <p class="text-right">Clave:</p>
                    </td>
                    <td>
                        <input name="txtClave" type="password" class="form-control"/>
                    </td>
                </tr>
                <tr class="table-primary">
                    <td colspan="2">
                        <center>
                            <input type="submit" value="Acceder" class="btn btn-primary">
                            <input type="reset" value="Cancelar" class="btn btn-warning">
                        </center>
                    </td>
                </tr>

            </form>
        </table>
                </center>
        </div>
        
    </body>
</html>

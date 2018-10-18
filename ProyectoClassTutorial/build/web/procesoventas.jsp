<%@page contentType="text/html" pageEncoding="UTF-8"%>         
<%@include file="comunes/cabecera.jsp" %>
<%@page import="clases.ventas.celulares.Cliente"%>
<%@page import="clases.ventas.celulares.Persona" %>
<%@page import="clases.ventas.celulares.Vendedor" %>
<%@page import="clases.ventas.celulares.VentasDeTelefonos" %>

      <!-- Jumbotron -->
      <div class="jumbotron">
        <h1>Reporte Ventas</h1>
        <!--p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet.</p>
        <p><a class="btn btn-lg btn-success" href="#" role="button">Get started today</a></p-->
        <%
           //Aqui estan la variables
          VentasDeTelefonos venta=new VentasDeTelefonos();
          Persona pers=new Persona();
          Vendedor vend=new Vendedor();
          Cliente clie=new Cliente();
          
          //Aqui recibira las variables
          String codvend, marca, modelo, dniclie;
          double costo, rta;
          int cant;
          codvend = request.getParameter("txtCodVendedor");
          marca = request.getParameter("txtMarcaTelefono");
          modelo = request.getParameter("txtModeloTelefono");
          dniclie = request.getParameter("txtDniCliente");
          costo = Double.parseDouble(request.getParameter("txtCosto"));
          cant = Integer.parseInt(request.getParameter("txtCantidad"));
          
          vend.setCodigoVendedor(codvend);
          clie.setDni(dniclie);
          
          rta = venta.costoTotal(cant, costo);
          venta.setCantidad(cant);
          venta.setCosto(costo);
          venta.setModelo(modelo);
          venta.setMarca(marca);
          venta.setCli(clie);
          venta.setVen(vend);
          venta.setResultado(rta);
          
          /*out.write("Codigo Vendedor " + venta.getVen().getCodigoVendedor());
          out.write("<br>");
          out.write("<br>");
          out.write("Marca " + venta.getMarca());
          out.write("<br>");
          out.write(" Modelo" + venta.getModelo());
          out.write("<br>");
          out.write(" " + venta.getCosto());
          out.write("<br>");
          out.write("Unidad " + venta.getCantidad());
          out.write("<br>");
          out.write("Monto Total " + venta.getResultado());
          out.write("<br>");
          out.write("Dni Cliente " + venta.getCli().getDni());
          out.write("<br>");*/
        %>
        <div class="row">
            <div class="col-xs-12">
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-right">Codigo Vendedor</font></font></div>
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-left"><%out.write(venta.getVen().getCodigoVendedor());%></font></font></div>
            </div>
            <div class="col-xs-12">
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-right">Marca</font></font></div>
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-left"><%out.write(venta.getMarca());%></font></font></div>
            </div>
            <div class="col-xs-12">
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-right">Modelo</font></font></div>
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-left"><%out.write(" " + venta.getModelo());%></font></font></div>
            </div>
            <div class="col-xs-12">
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-right">Costo</font></font></div>
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-left"><%out.write(" " + venta.getCosto());%></font></font></div>
            </div>
            <div class="col-xs-12">
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-right">Cantidad</font></font></div>
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-left"><%out.write(" " + venta.getCantidad());%></font></font></div>
            </div>
            <div class="col-xs-12">
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-right">Monto Total</font></font></div>
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-left"><%out.write(""+venta.getResultado());%></font></font></div>
            </div>
            <div class="col-xs-12">
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-right">Dni</font></font></div>
                <div class="col-xs-6"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" class="pull-left"><%out.write(""+venta.getCli().getDni());%></font></font></div>
            </div>
        </div>
      </div>


     
      <%@include file="comunes/piepagina.jsp" %>
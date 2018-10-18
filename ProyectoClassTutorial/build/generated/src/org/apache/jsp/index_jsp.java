package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import java.util.ArrayList;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/comunes/cabecera.jsp");
    _jspx_dependants.add("/comunes/piepagina.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("         \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("  <head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>Creative - Start Bootstrap Theme</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"recursos/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom fonts for this template -->\n");
      out.write("    <link href=\"recursos/vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    <!-- Plugin CSS -->\n");
      out.write("    <link href=\"recursos/vendor/magnific-popup/magnific-popup.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    \n");
      out.write("    <link href=\"recursos/css/creative.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"recursos/css/inicio.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/solid.css\" integrity=\"sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW\" crossorigin=\"anonymous\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/regular.css\" integrity=\"sha384-ZlNfXjxAqKFWCwMwQFGhmMh3i89dWDnaFU2/VZg9CvsMGA7hXHQsPIqS+JIAmgEq\" crossorigin=\"anonymous\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/brands.css\" integrity=\"sha384-rf1bqOAj3+pw6NqYrtaE1/4Se2NBwkIfeYbsFdtiR6TQz0acWiwJbv1IM/Nt/ite\" crossorigin=\"anonymous\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/fontawesome.css\" integrity=\"sha384-1rquJLNOM3ijoueaaeS5m+McXPJCGdr5HcA03/VHXxcp2kX2sUrQDmFc3jR5i/C7\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body id=\"page-top\">\n");
 
    String completeUrl = request.getRequestURI().toString(); 
    String[]  exploded=completeUrl.split("/");
    System.out.println("OTROS-->");
    System.out.println(completeUrl);
    
    String va = exploded[2];
    //out.write(va);
    String e = va.replace(".jsp","");
    //out.write(e);
    //System.out.println(explode[0]);
    //Aqui progama
    String actini, actrep;
    actini = "";
    actrep = "";
    /*String menus[] = new String[7];
    menus[0] = "Inicio";
    menus[1] = "Monday";
    menus[2] =	"Tuesday";
    menus[3] =	"Wednesday";
    menus[4] = "Thursday";
    menus[5] =	"Friday";
    menus[6] =	"Saturday";*/
    List<String> l1 = new ArrayList();
    l1.add("1");
    l1.add("2");
    List<String> l2 = new ArrayList();
    l2.add("3");
    l2.add("4");
    l2.add("4");
    
    List<String>[] arrayOfList = new List[2];
    arrayOfList[0] = l1;
    arrayOfList[1] = l2;
    
    for (int i = 0; i < arrayOfList.length; i++)
    {
        List<String>[] l = new List[i];
        out.println(l);
    }
    switch(e)
    {
        case "index":
            actini = "active";
            break;
        case "procesoventas":
            actrep = "active";
            break;
        default:;
    }

      out.write("\n");
      out.write("\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-light fixed-top\" id=\"mainNav\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <a class=\"navbar-brand js-scroll-trigger\" href=\"#page-top\">Virtual Boom</a>\n");
      out.write("        <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("          <ul class=\"navbar-nav ml-auto\">\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#about\">Inicio</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#services\">Cursos</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#portfolio\">Blog</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#contact\">Contactanos</a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <!-- The justified navigation menu is meant for single line per list item.\n");
      out.write("           Multiple lines will require custom code not provided by Bootstrap. -->\n");
      out.write("      <div class=\"masthead\">\n");
      out.write("        <!--h3 class=\"text-muted\"><img src=\"recursos/imagenes/2000px-Amazon_Web_Services_Logo.svg.png\" width=\"70\" /></h3-->\n");
      out.write("        <nav>\n");
      out.write("          <ul class=\"nav nav-justified\">\n");
      out.write("              <li class=\"");
 out.write(actini); 
      out.write("\"><a href=\"../ProyectoVentasCelulares/index.jsp\">Listado</a></li>\n");
      out.write("            <li class=\"");
 out.write(actrep); 
      out.write("\"><a href=\"#\">Reporte</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </nav>\n");
      out.write("      </div>");
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript -->\n");
      out.write("    <script src=\"recursos/vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"recursos/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Plugin JavaScript -->\n");
      out.write("    <script src=\"recursos/vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("    <script src=\"recursos/vendor/scrollreveal/scrollreveal.min.js\"></script>\n");
      out.write("    <script src=\"recursos/vendor/magnific-popup/jquery.magnific-popup.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Custom scripts for this template -->\n");
      out.write("    <script src=\"js/creative.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("      var cursos = new Array();\n");
      out.write("      cursos[1] = \"android\";\n");
      out.write("      cursos[2] = \"amazon\";\n");
      out.write("      cursos[3] = \"angular\";\n");
      out.write("      cursos[4] = \"apple\";\n");
      out.write("      cursos[5] = \"aws\";\n");
      out.write("      cursos[6] = \"js\";\n");
      out.write("      cursos[7] = \"node-js\";\n");
      out.write("      cursos[8] = \"vuejs\";\n");
      out.write("      cursos[9] = \"wordpress\";\n");
      out.write("      cursos[10] = \"react\";\n");
      out.write("      cursos[11] = \"docker\";\n");
      out.write("      cursos[12] = \"drupal\";\n");
      out.write("      cursos[13] = \"ember\";\n");
      out.write("      cursos[14] = \"grunt\";\n");
      out.write("      cursos[15] = \"gulp\";\n");
      out.write("      cursos[16] = \"laravel\";\n");
      out.write("      cursos[17] = \"linux\";\n");
      out.write("      var zw = 1;\n");
      out.write("      for (var i = 1; i <= 17; i++) {\n");
      out.write("          (function(index) {\n");
      out.write("              setTimeout(function() { $('.cambiarlenguajes').html('<i style=\"font-size: 30px;\" class=\"fab fa-'+cursos[index]+'\"></i> '+cursos[index]); console.log(index); }, zw * 5000);\n");
      out.write("          })(zw);\n");
      out.write("          zw++;\n");
      out.write("      }\n");
      out.write("      /*for(var i in cursos) {\n");
      out.write("        setTimeout(\n");
      out.write("         function(index){\n");
      out.write("            console.log(cursos[i]);\n");
      out.write("            $('.cambiarlenguajes').html('<i style=\"font-size: 30px;\" class=\"fab fa-'+i+'\"></i> '+cursos[i]);\n");
      out.write("        }, zw * 1000);\n");
      out.write("        zw++;\n");
      out.write("      }*/\n");
      out.write("    </script>\n");
      out.write("  </body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

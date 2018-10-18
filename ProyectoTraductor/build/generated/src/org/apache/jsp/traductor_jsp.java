package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class traductor_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Traductor 2018 - V:)<3</title>\n");
      out.write("        <link href=\"Resources/css/formatos.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"procesaTraductor.jsp\" method=\"post\" >\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\" >\n");
      out.write("                    <h4 style=\"background-color:#81DAF5; width:250px \" >Traduccion</h4>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\" >\n");
      out.write("                    <img src=\"Resources/imagenes/logo.jpg\" alt=\"\"/>\n");
      out.write("                    \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td>\n");
      out.write("                    <label class=\"fondo\">Codigo Estudiante:</label>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"text\" name=\"txtCodEstudiante\">\n");
      out.write("                </td>             \n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <label class=\"fondo\">Palabra a Traducir:</label>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"text\" name=\"txtPalabraT\">\n");
      out.write("                </td>             \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <label class=\"fondoDos\">Idioma:</label>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"text\" name=\"txtIdioma\">\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <input type=\"submit\" value=\"Traduce\"> \n");
      out.write("                    <input type=\"reset\" value=\"Nuevo\"> \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("        </form>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>WebMaster</title>\n");
      out.write("        <link href=\"../Resources/css/formatos.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <h6>Todo los Derechos Reservados</h6>\n");
      out.write("        <p class=\"ppFondo\">\n");
      out.write("            UTP-2018-3 - Desarrollo Web Integrado\n");
      out.write("            \n");
      out.write("        </p>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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

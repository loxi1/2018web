/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.utp.edu.pe;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//Importamos a DAO y Entidades(Clases)

import DAO.utp.edu.pe.CredencialesDAO;
import clases.utp.edu.pe.*;




/**
 *
 * @author c14170
 */
public class Login extends HttpServlet {

    static CredencialesDAO cDao=new CredencialesDAO();
    
    
    
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
        response.setContentType("text/html;charset=UTF-8");
        
        String usuarioP, claveP, respuesta="";
        usuarioP=request.getParameter("txtUsuario");
        claveP=request.getParameter("txtClave");
        Credenciales c=new Credenciales();
        
        String resultDB=cDao.validarCredencial(usuarioP, claveP, c);
        
        try (PrintWriter out = response.getWriter()) {
            
            //if("wcarpior".equals(usuarioP) && "abc123".equals(claveP))
            if(resultDB.equals("Bienvenido"))
            {
                 respuesta="Ingreso Autorizado";
                
            }else{
                response.sendRedirect("errorInicio.jsp");
                respuesta=resultDB;
                
            }
            
             out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Usuario: " + c.getUsuarioA()  + " Codigo:  " +c.getTempCodigo()+ "  Informe: "+respuesta+ "</h1>");
            out.println("</body>");
            out.println("</html>");
            
            
           
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

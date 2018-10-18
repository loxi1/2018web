
package DAO.utp.edu.pe;
import clases.utp.edu.pe.*;
import conexion.utp.edu.pe.Conexion;


//Librerias a utilizar

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;


public class CredencialesDAO {
    
   static Credenciales c=new Credenciales();
    private static Connection miconexion= new Conexion().getConnection();
    
    
    public String regCredenciales(Credenciales c){
       return ""; 
    }
    public String actualizarCredenciales(Credenciales c){
         return "";
    }
    public String eliminarCredenciales(int codigo){
        return "Credencial Eliminada";
    }
    
    public String validarCredencial(String usuarioP, String claveP,Credenciales c)
    {
             String resultado = null;  
             int estado=1;
     
     try {	
            CallableStatement smt = miconexion.prepareCall("{CALL sp_CCredenciales(?,?,?,?)}");
            smt.setString(1, usuarioP);
            smt.setString(2, claveP);
            smt.setInt(3,estado);
            smt.registerOutParameter(4, Types.VARCHAR);            
            try {
                smt.execute();                
                resultado = smt.getString("msg");
                
                ResultSet rs = smt.executeQuery();
                if (rs != null) 
                {
                    while (rs.next()) {
                        c.setUsuarioA(rs.getString("usuarioD"));
                        c.setClaveA(rs.getString("clave"));
                        c.setEstadoA(rs.getInt("estado"));
                        c.setTempCodigo(rs.getInt("codPersona"));
                        
                    }
                    rs.close();
                 }
	smt.close();

            } catch (Exception e) {
                e.printStackTrace();
	}

        } catch (Exception e) {
            e.printStackTrace();
               }
        
        return resultado;

        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}


package conexion.utp.edu.pe;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
  
    public static Connection conexion=null;
    
    public static  Connection getConnection(){
        
        if (conexion == null) {
          
            try 
            { 
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                String url = "jdbc:sqlserver://localhost;databaseName=Traductor2018;user=sa;password=1234;";
                conexion=DriverManager.getConnection(url);
            }
            catch (ClassNotFoundException ex)
            {
               // JOptionPane.showMessageDialog(null, ex, "Error en la conexion" + ex.getMessage(), JOptionPane.ERROR_MESSAGE );
                conexion=null;
            }
          finally
          {
              return conexion;
          }
        }
        return conexion;
        }
    }

        
        


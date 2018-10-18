
package clases.utp.edu.pe;

public class Traductor {
    
    
    String palabraT;
    String idioma;
    String resultado;
    Estudiante est=null;
    
    
    
    
    

    public String getPalabraT() {
        return palabraT;
    }

    public void setPalabraT(String palabraT) {
        this.palabraT = palabraT;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getResultado() {
        return resultado;
    }

    public void setResultado(String resultado) {
        this.resultado = resultado;
    }
    
 

    public Estudiante getEst() {
        return est;
    }

    public void setEst(Estudiante est) {
        this.est = est;
    }
    
    
    public String miTraduccion(String palabra, String idiomaF) {
        //palabraT=palabra;
        //idioma=idiomaF;
        String result="";
        
        if(idiomaF.equals("Ingles")){
            
            switch(palabra){
                case "Uno":
                           result="One";
                           break;
                case "Dos":
                           result="Two";
                           break;
                default:
                     result="No tenemos informacion";
            }
            
        }
        
        return result;
        }
    
    
    
    }
            
            
    

    
    
    
    


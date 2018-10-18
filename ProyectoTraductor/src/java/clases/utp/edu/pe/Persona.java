
package clases.utp.edu.pe;

import java.util.Date;

public class Persona {

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApePaterno() {
        return apePaterno;
    }

    public void setApePaterno(String apePaterno) {
        this.apePaterno = apePaterno;
    }

    public String getApeMaterno() {
        return apeMaterno;
    }

    public void setApeMaterno(String apeMaterno) {
        this.apeMaterno = apeMaterno;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public Date getFecNac() {
        return fecNac;
    }

    public void setFecNac(Date fecNac) {
        this.fecNac = fecNac;
    }
    
    String dni;
    String nombre;
    String apePaterno;
    String apeMaterno;
    char sexo;
    Date fecNac;

    public Credenciales getC() {
        return c;
    }

    public void setC(Credenciales c) {
        this.c = c;
    }
    Credenciales c=null;
    
    
    
    
    
    
}

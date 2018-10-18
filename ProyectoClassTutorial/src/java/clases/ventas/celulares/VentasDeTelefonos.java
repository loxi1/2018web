/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases.ventas.celulares;

/**
 *
 * @author LAB-USR-AQ265-A0804
 */
public class VentasDeTelefonos {
    String marca;
    String modelo;
    Double costo;
    Integer cantidad;
    Double resultado;

    public Double getResultado() {
        return resultado;
    }

    public void setResultado(Double resultado) {
        this.resultado = resultado;
    }

    public Cliente getCli() {
        return cli;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
    }

    public Vendedor getVen() {
        return ven;
    }

    public void setVen(Vendedor ven) {
        this.ven = ven;
    }
    
    Cliente cli = null;
    Vendedor ven = null;

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public Double getCosto() {
        return costo;
    }

    public void setCosto(Double costo) {
        this.costo = costo;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    } 
    
    public Double costoTotal(Integer cantidad, Double costo) {
        double resultado = 0;
        resultado = cantidad*costo;
        return resultado;
    }
}

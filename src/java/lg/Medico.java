/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lg;

/**
 *
 * @author perez
 */
public class Medico extends Hospital{

    @Override
    public String Datos(String codigo, String apellidos, String nombres, String sexo, String direccion, String mot, String medico, String fecha) {
        super.Datos(codigo, apellidos, nombres, sexo, direccion, mot, medico, fecha); //To change body of generated methods, choose Tools | Templates.
        return "El medico " + medico +" atendio al paciente " + apellidos + " " + nombres + " el dia " + fecha + "\n" ;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lg;

import javax.swing.JOptionPane;

/**
 *
 * @author perez
 */
public class Paciente extends Hospital{    

    @Override
    public String Datos(String codigo, String apellidos, String nombres, String sexo, String direccion, String mot, String medico, String fecha) {
        super.Datos(codigo, apellidos, nombres, sexo, direccion, mot, medico, fecha); //To change body of generated methods, choose Tools | Templates.
        return "El paciente " + apellidos + " " + nombres + " de codigo " + codigo + ", direccion " + direccion + " y sexo " + sexo + " tubo una cita medica el dia " + fecha + " por " + mot + " con el medico " + medico + "\n";        
    }      
}
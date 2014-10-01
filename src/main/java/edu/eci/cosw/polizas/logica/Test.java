/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.eci.cosw.polizas.logica;

import edu.eci.cosw.polizas.entidades.Cliente;
import edu.eci.cosw.polizas.entidades.TipoPoliza;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author hcadavid
 */
public class Test {
    
    public static void main(String ap[]){
        ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
        OperationsFacade f=ac.getBean(OperationsFacade.class);
        Cliente c=f.getClient(1, "cc");
        System.out.println(c.getNombre());
        System.out.println(c.getPolizasAprobadases().iterator().next());
        
    }
    
    
    
    
}

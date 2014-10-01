/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.eci.cosw.polizas.restapi;

import edu.eci.cosw.polizas.logica.OperationsFacade;
import edu.eci.cosw.polizas.entidades.Cliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author hcadavid
 */
@RestController
public class ResourceController {
    
        OperationsFacade services;

    @Autowired
    public void setServices(OperationsFacade services) {
        this.services = services;
    }
    
    @RequestMapping("/clients/{id}")
    public Cliente getClient(@PathVariable int id) {        
        return services.getClient(id, "cc");
    }
    
    
    
}
    
    

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.eci.cosw.polizas.logica;

import edu.eci.cosw.polizas.persistencia.PersistenceComponent;
import edu.eci.cosw.polizas.entidades.Cliente;
import edu.eci.cosw.polizas.entidades.ClientesId;
import edu.eci.cosw.polizas.entidades.TipoPoliza;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author hcadavid
 */
public class OperationsFacade {
    
    PersistenceComponent pers;

    public PersistenceComponent getPers() {
        return pers;
    }

    public void setPers(PersistenceComponent pers) {
        this.pers = pers;
    }
    
    @Transactional
    public void doAAAA(){
        pers.save(new TipoPoliza(201536,"p1","La poli2", 2312321));                
    }
    
    @Transactional
    public Cliente getClient(int id, String tipoid){
        return (Cliente)pers.load(Cliente.class, new ClientesId(id,tipoid));
    }
    
}

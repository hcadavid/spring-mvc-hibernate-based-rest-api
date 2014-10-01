/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.eci.cosw.polizas.persistencia;

import java.io.Serializable;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author hcadavid
 */
public class PersistenceComponent {
    
    SessionFactory sf;

    public void setSessionFactory(SessionFactory sf) {
        this.sf = sf;
    }
    
    @Transactional
    public void save(Object o){
        sf.getCurrentSession().save(o);
    }
    
    public Object load(Class clazz,Serializable pk){
        Object o= sf.getCurrentSession().load(clazz, pk);
        Hibernate.initialize(o);
        return o;
    }
    
    
}

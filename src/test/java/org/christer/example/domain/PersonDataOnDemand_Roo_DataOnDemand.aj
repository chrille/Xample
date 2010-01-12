package org.christer.example.domain;

import java.security.SecureRandom;
import java.util.List;
import java.util.Random;
import org.christer.example.domain.Person;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PersonDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PersonDataOnDemand: @Component;    
    
    private Random PersonDataOnDemand.rnd = new SecureRandom();    
    
    private List<Person> PersonDataOnDemand.data;    
    
    public Person PersonDataOnDemand.getNewTransientPerson(int index) {    
        org.christer.example.domain.Person obj = new org.christer.example.domain.Person();        
        obj.setAdmin(new Boolean(true));        
        obj.setPassword("password_" + index);        
        obj.setUsername("username_" + index);        
        return obj;        
    }    
    
    public Person PersonDataOnDemand.getRandomPerson() {    
        init();        
        Person obj = data.get(rnd.nextInt(data.size()));        
        return Person.findPerson(obj.getId());        
    }    
    
    public boolean PersonDataOnDemand.modifyPerson(Person obj) {    
        return false;        
    }    
    
    @Transactional(propagation = Propagation.REQUIRES_NEW)    
    public void PersonDataOnDemand.init() {    
        if (data != null) {        
            return;            
        }        
                
        data = org.christer.example.domain.Person.findPersonEntries(0, 10);        
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Person' illegally returned null");        
        if (data.size() > 0) {        
            return;            
        }        
                
        data = new java.util.ArrayList<org.christer.example.domain.Person>();        
        for (int i = 0; i < 10; i++) {        
            org.christer.example.domain.Person obj = getNewTransientPerson(i);            
            obj.persist();            
            data.add(obj);            
        }        
    }    
    
}

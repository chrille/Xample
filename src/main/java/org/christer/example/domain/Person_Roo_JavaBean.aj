package org.christer.example.domain;

import java.lang.Boolean;
import java.lang.String;

privileged aspect Person_Roo_JavaBean {
    
    public String Person.getUsername() {    
        return this.username;        
    }    
    
    public void Person.setUsername(String username) {    
        this.username = username;        
    }    
    
    public String Person.getPassword() {    
        return this.password;        
    }    
    
    public void Person.setPassword(String password) {    
        this.password = password;        
    }    
    
    public Boolean Person.getAdmin() {    
        return this.admin;        
    }    
    
    public void Person.setAdmin(Boolean admin) {    
        this.admin = admin;        
    }    
    
}

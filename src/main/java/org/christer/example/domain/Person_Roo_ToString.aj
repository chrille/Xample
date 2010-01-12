package org.christer.example.domain;

import java.lang.String;

privileged aspect Person_Roo_ToString {
    
    public String Person.toString() {    
        StringBuilder sb = new StringBuilder();        
        sb.append("Id: ").append(getId()).append(", ");        
        sb.append("Version: ").append(getVersion()).append(", ");        
        sb.append("Username: ").append(getUsername()).append(", ");        
        sb.append("Password: ").append(getPassword()).append(", ");        
        sb.append("Admin: ").append(getAdmin());        
        return sb.toString();        
    }    
    
}

package org.christer.example.domain;

import org.springframework.beans.factory.annotation.Configurable;

privileged aspect PersonDataOnDemand_Roo_Configurable {
    
    declare @type: PersonDataOnDemand: @Configurable;    
    
}

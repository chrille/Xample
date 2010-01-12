package org.christer.example.domain;

import org.springframework.roo.addon.test.RooIntegrationTest;
import org.christer.example.domain.Person;
import org.junit.Test;

@RooIntegrationTest(entity = Person.class)
public class PersonIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
}

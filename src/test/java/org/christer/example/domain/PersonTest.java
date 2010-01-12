package org.christer.example.domain;

import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;
import org.springframework.mock.staticmock.MockStaticEntityMethods;
import org.junit.Test;

@RunWith(JUnit4.class)
@MockStaticEntityMethods
public class PersonTest {

    @Test
    public void testMethod() {
        int expectedCount = 13;
        Person.countPeople();
        org.springframework.mock.staticmock.AnnotationDrivenStaticEntityMockingControl.expectReturn(expectedCount);
        org.springframework.mock.staticmock.AnnotationDrivenStaticEntityMockingControl.playback();
        org.junit.Assert.assertEquals(expectedCount, Person.countPeople());
    }
}

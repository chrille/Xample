package org.christer.example.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.christer.example.domain.Person;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@RooWebScaffold(path = "person", automaticallyMaintainView = true, formBackingObject = Person.class)
@RequestMapping("/person/**")
@Controller
public class PersonController {
}

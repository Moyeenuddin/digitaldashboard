package com.example.digitaldashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {


    //@RequestMapping(value = "/index", method = RequestMethod.GET)
    @GetMapping(value = "/index")
    public String index() {
        System.out.println("Is it Working ?");
        return "index";
    }

    @GetMapping(value = "/patientForm")
    public String patientForm() {
        return "patientForm";
    }

}

package com.example.digitaldashboard.controller;

import com.example.digitaldashboard.Service.PatientEntryService;
import com.example.digitaldashboard.model.PatientEntry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    PatientEntryService patientEntryService;

    //@RequestMapping(value = "/index", method = RequestMethod.GET)
    @GetMapping(value = "/index")
    public String index() {
        return "index";
    }
    @GetMapping(value = "/patientGraph")
    public String patientGraph() {
        return "patientGraph";
    }



    @GetMapping(value = "/patientForm")
    public String patientForm() {
        return "patientForm";
    }

    @PostMapping(value = "/savePatient")
    public void savePatientEntry(@ModelAttribute("patientFormValues") PatientEntry patientEntry) {
        patientEntry.setDate(new Date());
        patientEntryService.save(patientEntry);
    }

    @GetMapping(value = "PatientEntryList")
    public List<PatientEntry> patientEntryList() {
        return patientEntryService.patientEntrylist();
    }

    @GetMapping(value = "/patientDashBoard")
    public String patientDashBoard() {
        System.out.println("patientDashBoard is running ");
        return "patientDashBoard";
    }
}

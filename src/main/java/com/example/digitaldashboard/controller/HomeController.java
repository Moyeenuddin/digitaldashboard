package com.example.digitaldashboard.controller;

import com.example.digitaldashboard.Service.PatientEntryService;
import com.example.digitaldashboard.model.PatientEntry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
public class HomeController {

    @Autowired
    PatientEntryService patientEntryService;

    //@RequestMapping(value = "/index", method = RequestMethod.GET)
    @GetMapping(value = "/")
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
        List<PatientEntry> allTypeOfPatient = patientEntryService.patientEntrylist();
   /*for (allTypeOfPatient allTypeOfPatient: allTypeOfPatient) {
            if (allTypeOfPatient.getpatientType() == OPD Patient ) {
                result.add(person);
            }
        }*/

        return allTypeOfPatient ;

    }

    @GetMapping(value = "/patientDashBoard")
    public String patientDashBoard() {

        return "patientGraph";
    }
}

package com.example.digitaldashboard.Service;

import com.example.digitaldashboard.Repository.PatientEntryRepository;
import com.example.digitaldashboard.model.PatientEntry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PatientEntryServiceimp implements PatientEntryService{

    @Autowired
    PatientEntryRepository patientEntryRepository;


    @Override
    public void save(PatientEntry patientEntry) {
        patientEntryRepository.save(patientEntry);
    }
}

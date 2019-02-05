package com.example.digitaldashboard.Service;

import com.example.digitaldashboard.model.PatientEntry;

import java.util.List;

public interface PatientEntryService {

    public void save(PatientEntry patientEntry);

    public List<PatientEntry> patientEntrylist();

}

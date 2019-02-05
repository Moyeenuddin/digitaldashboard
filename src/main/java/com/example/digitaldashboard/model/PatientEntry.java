package com.example.digitaldashboard.model;

import javax.persistence.*;
import java.util.Date;

@Entity
public class PatientEntry {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer patientId;

    @Column(name = "patient_type")
    private String patientType;

    @Column(name = "patient_quentity")
    private Integer patientQuentity;

    @Column(name = "date")
    private Date date;


    public Integer getPatientId() {
        return patientId;
    }

    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    public String getPatientType() {
        return patientType;
    }

    public void setPatientType(String patientType) {
        this.patientType = patientType;
    }

    public Integer getPatientQuentity() {
        return patientQuentity;
    }

    public void setPatientQuentity(Integer patientQuentity) {
        this.patientQuentity = patientQuentity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

}

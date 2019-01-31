package com.example.digitaldashboard.Repository;

import com.example.digitaldashboard.model.PatientEntry;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientEntryRepository extends JpaRepository<PatientEntry, Integer> {
}

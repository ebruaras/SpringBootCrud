package com.example.deneme.repository;

import com.example.deneme.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student,Integer> {
    Student findById(int id);
}

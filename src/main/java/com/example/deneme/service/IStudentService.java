package com.example.deneme.service;

import com.example.deneme.entity.Student;

import java.util.List;

public interface IStudentService {
    Student create(Student student);
    List<Student> listAll();
    Student listById(int id);
    void delete(int id);
    Student update(Student student);
}

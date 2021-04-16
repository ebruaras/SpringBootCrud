package com.example.deneme.service;

import com.example.deneme.entity.Student;
import com.example.deneme.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentService implements IStudentService{
    @Autowired
    StudentRepository studentRepository;
    @Override
    public Student create(Student student){
        return studentRepository.save(student);
    }
    @Override
    public List<Student> listAll(){
        return studentRepository.findAll();
    }
    @Override
    public Student listById(int id){
        return studentRepository.findById(id);
    }
    @Override
    public void delete(int id){
        studentRepository.deleteById(id);
    }
    @Override
    public Student update(Student student){
        Student _student=studentRepository.findById(student.getId());
        _student.setName(student.getName());
        _student.setStudentNumber(student.getStudentNumber());
        _student.setSurname(student.getSurname());
        _student.setDepartment(student.getDepartment());
        _student.setMail(student.getMail());
        return studentRepository.save(_student);
    }
}

package com.example.deneme.controller;

import com.example.deneme.entity.Student;
import com.example.deneme.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/student")
public class StudentController {
    @Autowired
   StudentService studentService;
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public ModelAndView list(){
        ModelAndView model=new ModelAndView("student_list");
        List<Student>  studentList=studentService.listAll();
        model.addObject("studentList",studentList);
        return model;
    }
    @RequestMapping(value="/addStudent/", method=RequestMethod.GET)
    public ModelAndView addStudent() {
        ModelAndView model = new ModelAndView();

        Student student = new Student();
        model.addObject("studentForm", student);
        model.setViewName("student_form");

        return model;
    }
    @RequestMapping(value="/updateStudent/{id}", method=RequestMethod.GET)
    public ModelAndView editStudent(@PathVariable int id) {
        ModelAndView model = new ModelAndView();

        Student student = studentService.listById(id);
        model.addObject("studentForm", student);
        model.setViewName("student_form");

        return model;
    }
    @RequestMapping(value="/saveStudent", method=RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("studentForm") Student student) {
        studentService.create(student);

        return new ModelAndView("redirect:/student/list");
    }

    @RequestMapping(value="/deleteStudent/{id}", method=RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        studentService.delete(id);

        return new ModelAndView("redirect:/student/list");
    }
}

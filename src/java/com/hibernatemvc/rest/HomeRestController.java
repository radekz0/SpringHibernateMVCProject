package com.hibernatemvc.rest;

import com.hibernatemvc.entity.Student;
import com.hibernatemvc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class HomeRestController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/students")
    public List<Student> getStudents(){
        return studentService.getStudents();
    }

    //{studentId} and @PatchVariable has to be the same
    @GetMapping("/students/{studentId}")
    public Student getStudent(@PathVariable int studentId){
        Student student = studentService.getStudent(studentId);

        if(student == null){
            throw new StudentNotFoundException("Customer id not found: " + studentId);
        }
        return student;
    }
}

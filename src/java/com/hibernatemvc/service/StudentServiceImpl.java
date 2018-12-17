package com.hibernatemvc.service;

import com.hibernatemvc.dao.StudentDAO;
import com.hibernatemvc.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//Creating Service for future extension to integrating multiple data sources (Using multiple databases).
//It sits between the DAO and the Controller.

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDAO studentDAO;

    //Transactional handles beginTransaction() and commit, which makes the code more compact. It was moved from the DAO's method.
    @Transactional
    public List<Student> getStudents() {
        List<Student> students = studentDAO.getStudents();
        return students;
    }

    public void deleteStudent(int id) {
        studentDAO.deleteStudent(id);
    }

    public void addStudent(Student student) {
        studentDAO.addStudent(student);
    }

    public Student getStudent(int id) {
        Student student = studentDAO.getStudent(id);
        return student;
    }

    public List<Student> searchStudents(String searchName) {
        List<Student> studentList = studentDAO.searchStudents(searchName);
        return studentList;
    }
}

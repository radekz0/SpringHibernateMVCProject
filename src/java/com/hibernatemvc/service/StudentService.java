package com.hibernatemvc.service;

import com.hibernatemvc.entity.Student;

import java.util.List;

public interface StudentService {
    public List<Student> getStudents();
    public void deleteStudent(int id);
    public void addStudent(Student student);

    public Student getStudent(int id);

    public List<Student> searchStudents(String searchName);

    public Student studentValidation(Student checkStudent);
}

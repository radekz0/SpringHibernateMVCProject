package com.hibernatemvc.service;

import com.hibernatemvc.entity.Student;

import java.util.List;

public interface StudentService {
    public List<Student> getStudents();
    public void deleteStudent();
    public void addStudent(Student student);
}

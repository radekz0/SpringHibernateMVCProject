package com.hibernatemvc.dao;

import com.hibernatemvc.entity.Student;

import java.util.List;

public interface StudentDAO {
    public List<Student> getStudents();
    public void deleteStudent(int id);
    public void addStudent(Student student);

    public Student getStudent(int id);

    public List<Student> searchStudents(String searchName);
}

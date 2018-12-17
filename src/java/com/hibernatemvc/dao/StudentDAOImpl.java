package com.hibernatemvc.dao;

import com.hibernatemvc.entity.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//We are creating DAO for connection with db.

//Special annotation for DAO implementations. It provides translation for any JDBC related exceptions.
@Repository
public class StudentDAOImpl implements StudentDAO{

    //Injecting sessionFactory bean into the DAO.
    @Autowired
    private SessionFactory sessionFactory;

    //Transactional handles beginTransaction() and commit, which makes the code more compact. It was moved from the DAO's method.
    @Transactional
    public List<Student> getStudents() {
        Session session = sessionFactory.getCurrentSession();
        List<Student> students = session.createQuery("from Student ORDER BY lastName", Student.class).getResultList();
        return students;
    }

    public void deleteStudent() {
        //asd
    }

    @Transactional
    public void addStudent(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.save(student);
    }
}

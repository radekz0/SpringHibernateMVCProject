package com.hibernatemvc.dao;

import com.hibernatemvc.entity.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Query;
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

    @Transactional
    public void deleteStudent(int id) {
        Session session = sessionFactory.getCurrentSession();
        Student student = session.get(Student.class, id);
        session.delete(student);
    }

    @Transactional
    public void addStudent(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(student);
    }

    @Transactional
    public Student getStudent(int id) {
        Session session = sessionFactory.getCurrentSession();
        Student student = session.get(Student.class, id);
        return student;
    }

    @Transactional
    public List<Student> searchStudents(String searchName) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = null;

        // only search by name if theSearchName is not empty
        if (searchName != null && searchName.trim().length() > 0) {

            // search for firstName or lastName ... case insensitive
            theQuery =currentSession.createQuery("from Student where lower(firstName) like :theName or lower(lastName) like :theName", Student.class);
            theQuery.setParameter("theName", "%" + searchName.toLowerCase() + "%");

        }
        else {
            // If searchName is empty return all Students
            theQuery =currentSession.createQuery("from Student", Student.class);
        }

        List<Student> studentList = theQuery.getResultList();

        return studentList;

    }

    @Transactional
    public Student studentValidation(Student checkStudent) {
        Session session = sessionFactory.getCurrentSession();
        String checkStudentFirstName = checkStudent.getFirstName();
        String checkStudentLastName = checkStudent.getLastName();
        Query query = session.createQuery("from Student where lower(firstName) like :theFirstName and lower(lastName) like :theLastName", Student.class);
        query.setParameter("theFirstName", checkStudentFirstName.toLowerCase());
        query.setParameter("theLastName", checkStudentLastName.toLowerCase());
        List<Student> studentList = query.getResultList();

        try{
            Student student = studentList.get(0);
            return student;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
}

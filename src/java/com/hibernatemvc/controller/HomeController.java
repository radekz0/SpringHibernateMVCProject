package com.hibernatemvc.controller;

import com.hibernatemvc.dao.StudentDAO;
import com.hibernatemvc.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private StudentDAO studentDAO;

    @RequestMapping("/home")
    public String homePage(Model model){
        List<Student> studentList = studentDAO.getStudents();
        model.addAttribute("students",studentList);
        return "home";
    }
}

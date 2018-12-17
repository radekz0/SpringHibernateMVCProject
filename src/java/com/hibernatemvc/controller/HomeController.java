package com.hibernatemvc.controller;

        import com.hibernatemvc.dao.StudentDAO;
        import com.hibernatemvc.entity.Student;
        import com.hibernatemvc.service.StudentService;
        import org.apache.log4j.BasicConfigurator;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Controller;
        import org.springframework.ui.Model;
        import org.springframework.web.bind.annotation.*;

        import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/home")
    public String homePage(Model model){
        BasicConfigurator.configure();
        List<Student> studentList = studentService.getStudents();
        model.addAttribute("students",studentList);
        return "home";
    }

    @GetMapping("/formForAdd")
    public String formForAdd(Model model){
        Student theStudent = new Student();
        model.addAttribute("student", theStudent);
        return "formForAdd";
    }

    @PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute("student") Student student){
        studentService.addStudent(student);
        return "redirect:/home";
    }
}

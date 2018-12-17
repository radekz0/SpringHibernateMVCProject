package com.hibernatemvc.controller;

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

    @GetMapping("/studentForm")
    public String formForAdd(Model model){
        Student theStudent = new Student();
        model.addAttribute("student", theStudent);
        return "studentForm";
    }

    @PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute("student") Student student){
        studentService.addStudent(student);
        return "redirect:/home";
    }

    @GetMapping("/formForUpdate")
    public String formForUpdate(@RequestParam("studentId") int id, Model model){
        Student student = studentService.getStudent(id);
        model.addAttribute("student", student);
        return "studentForm";
    }

    @GetMapping("/formForDelete")
    public String formForDelete(@RequestParam("studentId") int studentId){
        studentService.deleteStudent(studentId);
        return "redirect:/home";
    }
}

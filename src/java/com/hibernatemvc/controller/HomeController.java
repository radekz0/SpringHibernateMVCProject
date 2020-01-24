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

    @GetMapping("/list")
    public String homePage(Model model){
        BasicConfigurator.configure();
        List<Student> studentList = studentService.getStudents();
        int studentCount = studentList.size();
        model.addAttribute("studentCount", studentCount);
        model.addAttribute("students",studentList);
        return "list";
    }

    @GetMapping({"/home","/"})
    public String indexPage(Model model){
        List<Student> studentList = studentService.getStudents();
        int studentCount = studentList.size();
        model.addAttribute("studentCount", studentCount);
        return "index";
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
        return "redirect:/";
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

    @PostMapping("/search")
    public String searchStudents(@RequestParam("searchName") String searchName, Model model){
        List<Student> studentList = studentService.searchStudents(searchName);

        model.addAttribute("students", studentList);
        return "list";
    }

    @GetMapping("/login")
    public String loginForm(Model model){
        Student checkStudent = new Student();
        model.addAttribute("cStudent",checkStudent);
        return "loginForm";
    }

    @PostMapping("/checkStudent")
    public String checkStudent(@ModelAttribute("cStudent") Student checkStudent, Model model){
        Student student = studentService.studentValidation(checkStudent);
        model.addAttribute("validStudent",student);
        if(student != null){
            return "welcome";
        }
        else{
            return "redirect:/home";
        }
    }
}